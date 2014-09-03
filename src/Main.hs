{-# LANGUAGE DataKinds #-}
module Main where

import           Control.Monad.State (unless, execStateT)
import           Data.Vec ((:.)(..), Vec2)

import qualified Graphics.UI.GLFW as GLFW
import           Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types (
    World(..), WorldState(..),
    Input(..), Player(..), GameIO(..),
    worldEntities, gameIoState)

import           Engine.Core.World (getWorldTime, setWorldPlayer)
import           Engine.Object.Player (resetPlayerInput)
import           Engine.Core.WorldCreator (createWorld, defaultSettings)
import Engine.Graphics.Primitive (FBO(..), stepUniverse,
                                  updateUniverseGlobal)

main :: IO ()
main = do
    -- Create default world.
    world <- createWorld defaultSettings

    let win = stateWindow $ worldState world

    -- Make cursor Hidden.
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    --fbo <- makeFramebuffer (800, 600)
    let fbo = undefined

    loop win fbo world
  where
    loop win fbo world = do
        world' <- updateStepComplete win fbo world
        shouldClose <- GLFW.windowShouldClose win
        unless shouldClose $
           loop win fbo world'

updateStepComplete :: GLFW.Window -> FBO -> World t -> IO (World t)
updateStepComplete win _fbo world = do
    let wState = worldState world

    -- Set cursor as hidden or visible.
    GLFW.setCursorInputMode win $ if statePaused wState
        then GLFW.CursorInputMode'Normal
    else GLFW.CursorInputMode'Disabled

    -- Update the world time and delta.
    worldTime <- getWorldTime
    let delta = worldTime - stateTime wState
        newState = wState{
            stateTime = worldTime, stateDelta = delta}

    -- Update player input.
    player <- updatePlayerInput win $ worldPlayer world

    --print $ playerRotation player
    --putStrLn $ "pos: " ++ show (playerPosition player)

    -- Update player
    let worldWithPlayer = world{worldPlayer = player, worldState = newState}
    updatedWorld <-
            execStateT (gameIoState $ playerUpdate player) worldWithPlayer
    let updatedWorldWithUpdatedPlayer =
            setWorldPlayer (resetPlayerInput $ worldPlayer updatedWorld)
                            updatedWorld

    let universe = updateUniverseGlobal
            (map (\x -> (updatedWorldWithUpdatedPlayer, x)) $
                worldEntities updatedWorldWithUpdatedPlayer)
            $ worldShaderUniverse updatedWorldWithUpdatedPlayer
    universe' <- stepUniverse win universe

    -- Update the rest of the world.
    return $ updatedWorldWithUpdatedPlayer{
        worldShaderUniverse = universe'
        }

updatePlayerInput :: GLFW.Window -> Player t -> IO (Player t)
updatePlayerInput win player = do
    let input = playerInput player
    newIn <- updateInput win input
    return $ player{
        playerInput = newIn
    }

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
        return $ realToFrac x :. realToFrac y
