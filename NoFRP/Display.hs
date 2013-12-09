module Display where
import Framework
import Data.IORef
import Graphics.Rendering.OpenGL as GL
--import Graphics.UI.GLUT as GLUT hiding (renderObject)


renderObjects :: (GameObject a) => [a] -> IO ()
renderObjects (x:xs) = do
    --GL.preservingMatrix $ do
    loadIdentity
    translate $ Vector3 (fst $ getPos x) (snd $ getPos x) 0
    renderObject x
    renderObjects xs
renderObjects [] = return ()

renderObjectsIO :: (GameObject a) => IORef [a] -> IO ()
renderObjectsIO xsRef = do
    xs <- readIORef xsRef
    renderObjects xs

renderTriangles :: [(GLfloat, GLfloat)] -> IO ()
renderTriangles xs =
    GL.renderPrimitive GL.Triangles $
        mapM_ (\(x, y) -> GL.vertex $ GL.Vertex3 x y 0) xs
