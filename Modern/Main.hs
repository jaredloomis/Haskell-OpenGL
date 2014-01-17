module Main where

import Data.IORef (IORef, readIORef, writeIORef)
import Data.Bits ((.|.))
import Data.Time (diffUTCTime)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL (($=))
import Graphics.Rendering.OpenGL.Raw
    (glClear, gl_COLOR_BUFFER_BIT, glLoadIdentity, gl_DEPTH_BUFFER_BIT)

import Engine.Graphics.Graphics
import Engine.Object.Player
import TestVals
import Engine.Object.GameObject
import Engine.Graphics.Window
import Engine.Core.Vec
import Engine.Core.World

main ::  IO ()
main = do
    -- Does not work for all systems, but asks the OS or WM
    -- to disable resizing of the window. Does not work on
    -- Arch Linux 64 with XFCE/XFWM.
    --GLFW.windowHint $ GLFW.WindowHint'Resizable False

    -- Initialize GLFW, create a window, open it.
    win <- createGLFWWindow 800 600
    -- Perform some intitial OpenGL configurations.
    initGL win

    -- Create default world with a Player
    -- and one Entity
    world <- mkWorld

    -- Register the function to do all OpenGL drawing.
    -- TODO: Should I remove this?
    --GLFW.setWindowRefreshCallback win (Just (renderStep world))
    -- Register the function called when the keyboard is pressed.
    GLFW.setKeyCallback win (Just $ keyPressed (worldPlayer world))
    -- Register the function called whe our window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    -- Register the function called when cursor moves.
    GLFW.setCursorPosCallback win (Just $ cursorMove (worldPlayer world))

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    loop win world
    shutdown win

    where
        loop win world = do
            -- Clear screen.
            glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
            -- Check if any events have occured.
            GLFW.pollEvents

            -- Perform logic update on the world.
            updateStep world
            -- Render objects in world.
            renderStep world win

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            loop win world

renderStep :: World t -> GLFW.Window -> IO ()
renderStep world _ = do
    -- Reset the matrix to a default state.
    glLoadIdentity

    -- Apply player's transformations.
    readIORef (worldPlayer world) >>= applyTransformations

    -- Render all entities.
    renderWorld world

updateStep :: World t -> IO ()
updateStep world = do
    -- Update delta time and current time.
    wState <- readIORef (worldState world)
    worldTime <- getWorldTime
    let delta = realToFrac $ diffUTCTime worldTime (stateTime wState)
    worldState world $= wState{
        stateTime = worldTime, stateDelta = delta}

    let playerRef = worldPlayer world
    player <- readIORef playerRef

    -- Update Player and Set mouse delta movement to 0
    tmpPlayer <- effectfulUpdate player world
    let pin = (playerInput tmpPlayer){inputMouseDelta = Vec2 0 0}
        newPlayer = tmpPlayer{playerInput = pin}

    writeIORef playerRef newPlayer

    effectfulUpdateWorld world
    
---------------
-- CALLBACKS --
---------------

cursorMove :: IORef (GameObject t) -> GLFW.CursorPosCallback
cursorMove playerRef _ x y = do
    player <- readIORef playerRef
    let input = playerInput player

        Vec2 xi yi = inputLastMousePos input
        newInput = input{
            inputMouseDelta = Vec2 (realToFrac x - xi) (realToFrac y - yi)}
    writeIORef playerRef player{playerInput = newInput}

-- | Special case for Escape Key, not necessary to give info
--   to the Player.
--   TODO: Give it to Player for pausing. Or something.
keyPressed :: IORef (GameObject t) -> GLFW.KeyCallback
keyPressed _ win GLFW.Key'Escape _ GLFW.KeyState'Pressed _ = do
    currentCursorMode <- GLFW.getCursorInputMode win
    GLFW.setCursorInputMode win $
        if currentCursorMode == GLFW.CursorInputMode'Disabled
            then GLFW.CursorInputMode'Normal
        else GLFW.CursorInputMode'Disabled

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
                    if ckey == key
                        then (key, isPressed, func)
                    else w) keyMap) mouse lm
            in newIn
