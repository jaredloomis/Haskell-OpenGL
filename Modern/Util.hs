module Util where

import System.Exit (exitSuccess)

import qualified Graphics.UI.GLFW as GLFW

import Types

--------------------
-- MATH FUNCTIONS --
--------------------

toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

sinDeg :: Float -> Float
sinDeg = sin . toRadians
cosDeg :: Float -> Float
cosDeg = cos . toRadians

vec3ToFloats :: Vec3 -> (Float, Float, Float)
vec3ToFloats (x, y, z) = (realToFrac x, realToFrac y, realToFrac z)

----------------------
-- WINDOW FUNCTIONS --
----------------------

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
