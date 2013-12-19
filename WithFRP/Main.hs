--{-# LANGUAGE RecursiveDo #-}
module Main where
import Prelude hiding (until)
-- import Control.Monad
-- import Data.IORef
-- import Control.Applicative

-- import qualified FRP.Elerea.Simple as ES
import qualified Graphics.Rendering.OpenGL as GL

import qualified Graphics.UI.GLUT as GLUT hiding (renderObject)
import Graphics.Rendering.OpenGL (($=))

allPoints :: [(GL.GLfloat, GL.GLfloat)]
allPoints = [(0, 0), (0.3, 0), (0, 0.3), (0.3, 0), (0.3, 0.3), (0, 0.3)]

main :: IO ()
main = do
    -- Set initialWindowSize
    GLUT.initialWindowSize $= GLUT.Size 500 500
    -- Enable double buffering
    GLUT.initialDisplayMode $= [GLUT.DoubleBuffered]

    -- Init GLUT
    (progName, args) <- GLUT.getArgsAndInitialize
    -- Create window
    window <- GLUT.createWindow "Hello World"

    -- Set displayCallback
    GLUT.displayCallback $= display
    -- Set input callback function
    GLUT.keyboardMouseCallback $= Just inputCallback
    -- Set callback for when the window is resized
    GLUT.reshapeCallback $= Just reshape

    -- Begin GLUT main loop
    GLUT.mainLoop

display :: GLUT.DisplayCallback
display = do
    GLUT.clear [GLUT.ColorBuffer]
    -- Reset transformations
    GLUT.loadIdentity

    renderTriangles allPoints

    -- Refresh screen (bring back buffer to front.)
    GLUT.swapBuffers
    -- Tell GL to start next frame. Remove/Fix?
    GLUT.postRedisplay Nothing

reshape :: GL.Size -> IO ()
reshape s = 
    GL.viewport $= (GL.Position 0 0, s)

inputCallback :: GLUT.KeyboardMouseCallback
inputCallback key action _ _ = return ()

renderTriangles :: [(GL.GLfloat, GL.GLfloat)] -> IO ()
renderTriangles xs =
    GL.renderPrimitive GL.Triangles $
        mapM_ (\(x, y) -> GL.vertex $ GL.Vertex3 x y 0) xs
