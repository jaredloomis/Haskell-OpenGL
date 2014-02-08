module Engine.Graphics.Window where

import System.Exit (exitSuccess)

import qualified Graphics.UI.GLFW as GLFW

createGLFWWindow :: Int -> Int -> IO GLFW.Window
createGLFWWindow width height = do
    _ <- GLFW.init

    -- Window Hints
    GLFW.windowHint $ GLFW.WindowHint'RefreshRate 60
    GLFW.windowHint $ GLFW.WindowHint'Samples 16
    --GLFW.windowHint $ GLFW.WindowHint'OpenGLDebugContext True

    Just win <- GLFW.createWindow width height "GLFW + Haskell" Nothing Nothing
    GLFW.setWindowPos win 100 50
    GLFW.makeContextCurrent (Just win)
    
    -- Enable VSync
    GLFW.swapInterval 1

    GLFW.setWindowCloseCallback win (Just shutdown)

    return win

shutdown :: GLFW.WindowCloseCallback
shutdown win = do
    GLFW.destroyWindow win
    GLFW.terminate
    _ <- exitSuccess
    return ()
