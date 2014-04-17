{-# OPTIONS_GHC -O2 #-}
module Main where

import Data.Time (diffUTCTime)
import Control.Monad.State (unless, evalState)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types
    (World(..), WorldState(..), Game(..),
     GameObject(..), Input(..))
import Engine.Graphics.Graphics
    (initGL, resizeScene, cleanupWorld,
     cleanupObjects)
import Engine.Core.Vec (Vec2(..))
import Engine.Graphics.Window
    (Window(..), defaultWindow,
     openWindow, shutdown)
import Engine.Core.World (getWorldTime, setWorldPlayer)
import Engine.Object.Player (resetPlayerInput)
import Engine.Object.GameObject (updateWorld)
import Engine.Graphics.NewGraphics (renderWorldNewPost)
import TestVals (mkWorldFast)

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
            newWorld <- updateStepComplete win world >>=
                    (`renderStep` win)

            --glGetError >>= \err ->
            --  if err /= gl_NO_ERROR then print err else return ()

            -- Swap back and front buffer.
            GLFW.swapBuffers win

            shouldClose <- GLFW.windowShouldClose win
            unless shouldClose $
                loop win newWorld

renderStep :: World t -> GLFW.Window -> IO (World t)
renderStep world _ =
    renderWorldNewPost world
    --renderWorldWithPostprocessing world
    --renderWorldNew world
    --renderWorldMat world
    --renderWorldWithShadows world

updateStepComplete :: GLFW.Window -> World t -> IO (World t)
updateStepComplete win world = do
    let wState = worldState world

    -- Set cursor as hidden or visible.
    GLFW.setCursorInputMode win $ if statePaused wState
        then GLFW.CursorInputMode'Normal
    else GLFW.CursorInputMode'Disabled

    -- Update the world time and delta.
    worldTime <- getWorldTime
    let delta = realToFrac $ diffUTCTime worldTime (stateTime wState)
        newState = wState{
            stateTime = worldTime, stateDelta = delta}

    -- Update player input.
    player <- updatePlayerInput win $ worldPlayer world

    -- Update player
    let worldWithPlayer = world{worldPlayer = player, worldState = newState}
        updatedWorld = evalState (gameState $ playerUpdate player) worldWithPlayer
        updatedWorldWithUpdatedPlayer =
            setWorldPlayer (resetPlayerInput $ worldPlayer updatedWorld) updatedWorld

    -- Update the rest of the world.
    return $ evalState (gameState updateWorld) updatedWorldWithUpdatedPlayer

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
