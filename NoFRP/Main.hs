module Main where
import Framework
import Display

import Control.Monad
import Data.IORef

import Graphics.Rendering.OpenGL as GL
import Graphics.UI.GLUT as GLUT hiding (renderObject)

allPoints :: [(GLfloat, GLfloat)]
allPoints = [(0, 0), (1, 0), (0, 1)]

mainPlayer = Player (0, 0) (renderTriangles allPoints) (Input [(Char 'a', False)])

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

    worldObjects <- newIORef [mainPlayer]

    -- Set displayCallback
    GLUT.displayCallback $= display worldObjects
    -- Set input callback function
    keyboardMouseCallback $= Just inputCallback
    -- Set callback for when the window is resized
    reshapeCallback $= Just reshape

    -- Begin GLUT main loop
    GLUT.mainLoop

display :: GameObject a => IORef [a] -> GLUT.DisplayCallback
display xsRef = do
    -- Update objects
    updateObjects xsRef

    -- Clear screen
    GLUT.clear [GLUT.ColorBuffer]
    -- Reset transformations
    loadIdentity

    -- Render
    --GLUT.preservingMatrix renderScene
    renderObjectsIO xsRef

    -- Refresh screen
    GLUT.swapBuffers
    -- Tell GL to start next frame
    postRedisplay Nothing

updateObjects :: (GameObject a) => IORef [a] -> IO ()
updateObjects xsRef = do
    xs <- readIORef xsRef
    xsRef $= updateUnwrapped xs
    where
        updateUnwrapped :: (GameObject a) => [a] -> [a]
        updateUnwrapped (x:xs) = [update x] ++ updateUnwrapped xs

        updateUnwrapped [] = []

renderScene :: IO ()
renderScene = do
    renderPrimitive Triangles $ do
        mapM_ (\(x, y) -> vertex $ Vertex3 x y 0) allPoints

inputCallback :: KeyboardMouseCallback
inputCallback key action _ _ = return ()

reshape :: Size -> IO ()
reshape s = do
    GL.viewport $= (Position 0 0, s)
