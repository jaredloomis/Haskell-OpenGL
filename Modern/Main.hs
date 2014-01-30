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

main :: IO ()
main = do
    -- Initialize GLFW, create a window, open it.
    win <- createGLFWWindow 800 600
    -- Perform some intitial OpenGL configurations.
    initGL win

    -- Create default world with a Player
    -- and one Entity
    world <- mkWorld

    -- Register the function called when the keyboard is pressed.
    GLFW.setKeyCallback win (Just $ keyPressed world)
    -- Register the function called whe our window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    -- Register the function called when cursor moves.
    GLFW.setCursorPosCallback win (Just $ cursorMove (worldPlayer world))

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    loop win world
    shutdown win

    where
        loop :: GLFW.Window -> World t -> IO ()
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
    wState <- readIORef (worldState world)

    -- Update the world time and delta.
    worldTime <- getWorldTime
    let delta = realToFrac $ diffUTCTime worldTime (stateTime wState)
    worldState world $= wState{
        stateTime = worldTime, stateDelta = delta}

    let playerRef = worldPlayer world
    player <- readIORef playerRef
    -- Update player
    tmpPlayer <- effectfulUpdate player world
    -- Set mouse delta movement to 0.
    let pin = (playerInput tmpPlayer){inputMouseDelta = Vec2 0 0}
        newPlayer = tmpPlayer{playerInput = pin}
    -- Write the World's player value.
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
keyPressed :: World t -> GLFW.KeyCallback
keyPressed _ win GLFW.Key'Escape _ GLFW.KeyState'Pressed _ = do
    currentCursorMode <- GLFW.getCursorInputMode win
    GLFW.setCursorInputMode win $
        if currentCursorMode == GLFW.CursorInputMode'Disabled
            then GLFW.CursorInputMode'Normal
        else GLFW.CursorInputMode'Disabled

keyPressed world _ k _ state _ = do
    let playerRef = worldPlayer world
    player <- readIORef playerRef
    let input = playerInput player
        newIn = checkType input k state
        newPlayer = player{playerInput = newIn}
    
    writeIORef playerRef newPlayer
    
    where
        checkType :: Input t -> GLFW.Key -> GLFW.KeyState -> Input t
        checkType origIn key action =
            let isPressed = action /= GLFW.KeyState'Released
                keyMap = inputKeys origIn
                newMap = map (\w@(ckey, _, func) ->
                    if ckey == key
                        then (key, isPressed, func)
                    else w) keyMap
            in origIn{inputKeys = newMap}
