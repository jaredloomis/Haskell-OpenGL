module Window where

import System.Exit (exitSuccess)

import qualified Graphics.UI.GLFW as GLFW

createGLFWWindow :: Int -> Int -> IO GLFW.Window
createGLFWWindow width height = do
    GLFW.init
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
