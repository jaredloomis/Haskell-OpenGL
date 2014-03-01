module Main where

import Data.Time (diffUTCTime)
import Control.Monad (unless)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw

import Engine.Graphics.Graphics
import Engine.Core.Vec
import TestVals
import Engine.Graphics.Window
import Engine.Core.World
--import Engine.Graphics.Framebuffer
import Engine.Object.Player
import Engine.Graphics.Shadows
import Engine.Graphics.Shaders
import Engine.Object.GameObject

{-
main :: IO ()
main = do
    -- Initialize GLFW, create a window, open it.
    window <- openWindow defaultWindow
    let Just win = windowInner window

    -- Perform some intitial OpenGL configurations.
    initGL win

    -- Create default world, set the window.
    tmp <- mkWorldFast
    let world = tmp{
        worldState = (worldState tmp){stateWindow = window}}

    -- Register the function called when the window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)

    -- Make cursor Hidden.
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    -- Begin game loop.
    loop win world
    -- Delete stuff left in OpenGL.
    cleanupWorld world
    cleanupObjects $ worldEntities world
    -- Shutdown when game loop is done.
    shutdown win

    where
        loop :: GLFW.Window -> World t -> IO ()
        loop win world = do
            -- Check if any events have occured.
            GLFW.pollEvents

            -- Perform logic update on the world and render.
            newWorld <- updateStep win world >>=
                    (`renderStep` win)

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            shouldClose <- GLFW.windowShouldClose win
            unless shouldClose $
                loop win newWorld

renderStep :: World t -> GLFW.Window -> IO (World t)
renderStep world _ =
    renderWorldWithPostprocessing world
-}

main :: IO ()
main = do
    -- Initialize GLFW, create a window, open it.
    window <- openWindow defaultWindow
    let Just win = windowInner window

    -- Perform some intitial OpenGL configurations.
    initGL win

    -- Create default world, set the window.
    tmp <- mkWorldFast
    let world = tmp{
        worldState = (worldState tmp){stateWindow = window}}

    -- Register the function called when the window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)

    -- Make cursor Hidden.
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    ds <- depthShader
    fb <- makeShadowFrameBuffer

    -- Begin game loop.
    loop win world fb ds
    -- Delete stuff left in OpenGL.
    cleanupWorld world
    cleanupObjects $ worldEntities world
    -- Shutdown when game loop is done.
    shutdown win

    where
        loop :: GLFW.Window -> World t -> Framebuffer -> GLuint -> IO ()
        loop win world fbuf shader = do
            -- Check if any events have occured.
            GLFW.pollEvents

            -- Perform logic update on the world and render.
            newWorld <- updateStep win world >>=
                    (\w -> renderStep w win fbuf shader)

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            shouldClose <- GLFW.windowShouldClose win
            unless shouldClose $
                loop win newWorld fbuf shader

renderStep :: World t -> GLFW.Window -> Framebuffer -> GLuint -> IO (World t)
renderStep world _ _ _=
    --renderShadow world
    renderWorldWithShadows world

depthShader :: IO GLuint
depthShader = loadProgram "shaders/shadow/shadow.vert" "shaders/shadow/shadow.frag"

updateStep :: GLFW.Window -> World t -> IO (World t)
updateStep win world = do
    let wState = worldState world

    GLFW.setCursorInputMode win $ if statePaused wState
        then GLFW.CursorInputMode'Normal
    else GLFW.CursorInputMode'Disabled

    -- Update the world time and delta.
    worldTime <- getWorldTime
    let delta = realToFrac $ diffUTCTime worldTime (stateTime wState)
        newState = wState{
        stateTime = worldTime, stateDelta = delta}

    -- Update player input
    player <- updatePlayerInput win $ worldPlayer world

    let newW = world{worldPlayer = player, worldState = newState}
        nw = snd $ (player, newW) ~>
            playerUpdate ~>~ worldPlayer ~~ resetPlayerInput ~> setWorldPlayer
    return $ updateWorld nw

updatePlayerInput :: GLFW.Window -> GameObject t -> IO (GameObject t)
updatePlayerInput win player@(Player{}) = do
    let input = playerInput player
    newIn <- updateInput win input
    return $ player{
        playerInput = newIn
    }
updatePlayerInput _ _ =
    error $ "Main.updatePlayerInput can only"
        ++ " be used on Players."

updateInput :: GLFW.Window -> Input t -> IO (Input t)
updateInput win input = do
    --checkForEsc win
    let mousePos = inputLastMousePos input
    newKeys <- loopThrough win $ inputKeys input
    newMousePos <- mouseUpdate win
    return input {
        inputKeys = newKeys,
        inputMouseDelta = newMousePos - mousePos
    }

    where
    loopThrough ::
        GLFW.Window ->
        [(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)] ->
        IO [(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)]
    loopThrough w ((key, desired, lastState, func) : others) = do
        returnedState <- GLFW.getKey w key

        let keyState
                | returnedState == GLFW.KeyState'Released =
                    GLFW.KeyState'Released
                | returnedState == GLFW.KeyState'Pressed &&
                    (lastState == GLFW.KeyState'Pressed ||
                     lastState == GLFW.KeyState'Repeating) =
                    GLFW.KeyState'Repeating
                | otherwise = GLFW.KeyState'Pressed

        let curVal = (key, desired, keyState, func)
        restVal <- loopThrough win others
        return $ curVal : restVal
    loopThrough _ [] = return []

    mouseUpdate :: GLFW.Window -> IO (Vec2 GLfloat)
    mouseUpdate w = do
        (x, y) <- GLFW.getCursorPos w
        return $ Vec2 (realToFrac x) (realToFrac y)
