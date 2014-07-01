{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.Player (
    mkPlayer,
    resetPlayerInput,
    setVelocityFromLook,
    applyGravityVelocity,
    resolveVelocityNoY
) where

import Data.Maybe (isJust, fromJust)
import Control.Applicative ((<$>))
import Control.Monad.State (get, put)
import Data.Vec ((:.)(..), Vec3)

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Types
import Engine.Mesh.AABB (HasAABB(..), AABB(..))
import Engine.Core.Util (sinDeg, cosDeg)
import Engine.Core.World (getWorldDelta)
import Engine.Object.GameObject
    (moveObjectSlide, moveSlideIntersecters)
import Engine.Core.HasPosition
    (HasPosition(..))
import Engine.Terrain.Generator (Terrain(..))
import Engine.Object.Intersect (Intersect(..))

-------- FPS ------------------

mkPlayer :: Player t
mkPlayer = Player   (0 :. 60 :. 0 :. ()) (0 :. 0 :. 0 :. ())
                    (0 :. 0 :. 0 :. ()) 5
                    pUpdate
                    baseInput

-- | Input for first person camera.
baseInput :: Input t
baseInput =  Input
    [(GLFW.Key'A, GLFW.KeyState'Repeating, GLFW.KeyState'Released, aIn),
     (GLFW.Key'D, GLFW.KeyState'Repeating, GLFW.KeyState'Released, dIn),
     (GLFW.Key'W, GLFW.KeyState'Repeating, GLFW.KeyState'Released, wIn),
     (GLFW.Key'S, GLFW.KeyState'Repeating, GLFW.KeyState'Released, sIn),
     (GLFW.Key'LeftShift, GLFW.KeyState'Repeating, GLFW.KeyState'Released, shiftIn),
     (GLFW.Key'Space, GLFW.KeyState'Pressed, GLFW.KeyState'Released, spaceIn),
     (GLFW.Key'Escape, GLFW.KeyState'Pressed, GLFW.KeyState'Released, escIn)]
     (0 :. 0 :. ()) (0 :. 0 :. ())
     0.1

aIn :: World t -> World t
aIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (playerSpeed p :. 0 :. 0 :. ())}
dIn :: World t -> World t
dIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p ((-playerSpeed p) :. 0 :. 0 :. ())}
wIn :: World t -> World t
wIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (0 :. 0 :. (-playerSpeed p) :. ())}
sIn :: World t -> World t
sIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (0 :. 0 :. (playerSpeed p):. ())}

shiftIn :: World t -> World t
shiftIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        p{playerVelocity =
            playerVelocity p + (0 :. (-playerSpeed p) :. 0 :. ())}}

spaceIn :: World t -> World t
spaceIn w =
        let p = worldPlayer w
            curVel@(_ :. vy :. _ :. ()) = playerVelocity p
        in
            if abs vy < 0.01
                then w{worldPlayer =
                    p{playerVelocity =
                        curVel + (0 :. 0.2 :. 0 :. ())}}
            else w

escIn :: World t -> World t
escIn w =
    let state = worldState w
        paused = statePaused state
    in w{
        worldState = state{
            statePaused = not paused
            }
        }

--------------- END FPS ---------------


pUpdate :: Game t ()
pUpdate = do
    w <- get
    if not $ statePaused $ worldState w
        then pUpdateNormal
    else pUpdatePaused

pUpdateNormal :: Game t ()
pUpdateNormal = do
    w <- get
    let p = worldPlayer w
        state = worldState w
        origSpeed = playerSpeed p
        speed = origSpeed * stateDelta state
        newP = p{playerSpeed = speed}
    -- Do actual update
    playerKeyUpdateSafe
    modifiedW <- (\w' -> w'{worldPlayer = playerMouseUpdate newP}) <$> get
    put modifiedW
    playerKeyUpdateSafe
    modifiedP <- worldPlayer <$> get
    resolvedP <- resolveVelocityWithGravity modifiedP

    put modifiedW{worldPlayer =
        resolvedP{playerSpeed = origSpeed}}

pUpdatePaused :: Game t ()
pUpdatePaused = do
    w <- get
    let p = worldPlayer w
        -- Do mouse update.
        playerMouseUpdated = playerMouseUpdate p
    put w{worldPlayer = playerMouseUpdated}
    -- Do key update.
    playerKeyUpdateSafe
    modifiedW <- get
    put modifiedW{worldPlayer = p}

resetPlayerInput :: Player t -> Player t
resetPlayerInput p =
    p{playerInput = (playerInput p){inputMouseDelta = 0 :. 0 :. ()}}

-- | Calculate delta movement from Player and raw input movement.
calculateLookMovement :: Player t -> Vec3 GLfloat -> Vec3 GLfloat
calculateLookMovement p (idx :. idy :. idz :. ()) =
    let _ :. rry :. _ :. () = playerRotation p
        dx = realToFrac idx
        dz = realToFrac idz
        
        ry = realToFrac rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
    in realToFrac mx :. my :. realToFrac mz :. ()

-- | Calculate new velocity from current object
--   and raw movement.
setVelocityFromLook :: Player t -> Vec3 GLfloat -> Player t
setVelocityFromLook player idVec =
    let movement = calculateLookMovement player idVec
    in player{playerVelocity =
            playerVelocity player + movement}

-- TODO: Clean up.
moveWithStep ::
    Player t -> Vec3 GLfloat -> Game t (Player t)
moveWithStep object movement@(mx :. _ :. mz :. ()) = do
    world <- get
    (moved, mabInt) <- moveSlideIntersecters
                        object movement
    let newAABB = fromJust $ transformedWholeAABB moved
        terrainDelta =
            if isJust $ worldTerrain world
                then terrainCollisionDelta (fromJust $ worldTerrain world) newAABB
            else 0
    if not $ null mabInt
        then
            let AABB (_ :. pMiny :. _ :. ()) _ = newAABB
                abMaxYs = map (\(AABB _ (_ :. ymax :. _ :. ())) -> ymax) mabInt
                abMaxY = maximum abMaxYs
                yStep = abMaxY - pMiny
            in if terrainDelta > 0
                then if yStep > 0
                    then moveObjectSlide object $
                        mx :. max yStep terrainDelta :. mz :. ()
                    else moveObjectSlide object $
                        mx :. terrainDelta :. mz :. ()
                else if yStep > 0
                    then return $ movePos object $
                        mx :. yStep :. mz :. ()
                else return moved
        else if terrainDelta > 0
            then moveObjectSlide moved $
                0 :. terrainDelta :. 0 :. ()
            else return moved

{-
moveWithStep :: Player t -> Vec3 GLfloat -> Game t (Player t)
moveWithStep player@(Player{}) movement@(Vec3 GLfloat mx _ mz) = do
    world <- get
    (moved, mabInt) <- moveSlideIntersecters
                        player movement
    let newAABB = fromJust $ transformedWholeAABB moved
        terrainDelta =
            if isJust $ worldTerrain world
                then terrainCollisionDelta (fromJust $ worldTerrain world) newAABB
            else 0
    if not $ null mabInt
        then
            let AABB (Vec3 GLfloat _ pMiny _) _ = newAABB
                abMaxYs = map (\(AABB _ (Vec3 GLfloat _ ymax _)) -> ymax) mabInt
                abMaxY = maximum abMaxYs
                yStep = abMaxY - pMiny
            in if terrainDelta > 0
                then if yStep > 0
                    then moveObjectSlide player $
                        Vec3 GLfloat mx (max yStep terrainDelta) mz
                    else moveObjectSlide player $
                        Vec3 GLfloat mx terrainDelta mz
                else if yStep > 0
                    then return $ movePos player $
                        Vec3 GLfloat mx yStep mz
                else return moved
        else if terrainDelta > 0
            then moveObjectSlide moved $
                Vec3 GLfloat 0 terrainDelta 0
            else return moved
moveWithStep _ _ =
    error "Player.moveWithStep can only be used with Players."
-}
terrainCollisionDelta :: Terrain -> AABB -> GLfloat
terrainCollisionDelta terrain aabb@(AABB (lowx :. lowy :. lowz :. ()) _) =
    if intersecting terrain aabb
        then terrainHeightFunc terrain lowx lowz - lowy
    else 0.0

-- | Update rotation from mouse input.
playerMouseUpdate :: Player t -> Player t
playerMouseUpdate player =
    let rawdx :. rawdy :. () = inputMouseDelta $ playerInput player
        lastX :. lastY :. () = inputLastMousePos $ playerInput player
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        rx :. ry :. rz :. () = playerRotation player

        dx = -dxx

        curPos = (lastX + rawdx) :. (lastY + rawdy) :. ()

        -- Basic calculation of degrees, 0 is minimum,
        -- 360 is maximum.
        newRy
            | ry + dx >= 360 = ry + dx - 360
            | dx + ry < 0    = 360 - ry + dx
            | otherwise      = ry + dx

        -- Lowest angle player can look
        maxLookDown = -90
        -- Highest angle player can look
        maxLookUp = 90

        -- Basic calculation for x axis (looking up and down).
        -- Make sure that look direction stays between maxLookDown
        -- and maxLookUp.
        newRx
            -- If rotation is in bounds, allow rotation.
            | rx - dy >= maxLookDown && rx - dy <= maxLookUp      = rx - dy
            -- If player is trying to look down too far, set rotation to maxLookDown.
            | rx - dy < maxLookDown                             = maxLookDown
            -- If player is trying to look up too far, set rotation to maxLookUp.
            | rx - dy > maxLookUp                               = maxLookUp
            -- I don't think this will ever happen.
            | otherwise                                         = rx

        -- Update inputLastMousePos
        newInput = (playerInput player){inputLastMousePos = curPos}

        -- Return given player with modified rotation.
        newRot = newRx :. newRy :. rz :. ()
    in player{playerRotation = newRot, playerInput = newInput}

-- | Player update with collision detection.
playerKeyUpdateSafe :: Game t ()
playerKeyUpdateSafe = do
    world <- get
    let startPlayer = worldPlayer world

    playerKeyUpdateTailSafe (worldPlayer world)
    retW <- get

    let retP = (worldPlayer retW){playerInput = playerInput startPlayer}
    put retW{worldPlayer = retP}

-- | Returns Player after safely applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdateSafe instead.
playerKeyUpdateTailSafe :: Player t -> Game t ()
playerKeyUpdateTailSafe
    (Player _ _ _ _ _ (Input ((_, desired, found, func):xs) mouse lm ms)) = do
    w <- get
    -- If the recorded keystate matches desired keystate,
    -- apply corresponding function to player.
    -- Assumes KeyState'Repeating = KeyState'Repeating || KeyState'Pressed
    let newWorld
            | desired == GLFW.KeyState'Repeating =
                if found == desired ||
                        found == GLFW.KeyState'Pressed
                    then func w
                else w
            | desired == found =
                func w
            | otherwise = w
    -- Give modified player to the function again, to recursively
    -- apply each key update.
        newPlayer = worldPlayer newWorld
        retp = newPlayer{playerInput = Input xs mouse lm ms}
    put newWorld{worldPlayer = retp}
    playerKeyUpdateTailSafe retp
playerKeyUpdateTailSafe (Player _ _ _ _ _ (Input [] _ _ _)) = get >>= put

resolveVelocityWithGravity :: Player t -> Game t (Player t)
resolveVelocityWithGravity p =
    applyGravityVelocity p >>= resolveVelocityNoY

-- | Change Player's velocity to simulate gravity.
applyGravityVelocity :: Player t -> Game t (Player t)
applyGravityVelocity p = do
    let pvx :. pvy :. pvz :. () = playerVelocity p
    world <- get
    rest <- atRest p

    if rest
        then return $ p{playerVelocity = pvx :. 0.0 :. pvz :. ()}
    else
        let newY = max (pvy - getWorldDelta world * 0.5) (-1)
        in return p{playerVelocity =
            pvx :. newY :. pvz :. ()}

atRest :: Player t -> Game t Bool
atRest p = do
    let _ :. pvy :. _ :. () = playerVelocity p

    if pvy < 0
        then
            let curPos = getPos p
            in do
                x <- getPos <$> moveWithStep p (0 :. pvy :. 0 :. ())
                return $ curPos == x
    else if pvy == 0
        then
            let curPos = getPos p
            in do
                x <- getPos <$> moveWithStep p (0 :. (-0.5) :. 0 :. ())
                return $ curPos == x
    else return False

-- | Translate velocity into a new position.
resolveVelocityNoY :: Player t -> Game t (Player t)
resolveVelocityNoY p = do
    let pVel@(_ :. yv :. _ :. ()) = playerVelocity p
    movedPlayer <- moveWithStep p pVel
    return movedPlayer{playerVelocity =
                0 :. yv :. 0 :. ()}
