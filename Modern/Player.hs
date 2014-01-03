module Player where

import qualified Graphics.UI.GLFW as GLFW
import Graphics.Rendering.OpenGL.Raw

import Util
import Types

mkPlayer :: Object
mkPlayer = Player   (0, 0, 0) (0, 0, 0) 
                    (playerMouseUpdate . playerKeyUpdate) 
                    baseInput


-- | Input for first person camera.
baseInput :: Input
baseInput =  Input [(GLFW.Key'A, False, aIn), (GLFW.Key'D, False, dIn),
                    (GLFW.Key'W, False, wIn), (GLFW.Key'S, False, sIn),
                    (GLFW.Key'LeftShift, False, shiftIn), 
                    (GLFW.Key'Space, False, spaceIn)] (0, 0) (0, 0)

aIn :: Object -> Object
aIn p = moveFromLook p (0.1, 0, 0)
dIn :: Object -> Object 
dIn p = moveFromLook p (-0.1, 0, 0)
wIn :: Object -> Object 
wIn p = moveFromLook p (0, 0, -0.1)
sIn :: Object -> Object 
sIn p = moveFromLook p (0, 0, 0.1)

shiftIn :: Object -> Object
shiftIn p = moveObject p (0, -0.1, 0)

spaceIn :: Object -> Object 
spaceIn p = moveObject p (0, 0.1, 0)

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
--   Does not use Y direction argument.
moveFromLook :: Object -> Vec3 GLfloat-> Object
moveFromLook player moveDirs=
    let rot = playerRotation player
        (_, ry, _) = vec3ToFloats rot
        (dx, _, dz) = vec3ToFloats moveDirs

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = 0
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
        
    in moveObject player (realToFrac mx, my, realToFrac mz)

moveObject :: Object -> Vec3 GLfloat -> Object
moveObject p@(Player{}) (dx, dy, dz) =
    let (ix, iy, iz) = playerPosition p
        newPos = (ix + dx, iy + dy, iz + dz)
    in p{playerPosition = newPos}

playerMouseUpdate :: Object -> Object
playerMouseUpdate player =
    let (rawdx, rawdy) = inputMouseDelta $ playerInput player
        (lastX, lastY) = inputLastMousePos $ playerInput player
        --(rawdx, rawdy) = (lastX - curX, lastY - curY)
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        --ppos = playerPosition player
        (rx, ry, rz) = playerRotation player

        dx = -dxx

        curPos = (lastX + rawdx, lastY + rawdy)

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
        newRot = (newRx, newRy, rz)
    in player{playerRotation = newRot, playerInput = newInput}

playerKeyUpdate :: Object -> Object
playerKeyUpdate player=
    (playerKeyUpdateTail player){playerInput = playerInput player}

-- | Returns Player after applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdate instead.
playerKeyUpdateTail :: Object -> Object
playerKeyUpdateTail p@(Player _ _ _ (Input ((_, isDown, func):xs) mouse lm)) =
    -- If the key is down, apply corresponding function to player
    let newPlayer = if isDown then func p else p
        retp = newPlayer{playerInput = Input xs mouse lm}

    -- Give modified player to the function again, to recursively
    -- apply each key update.
    in playerKeyUpdateTail retp
playerKeyUpdateTail p@(Player _ _ _ (Input [] _ _)) = p


-- | Takes a Player and "moves the camera" by
--   moving the whole world in the opposite direction.
--   Then applies rotation.
applyTransformations :: Object -> IO ()
applyTransformations player = do
    -- Not sure what it does... Basically save some
    -- current state attributes and reset those when
    -- glPopAttrib is called?
    glPushAttrib gl_TRANSFORM_BIT

    -- Rotate Player
    let (xr, yr, zr) = playerRotation player
    glRotatef xr (-1) 0 0
    glRotatef yr 0 (-1) 0
    glRotatef zr 0 0 (-1)
    
    -- Translate Player
    let (x, y, z) = playerPosition player
    glTranslatef (-x) (-y) (-z)

    -- Reset attributes to former state?
    glPopAttrib
