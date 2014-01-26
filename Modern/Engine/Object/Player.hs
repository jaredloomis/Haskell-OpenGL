module Engine.Object.Player where

import Data.IORef
import Data.Maybe (isJust)

import qualified Graphics.UI.GLFW as GLFW
import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Util
import Engine.Core.Vec
import Engine.Core.World
import Engine.Object.GameObject
import Engine.Model.AABB

mkPlayer :: GameObject t
mkPlayer = Player   (Vec3 0 20 0) (Vec3 0 0 0)
                    (Vec3 0 0 0) 5
                    pUpdate
                    baseInput

pUpdate :: World t -> IO (GameObject t)
pUpdate w = do
    p <- readIORef (worldPlayer w)
    state <- readIORef (worldState w)
    let origSpeed = playerSpeed p
        speed = origSpeed * stateDelta state
        newP = p{playerSpeed = speed}
    -- Do actual update
    modifiedP <- playerKeyUpdateSafe w $ playerMouseUpdate newP
    gravityP <- applyGravityVelocity w modifiedP

    print $ playerVelocity gravityP

    resolvedP <- resolveVelocity w gravityP

    return resolvedP{playerSpeed = origSpeed}

-- | Input for first person camera.
baseInput :: Input t
baseInput =  Input [(GLFW.Key'A, False, aIn), (GLFW.Key'D, False, dIn),
                    (GLFW.Key'W, False, wIn), (GLFW.Key'S, False, sIn),
                    (GLFW.Key'LeftShift, False, shiftIn), 
                    (GLFW.Key'Space, False, spaceIn)] (Vec2 0 0) (Vec2 0 0)
                    0.1

{-
aIn :: World t -> GameObject t -> IO (GameObject t)
aIn w p = moveFromLookSlide w p (Vec3 (playerSpeed p) 0 0)
dIn :: World t -> GameObject t -> IO (GameObject t)
dIn w p = moveFromLookSlide w p (Vec3 (-playerSpeed p) 0 0)
wIn :: World t -> GameObject t -> IO (GameObject t)
wIn w p = moveFromLookSlide w p (Vec3 0 0 (-playerSpeed p))
sIn :: World t -> GameObject t -> IO (GameObject t)
sIn w p = moveFromLookSlide w p (Vec3 0 0 (playerSpeed p))
-}

aIn :: World t -> GameObject t -> IO (GameObject t)
aIn _ p = return $ setVelocityFromLook p (Vec3 (playerSpeed p) 0 0)
dIn :: World t -> GameObject t -> IO (GameObject t)
dIn _ p = return $ setVelocityFromLook p (Vec3 (-playerSpeed p) 0 0)
wIn :: World t -> GameObject t -> IO (GameObject t)
wIn _ p = return $ setVelocityFromLook p (Vec3 0 0 (-playerSpeed p))
sIn :: World t -> GameObject t -> IO (GameObject t)
sIn _ p = return $ setVelocityFromLook p (Vec3 0 0 (playerSpeed p))


shiftIn :: World t -> GameObject t -> IO (GameObject t)
shiftIn w p = moveObjectSlide w p (Vec3 0 (-playerSpeed p) 0)

spaceIn :: World t -> GameObject t -> IO (GameObject t)
spaceIn _ p = do
    print $ playerSpeed p
    return $
        p{playerVelocity =
            playerVelocity p + Vec3 0 (playerSpeed p) 0}
--moveObjectSlide w p (Vec3 0 (playerSpeed p) 0)

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
moveFromLook :: GameObject t -> Vec3 GLfloat -> GameObject t
moveFromLook player@(Player{}) (Vec3 idx idy idz) =
    let Vec3 _ rry _ = playerRotation player
        dx = realToFrac idx
        dz = realToFrac idz
        
        ry = realToFrac rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
        
    in moveObject player $ Vec3 (realToFrac mx) my (realToFrac mz)
moveFromLook _ _ =
    error "Player.moveFromLook can only be used on Players."

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
moveFromLookSlide :: World t -> GameObject t -> Vec3 GLfloat-> IO (GameObject t)
moveFromLookSlide world player@(Player{}) (Vec3 idx idy idz) =
    let Vec3 _ rry _ = playerRotation player
        dx = realToFrac idx
        dz = realToFrac idz
        
        ry = realToFrac rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry

    in moveWithStep world player $ Vec3 (realToFrac mx) my (realToFrac mz)
moveFromLookSlide _ _ _ =
    error "Player.moveFromLookSlide can only be used on Players."

setVelocityFromLook :: GameObject t -> Vec3 GLfloat -> GameObject t
setVelocityFromLook player@(Player{}) (Vec3 idx idy idz) =
    let Vec3 _ rry _ = playerRotation player
        dx = realToFrac idx
        dz = realToFrac idz
        
        ry = realToFrac rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
    in player{playerVelocity =
            playerVelocity player + Vec3 (realToFrac mx) my (realToFrac mz)}
setVelocityFromLook _ _ = error "Player.setVelocityFromLook"

moveWithStep :: World t -> GameObject t -> Vec3 GLfloat -> IO (GameObject t)
moveWithStep world player@(Player{}) movement@(Vec3 mx _ mz) = do
    (moved, mabInt) <- moveObjectSlideIntersecter
                world player movement
    if isJust mabInt
        then
            let Just (AABB _ (Vec3 _ abMaxY _)) = mabInt
                (Just (AABB (Vec3 _ pMiny _) _)) = calculateNewWholeAABB moved
                yStep = abMaxY - pMiny
            in if abs yStep < 3
                    then do
                    moved2 <- moveObjectSlide world moved $
                                    Vec3 mx (yStep+1e-2) mz
                    let Vec3 velX _ velZ = playerVelocity moved2
                    return moved2{playerVelocity = Vec3 velX 0 velZ}
                else
                    let Vec3 velX _ velZ = playerVelocity moved
                    in return moved{playerVelocity = Vec3 velX 0 velZ}
    else return moved
moveWithStep _ _ _ =
    error "Player.moveWithStep can only be used on Players."

playerMouseUpdate :: GameObject t -> GameObject t
playerMouseUpdate player =
    let Vec2 rawdx rawdy = inputMouseDelta $ playerInput player
        Vec2 lastX lastY = inputLastMousePos $ playerInput player
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        --ppos = playerPosition player
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
            | rx - dy >= maxLookDown && rx - dy <= maxLookUp    = rx - dy
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
playerKeyUpdateSafe :: World t -> GameObject t -> IO (GameObject t)
playerKeyUpdateSafe world player = do
    ret <- playerKeyUpdateTailSafe world player
    return ret{playerInput = playerInput player}

-- | Returns Player after safely applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdateSafe instead.
playerKeyUpdateTailSafe :: World t -> GameObject t -> IO (GameObject t)
playerKeyUpdateTailSafe w
    p@(Player _ _ _ _ _ (Input ((_, isDown, func):xs) mouse lm ms)) = do
    -- If the key is down, apply corresponding function to player
    newPlayer <- if isDown then func w p else return p
    -- Give modified player to the function again, to recursively
    -- apply each key update.
    let retp = newPlayer{playerInput = Input xs mouse lm ms}
    playerKeyUpdateTailSafe w retp
playerKeyUpdateTailSafe _ p@(Player _ _ _ _ _ (Input [] _ _ _)) = return p
playerKeyUpdateTailSafe _ _ =
    error $ "Player.playerKeyUpdateTailSafe is meant"
        ++ " to be used only on Players."

applyGravityVelocity :: World t -> GameObject t -> IO (GameObject t)
applyGravityVelocity world p@(Player{}) = do
    let Vec3 pvx pvy pvz = playerVelocity p
    atRest <- if pvy < 0 then do
                m <- moveObjectSafe world p (Vec3 0 pvy 0)
                return $ getPos m == getPos p
            else if pvy == 0 then do
                m <- moveObjectSafe world p (Vec3 0 (-0.005) 0)
                return $ getPos m == getPos p
            else return False
    if atRest
        then return p{playerVelocity = Vec3 pvx 0 pvz}
    else
        let Vec3 vx vy vz = playerVelocity p
            newY = max (vy - 0.005) (-1)
        in return p{playerVelocity =
            Vec3 vx newY vz}


resolveVelocity :: World t -> GameObject t -> IO (GameObject t)
resolveVelocity world p@(Player{}) =
    let pVel@(Vec3 _ yv _) = playerVelocity p
    in do
        movedPlayer <- moveWithStep world p pVel
        return movedPlayer{playerVelocity =
                Vec3 0 yv 0}
{-do
    let pv@(Vec3 vx vy vz) = playerVelocity p
    --print $ playerVelocity p
    (obj, aabb)moveObjectSlideIntersecter world p pv
    if isJust aabb
        then
            let (AABB (Vec3 _ minY _) (Vec _ maxY _)) = calculateNewWholeAABB obj
            in if vy > 0
                then
                let Just (AABB _ (Vec3 _ abMaxY _)) = mabInt
                    (Just (AABB (Vec3 _ pMiny _) _)) = calculateNewWholeAABB obj
                    yStep = abMaxY - pMiny
            setPos obj 
-}

-- | Takes a Player and "moves the camera" by
--   moving the whole world in the opposite direction.
--   Then applies rotation.
applyTransformations :: GameObject t -> IO ()
applyTransformations player = do
    -- Not sure what it does... Basically save some
    -- current state attributes and reset those when
    -- glPopAttrib is called?
    glPushAttrib gl_TRANSFORM_BIT

    -- Rotate Player
    let Vec3 xr yr zr = playerRotation player
    glRotatef xr (-1) 0 0
    glRotatef yr 0 (-1) 0
    glRotatef zr 0 0 (-1)
    
    -- Translate Player
    let Vec3 x y z = playerPosition player
    glTranslatef (-x) (-y) (-z)

    -- Reset attributes to former state?
    glPopAttrib
