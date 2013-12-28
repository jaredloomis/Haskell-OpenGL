module Main where

import Data.IORef (IORef, newIORef, readIORef, writeIORef)
--import Control.Monad (when)
import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))

import qualified Graphics.UI.GLFW as GLFW

import qualified Graphics.Rendering.OpenGL as GL
--import qualified Graphics.Rendering.GLU.Raw as GLU

--import Graphics.Rendering.OpenGL (($=))
import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.GLUtil as GU

import Types
import Util
import Graphics
import Player
import TestVals
import Object

main :: IO ()
main = do
    win <- createGLFWWindow 800 600
    initGL win
    object <- mkObj >>= newIORef
    player <- newIORef mkPlayer
    let world = World player [object]

    GLFW.setKeyCallback win (Just $ keyPressed (worldPlayer world))
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    GLFW.setCursorPosCallback win (Just $ cursorMove player)

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    loop win world
    shutdown win
    
    where
        loop win world = do
            GL.clear [GL.ColorBuffer, GL.DepthBuffer]
            GLFW.pollEvents
            updateWorld world
            renderWorld world
            GLFW.swapBuffers win
            loop win world

renderWorld :: World -> IO ()
renderWorld world = do
    glLoadIdentity
    -- Apply player's transformations.
    readIORef (worldPlayer world) >>= applyTransformations

    -- Render all entities.
    renderObjectsVerts (worldEntities world)

updateWorld :: World -> IO ()
updateWorld world = do
    let playerRef = worldPlayer world
    player <- readIORef playerRef

    putStr "Position: "
    print $ playerPosition player

    putStr "Rotation: "
    print $ playerRotation player

    -- Update Player and Set mouse delta movement to 0
    let tmpPlayer = updateObject player
        pin = (playerInput tmpPlayer){inputMouseDelta = (0, 0)}
        newPlayer = tmpPlayer{playerInput = pin}

    writeIORef playerRef newPlayer

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3)
        <$> GU.makeBuffer GL.ArrayBuffer vertexBufferData
        <*> GU.makeBuffer GL.ElementArrayBuffer [0..3 :: GLuint]
        <*> createShaders
                ("shaders" </> "hello-gl.vert")
                ("shaders" </> "hello-gl.frag")
                "position"
                "normal"

---------------
-- CALLBACKS --
---------------

cursorMove :: IORef Object -> GLFW.CursorPosCallback
cursorMove playerRef _ x y = do
    player <- (readIORef playerRef)
    let input = playerInput player

    let (xi, yi) = inputLastMousePos input
    let newInput = input{inputMouseDelta = (realToFrac x - xi, realToFrac y - yi)}
    writeIORef playerRef player{playerInput = newInput}

keyPressed :: IORef Object -> GLFW.KeyCallback
keyPressed _ win GLFW.Key'Escape _ GLFW.KeyState'Pressed _ = do
    currentCursorMode <- GLFW.getCursorInputMode win
    if currentCursorMode == GLFW.CursorInputMode'Disabled
        then GLFW.setCursorInputMode win GLFW.CursorInputMode'Normal
    else GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

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
                    else w) $ keyMap) mouse lm
            in newIn
