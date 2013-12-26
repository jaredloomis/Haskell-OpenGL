module Window where

import qualified Graphics.UI.GLFW as GLFW

createGLFWWindow :: Int -> Int -> IO GLFW.Window
createGLFWWindow width height = do
    Just win <- GLFW.createWindow width height "GLFW + Haskell" Nothing Nothing
    GLFW.setWindowPos win 100 50
    GLFW.makeContextCurrent (Just win)
    return win
