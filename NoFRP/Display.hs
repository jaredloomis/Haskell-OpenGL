module Display where
import Framework
import Data.IORef
import Graphics.Rendering.OpenGL as GL
--import Graphics.UI.GLUT as GLUT hiding (renderObject)

renderConObject :: ConObject -> IO ()
renderConObject co = do
    let cPlayer = conObjectPlayer co
        player = conPlayerPlayer cPlayer
        cEntity = conObjectEntity co
        entities = conEntityEntities cEntity
  
    renderObjects (player:entities)

renderObjects :: [GameObject] -> IO ()
renderObjects (x:xs) = do
    --GL.preservingMatrix $ do
    loadIdentity
    translate $ Vector3 (fst $ getPos x) (snd $ getPos x) 0
    renderObject x
    renderObjects xs
renderObjects [] = return ()

renderObjectsIO :: IORef [GameObject] -> IO ()
renderObjectsIO xsRef = do
    xs <- readIORef xsRef
    renderObjects xs

renderTriangles :: [(GLfloat, GLfloat)] -> IO ()
renderTriangles xs =
    GL.renderPrimitive GL.Triangles $
        mapM_ (\(x, y) -> GL.vertex $ GL.Vertex3 x y 0) xs
