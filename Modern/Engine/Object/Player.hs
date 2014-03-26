module Engine.Object.Player (
    mkPlayer, moveFromLook,
    moveFromLookSlide, applyTransformations,
    resetPlayerInput
) where

import Data.Maybe (isJust, fromJust)

import qualified Graphics.UI.GLFW as GLFW
import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Types
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

pUpdate :: World t -> World t
pUpdate w =
    if not $ statePaused $ worldState w
        then
        let p = worldPlayer w
            state = worldState w
            origSpeed = playerSpeed p
            speed = origSpeed * stateDelta state
            newP = p{playerSpeed = speed}
            -- Do actual update
            modifiedW = playerKeyUpdateSafe w{worldPlayer = playerMouseUpdate newP}
            modifiedP = worldPlayer modifiedW
            gravityP = applyGravityVelocity w modifiedP

            resolvedP = resolveVelocity w gravityP

        in modifiedW{worldPlayer =
            resolvedP{playerSpeed = origSpeed}}
    else
        let p = worldPlayer w
            -- Do mouse update.
            playerMouseUpdated = playerMouseUpdate p
            -- Do key update.
            modifiedW = playerKeyUpdateSafe w{worldPlayer = playerMouseUpdated}

        in modifiedW{worldPlayer = p}

resetPlayerInput :: GameObject t -> GameObject t
resetPlayerInput p@(Player{}) =
    p{playerInput = (playerInput p){inputMouseDelta = Vec2 0 0}}
resetPlayerInput _ = error "Player.resetPlayerInput"

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

-- | Calculate delta movement from Player and eaw input movement.
calculateLookMovement :: GameObject t -> Vec3 GLfloat -> Vec3 GLfloat
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

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
moveFromLook :: GameObject t -> Vec3 GLfloat -> GameObject t
moveFromLook player@(Player{}) givenVec =
    let movement = calculateLookMovement player givenVec
    in moveObject player movement
moveFromLook _ _ =
    error "Player.moveFromLook can only be used on Players."

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
moveFromLookSlide :: World t -> GameObject t -> Vec3 GLfloat -> GameObject t
moveFromLookSlide world player@(Player{}) idVec =
    let movement = calculateLookMovement player idVec

    in moveWithStep world player movement
moveFromLookSlide _ _ _ =
    error "Player.moveFromLookSlide can only be used on Players."

-- | Calculate new velocity from current object
--   and raw movement.
setVelocityFromLook :: GameObject t -> Vec3 GLfloat -> GameObject t
setVelocityFromLook player@(Player{}) idVec =
    let movement = calculateLookMovement player idVec
    in player{playerVelocity =
            playerVelocity player + movement}
setVelocityFromLook _ _ = error "Player.setVelocityFromLook"

-- | Move Player from raw delta movement, simulating
--   the Player stepping up small steps.
moveWithStep :: World t -> GameObject t -> Vec3 GLfloat -> GameObject t
moveWithStep world player@(Player{}) movement@(Vec3 mx _ mz) = do
    let (moved, mabInt) = moveObjectSlideAllIntersecters
                world player movement
    if isJust mabInt
        then
            let abMaxYs = map (\(AABB _ (Vec3 _ ymax _)) -> ymax) $ fromJust mabInt
                abMaxY = maximum abMaxYs
                (Just (AABB (Vec3 _ pMiny _) _)) = calculateNewWholeAABB moved
                yStep = abMaxY - pMiny
            in if abs yStep < 1
                    then
                    let moved2 =
                            moveObjectSlide world moved $
                                    Vec3 mx (yStep+1e-2) mz
                        Vec3 velX _ velZ = playerVelocity moved2
                        
                    in moved2{playerVelocity = Vec3 velX 0 velZ}
                else
                    let Vec3 velX _ velZ = playerVelocity moved
                    in moved{playerVelocity = Vec3 velX 0 velZ}
    else moved
moveWithStep _ _ _ =
    error "Player.moveWithStep can only be used on Players."

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
                let m = moveObjectSafe world p (Vec3 0 pvy 0)
                in getPos m == getPos p
            | pvy == 0 =
                let m = moveObjectSafe world p (Vec3 0 (-0.05) 0)
                in getPos m == getPos p
            | otherwise = False
    in if atRest
        then p{playerVelocity = Vec3 pvx 0 pvz}
    else
        let Vec3 vx vy vz = playerVelocity p
            newY = max (vy - getWorldDelta world * 0.5) (-1)
        in p{playerVelocity =
            Vec3 vx newY vz}
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
