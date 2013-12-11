module Display where
import Data.IORef

import qualified Graphics.Rendering.OpenGL as GL

import Framework

renderConObject :: ConObject -> IO ()
renderConObject co = do
    let cPlayer = conObjectPlayer co
        player = conPlayerPlayer cPlayer
        cEntity = conObjectEntity co
        entities = conEntityEntities cEntity
  
    renderObjects (player:entities)

renderObject :: GameObject -> IO ()
renderObject player@(Player{}) = playerDisplay player
renderObject entity@(Entity{}) = entityDisplay entity

renderObjects :: [GameObject] -> IO ()
renderObjects (x:xs) = do
    --GL.preservingMatrix $ do
    GL.loadIdentity
    GL.translate $ GL.Vector3 (fst $ getPos x) (snd $ getPos x) 0
    renderObject x
    renderObjects xs
renderObjects [] = return ()

renderTriangles :: [(GL.GLfloat, GL.GLfloat)] -> IO ()
renderTriangles xs =
    GL.renderPrimitive GL.Triangles $
        mapM_ (\(x, y) -> GL.vertex $ GL.Vertex3 x y 0) xs
