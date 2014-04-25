module Engine.Object.Player (
    mkPlayer,
    resetPlayerInput
) where

import Data.Maybe (isJust, fromJust)
import Control.Monad.State (get)

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Types
import Engine.Core.Util (sinDeg, cosDeg)
import Engine.Core.Vec (Vec3(..), Vec2(..))
import Engine.Core.World (getWorldDelta)
import Engine.Object.GameObject
    (moveObjectSlideAllIntersecters,
     moveObjectSlide)

-------- FPS ------------------

mkPlayer :: GameObject t
mkPlayer = Player   (Vec3 0 60 0) (Vec3 0 0 0)
                    (Vec3 0 0 0) 5
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
     (Vec2 0 0) (Vec2 0 0)
     0.1

aIn :: World t -> World t
aIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (Vec3 (playerSpeed p) 0 0)}
dIn :: World t -> World t
dIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (Vec3 (-playerSpeed p) 0 0)}
wIn :: World t -> World t
wIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (Vec3 0 0 (-playerSpeed p))}
sIn :: World t -> World t
sIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (Vec3 0 0 (playerSpeed p))}

shiftIn :: World t -> World t
shiftIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        p{playerVelocity =
            playerVelocity p + Vec3 0 (-(playerSpeed p)) 0}}

spaceIn :: World t -> World t
spaceIn w =
        let p = worldPlayer w
            curVel@(Vec3 _ vy _) = playerVelocity p
        in
            if abs vy < 0.01
                then w{worldPlayer =
                    p{playerVelocity =
                        curVel + Vec3 0 0.2 0}}
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


pUpdate :: Game t (World t)
pUpdate = do
    w <- get
    if not $ statePaused $ worldState w
        then
        let p = worldPlayer w
            state = worldState w
            origSpeed = playerSpeed p
            speed = origSpeed * stateDelta state
            newP = p{playerSpeed = speed}
            -- Do actual update
            modifiedW = playerKeyUpdateSafe w{
                worldPlayer = playerMouseUpdate newP}
            modifiedP = worldPlayer modifiedW
            gravityP = applyGravityVelocity w modifiedP

            resolvedP = resolveVelocity w gravityP

        in return modifiedW{worldPlayer =
            resolvedP{playerSpeed = origSpeed}}
    else
        let p = worldPlayer w
            -- Do mouse update.
            playerMouseUpdated = playerMouseUpdate p
            -- Do key update.
            modifiedW = playerKeyUpdateSafe w{
                worldPlayer = playerMouseUpdated}

        in return modifiedW{worldPlayer = p}

resetPlayerInput :: GameObject t -> GameObject t
resetPlayerInput p@(Player{}) =
    p{playerInput = (playerInput p){inputMouseDelta = Vec2 0 0}}
resetPlayerInput _ = error "Player.resetPlayerInput"

-- | Calculate delta movement from Player and raw input movement.
calculateLookMovement :: GameObject t -> Vec3 -> Vec3
calculateLookMovement p@(Player{}) (Vec3 idx idy idz) =
    let Vec3 _ rry _ = playerRotation p
        dx = realToFrac idx
        dz = realToFrac idz
        
        ry = realToFrac rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
    in Vec3 (realToFrac mx) my (realToFrac mz)
calculateLookMovement _ _ =
    error "Player.calculateLookMovement can only be used on Players."

-- | Calculate new velocity from current object
--   and raw movement.
setVelocityFromLook :: GameObject t -> Vec3 -> GameObject t
setVelocityFromLook player@(Player{}) idVec =
    let movement = calculateLookMovement player idVec
    in player{playerVelocity =
            playerVelocity player + movement}
setVelocityFromLook _ _ = error "Player.setVelocityFromLook"

-- TODO: Clean up.
moveWithStep :: World t -> GameObject t -> Vec3 -> GameObject t
moveWithStep world player@(Player{}) movement@(Vec3 mx _ mz) =
    let (moved, mabInt) = moveObjectSlideAllIntersecters
                world player movement
        newAABB = fromJust $ transformedWholeAABB moved
        terrainDelta = terrainCollisionDelta (worldTerrain world)
            newAABB
    in if isJust mabInt
        then
            let AABB (Vec3 _ pMiny _) _ = newAABB
                abMaxYs = map (\(AABB _ (Vec3 _ ymax _)) -> ymax) $
                                    fromJust mabInt
                abMaxY = maximum abMaxYs
                yStep = abMaxY - pMiny
            in if terrainDelta > 0
                then if yStep > 0
                    then moveObjectSlide world player $
                        Vec3 mx (max yStep terrainDelta) mz
                    else moveObjectSlide world player $
                        Vec3 mx terrainDelta mz
                else if yStep > 0
                    then movePos player $
                        Vec3 mx yStep mz
                else moved
        else if terrainDelta > 0
            then moveObjectSlide world moved $
                Vec3 0 terrainDelta 0
            else moved
moveWithStep _ _ _ =
    error "Player.moveWithStep can only be used with Players."

terrainCollisionDelta :: Terrain -> AABB -> GLfloat
terrainCollisionDelta terrain aabb@(AABB (Vec3 lowx lowy lowz) _) =
    if intersecting terrain aabb
        then terrainHeightFunc terrain lowx lowz - lowy
    else 0.0

-- | Update rotation from mouse input.
playerMouseUpdate :: GameObject t -> GameObject t
playerMouseUpdate player =
    let Vec2 rawdx rawdy = inputMouseDelta $ playerInput player
        Vec2 lastX lastY = inputLastMousePos $ playerInput player
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        Vec3 rx ry rz = playerRotation player

        dx = -dxx

        curPos = Vec2 (lastX + rawdx) (lastY + rawdy)

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
        newRot = Vec3 newRx newRy rz
    in player{playerRotation = newRot, playerInput = newInput}

-- | Player update with collision detection.
playerKeyUpdateSafe :: World t -> World t
playerKeyUpdateSafe world =
    let startPlayer = worldPlayer world
        retW = playerKeyUpdateTailSafe world (worldPlayer world)
        retP = (worldPlayer retW){playerInput = playerInput startPlayer}
    in retW{worldPlayer = retP}

-- | Returns Player after safely applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdateSafe instead.
playerKeyUpdateTailSafe :: World t -> GameObject t -> World t
playerKeyUpdateTailSafe w
    (Player _ _ _ _ _ (Input ((_, desired, found, func):xs) mouse lm ms)) =
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
    in playerKeyUpdateTailSafe newWorld{worldPlayer = retp} retp
playerKeyUpdateTailSafe w (Player _ _ _ _ _ (Input [] _ _ _)) = w
playerKeyUpdateTailSafe _ _ =
    error $ "Player.playerKeyUpdateTailSafe is meant"
        ++ " to be used only on Players."

-- | Change Player's velocity to simulate gravity.
applyGravityVelocity :: World t -> GameObject t -> GameObject t
applyGravityVelocity world p@(Player{}) =
    let Vec3 pvx pvy pvz = playerVelocity p
        atRest
            | pvy < 0 =
                let curPos = getPos p
                in curPos == getPos (moveWithStep world p (Vec3 0 pvy 0))
            | pvy == 0 =
                let curPos = getPos p
                in curPos == getPos (moveWithStep world p (Vec3 0 (-0.5) 0))
            | otherwise = False
    in if atRest
        then p{playerVelocity = Vec3 pvx 0.0 pvz}
    else
        let newY = max (pvy - getWorldDelta world * 0.5) (-1)
        in p{playerVelocity =
            Vec3 pvx newY pvz}
applyGravityVelocity _ _ =
    error "Player.applyGravityVelocity can only be used on Players."

-- | Translate velocity into a new position.
resolveVelocity :: World t -> GameObject t -> GameObject t
resolveVelocity world p@(Player{}) =
    let pVel@(Vec3 _ yv _) = playerVelocity p
        movedPlayer = moveWithStep world p pVel
    in movedPlayer{playerVelocity =
                Vec3 0 yv 0}
resolveVelocity _ _ =
    error $ "Player.resolveVelocity can only be used"
            ++ " on Players"
