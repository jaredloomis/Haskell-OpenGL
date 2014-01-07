module Main where

import Data.IORef (IORef, readIORef, writeIORef)

import qualified Graphics.UI.GLFW as GLFW

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

import Types
import Util
import Graphics
import Player
import TestVals
import Object

main ::  IO ()
main = do
    print "sdfg"
    -- Does not work for all systems, but asks the OS or WM
    -- to disable resizing of the window. Does not work on
    -- Arch Linux 64 with XFCE/XFWM.
    GLFW.windowHint $ GLFW.WindowHint'Resizable False
    -- Initialize GLFW, create a window, open it.
    win <- createGLFWWindow 800 600
    -- Perform some intitial OpenGL configurations.
    initGL win

    -- Create default world with a Player
    -- and one Entity
    world <- mkWorld

    -- Register the function to do all OpenGL drawing.
    -- TODO: Should I remove this?
    GLFW.setWindowRefreshCallback win (Just (renderStep world))
    -- Register the function called when the keyboard is pressed.
    GLFW.setKeyCallback win (Just $ keyPressed (worldPlayer world))
    -- Register the function called when our window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    -- Register the function called when cursor moves.
    GLFW.setCursorPosCallback win (Just $ cursorMove $ worldPlayer world)

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    loop win world
    shutdown win
    
    where
        loop win world = do
            -- Clear screen.
            GL.clear [GL.ColorBuffer, GL.DepthBuffer]
            -- Check if any events have occured.
            GLFW.pollEvents

            -- Perform logic update on the world.
            updateStep world
            -- Render objects in world.
            renderStep world win

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            -- Do I need this?
            --threadDelay 10000

            loop win world

renderStep :: World -> GLFW.Window -> IO ()
renderStep world _ = do
    -- Reset the matrix to a default state.
    glLoadIdentity

    -- Apply player's transformations.
    readIORef (worldPlayer world) >>= applyTransformations

    -- Render all entities.
    renderWorld world

updateStep :: World -> IO ()
updateStep world = do
    let playerRef = worldPlayer world
    player <- readIORef playerRef

    -- Update Player and Set mouse delta movement to 0
    let tmpPlayer = updateObject player
        pin = (playerInput tmpPlayer){inputMouseDelta = (0, 0)}
        newPlayer = tmpPlayer{playerInput = pin}

    writeIORef playerRef newPlayer

---------------
-- CALLBACKS --
---------------

cursorMove :: IORef Object -> GLFW.CursorPosCallback
cursorMove playerRef _ x y = do
    player <- readIORef playerRef
    let input = playerInput player

    let (xi, yi) = inputLastMousePos input
    let newInput = input{inputMouseDelta = (realToFrac x - xi, realToFrac y - yi)}
    writeIORef playerRef player{playerInput = newInput}

-- | Special case for Escape Key, not necessary to give info
--   to the Player.
--   TODO: Give it to Player for pausing. Or something.
keyPressed :: IORef Object -> GLFW.KeyCallback
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
