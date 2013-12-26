module Main where

import Data.Bits ((.|.))
import System.Exit (exitSuccess)
import Control.Monad (forever)
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL.Raw as GL

import GameObject
import Types
import Graphics
import Window
import Util (systemTime)

-------------------
--- Test Values ---
-------------------

allPoints :: [Vec3]
allPoints = [(0, 0, 0), (0.3, 0, 0), (0, 0.3, 0), 
             (0.3, 0, 0), (0.3, 0.3, 0), (0, 0.3, 0)]

testWorld :: IO World
testWorld = do
    defaultWorld <- mkWorld
    player <- newIORef testPlayer
    entityRef <- testEntityRef
    return $ defaultWorld{worldPlayer = player, worldEntities = Just [entityRef]} 

testPlayer :: GameObject
testPlayer = mkPlayer{playerUpdate = updateFunc}
    where
    renderFunc :: GameObject -> IO ()
    renderFunc player@(Player{}) = do
        -- Translate Player globally
        globalTranslate player

        -- Set Color to Blue
        GL.glColor3f 0 0 1

        -- Render the array of triangles
        renderTriangles allPoints

    updateFunc :: GameObject -> GameObject
    updateFunc player = playerMouseUpdate $ playerKeyUpdate player

playerMouseUpdate :: GameObject -> GameObject
playerMouseUpdate player =
    let (rawdx, rawdy) = inputMouseDelta $ playerInput player
        (lastX, lastY) = inputLastMousePos $ playerInput player
        --(rawdx, rawdy) = (lastX - curX, lastY - curY)
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)
        (ppos, (rx, ry, rz)) = playerPosRot player
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
        newPosRot = (ppos, (newRx, newRy, rz))
    in player{playerPosRot = newPosRot, playerInput = newInput}

playerKeyUpdate :: GameObject -> GameObject
playerKeyUpdate player=
    (playerKeyUpdateTail player){playerInput = playerInput player}

-- | Returns Player after applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdate instead.
playerKeyUpdateTail :: GameObject -> GameObject
playerKeyUpdateTail p@(Player _ (Input ((_, isDown, func):xs) mouse lm) _) =
    -- If the key is down, apply corresponding function to player
    let newPlayer = if isDown then func p else p
        retp = newPlayer{playerInput = Input xs mouse lm}

    -- Give modified player to the function again, to recursively
    -- apply each key update.
    in playerKeyUpdateTail retp
playerKeyUpdateTail p@(Player _ (Input [] _ _) _) = p

testEntityRef :: IO (IORef GameObject)
testEntityRef = newIORef testEntity

testEntity :: GameObject
testEntity = Entity ((0, 0, -6), (0, 0, 0)) id eRender
    where
    eRender e@(Entity{}) = do
        -- Translate Entity globally
        globalTranslate e

        -- Set Color to Red
        GL.glColor3f 1 0 0

        -- Render the array of triangles
        renderTriangles allPoints

--------------------
--- MAIN PROGRAM ---
--------------------

main :: IO ()
main = do
    True <- GLFW.init
    
    -- Create a window and open it.
    win <- createGLFWWindow 800 600

    -- Initialize OpenGL.
    initGL win
    
    -- Create world.
    world <- testWorld
    let player = worldPlayer world

    -- Register the function to do all OpenGL drawing.
    GLFW.setWindowRefreshCallback win (Just (drawWorld world))
    -- Register the function called when our window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    -- Register the function called when the keyboard is pressed.
    GLFW.setKeyCallback win (Just $ keyPressed (worldPlayer world))
     -- Register the function called when the window closes.
    GLFW.setWindowCloseCallback win (Just shutdown)
    -- Register the function called when cursor moves.
    GLFW.setCursorPosCallback win (Just $ cursorMove player)

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    -- Start event processing engine
    forever $ do
        -- Check for events
        GLFW.pollEvents
        -- Apply logic update
        updateWorld world
        -- Do rendering / drawing
        drawWorld world win
        -- Swap the buffers
        GLFW.swapBuffers win

    -- Close window. I don't think this will ever be called.
    shutdown win

-----------------------------
--- MAIN DRIVING FUNCTIONS ---
------------------------------

drawWorld :: World -> GLFW.WindowRefreshCallback
drawWorld world _ = do
    -- Clear the screen and the depth buffer
    GL.glClear $ fromIntegral  $  GL.gl_COLOR_BUFFER_BIT
                              .|. GL.gl_DEPTH_BUFFER_BIT

    -- Reset Matrix.
    GL.glLoadIdentity
    player <- readIORef $ worldPlayer world
    -- Move and rotate Player
    applyTransformations player

    --playerRender player player
 
    -- TODO: make it safe for a world with a Nothing for entities.
    let (Just entities) = worldEntities world

    -- Render all entities
    renderObjectRefsSafe entities

updateWorld :: World -> IO ()
updateWorld world = do
    -- Get worldSettings values
    let settingsRef = worldSettings world
    currentSettings <- readIORef settingsRef
    
    -- Update settingsTime values
    let (_, lastTime) = settingsTime currentSettings
    curTime <- systemTime
    let newDelta = curTime - lastTime
    writeIORef settingsRef currentSettings{settingsTime = (newDelta, curTime)}

    let playerRef = worldPlayer world
    player <- readIORef playerRef
    
    -- Update player
    let tmpPlayer = moveWithDelta updateObject player newDelta

    -- Set mouse delta movement to 0
    let pin = (playerInput tmpPlayer){inputMouseDelta = (0, 0)}
        newPlayer = tmpPlayer{playerInput = pin}

    writeIORef playerRef newPlayer
    
    -- TODO: make it safe for a world with a Nothing for entities.
    let (Just entities) = worldEntities world
    updateObjectRefs entities

--------------------------
--- CALLBACK FUNCTIONS ---
--------------------------

shutdown :: GLFW.WindowCloseCallback
shutdown win = do
    GLFW.destroyWindow win
    GLFW.terminate
    _ <- exitSuccess
    return ()

keyPressed :: IORef GameObject -> GLFW.KeyCallback
keyPressed _ win GLFW.Key'Escape _ GLFW.KeyState'Pressed _ = do
    currentCursorMode <- GLFW.getCursorInputMode win
    if currentCursorMode == GLFW.CursorInputMode'Disabled
        then GLFW.setCursorInputMode win GLFW.CursorInputMode'Normal
    else GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

--shutdown win
keyPressed playerRef _ k _ state _ = do
    player <- readIORef playerRef
    let input = playerInput player
        newIn = checkType input k state
        newPlayer = player{playerInput = newIn}
    
    writeIORef playerRef newPlayer
    
    where
        checkType (Input keyMap mouse lm) key action =
            let isPressed = action /= GLFW.KeyState'Released
                newIn = Input (map (\w@(ckey, _, func) ->
                    if ckey == key then (key, isPressed, func) else w) $ keyMap) mouse lm
            in newIn

cursorMove :: IORef GameObject -> GLFW.CursorPosCallback
cursorMove playerRef _ x y = do
    player <- (readIORef playerRef)
    let input = playerInput player

    let (xi, yi) = inputLastMousePos input
    let newInput = input{inputMouseDelta = (realToFrac x - xi, realToFrac y - yi)}
    writeIORef playerRef player{playerInput = newInput}
