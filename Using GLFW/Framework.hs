module Framework where

import qualified Graphics.UI.GLFW as GLFW
-- everything from here starts with gl or GL
import qualified Graphics.Rendering.OpenGL.Raw as GL
import Control.Monad (liftM)
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

type Vec2 = (GL.GLfloat, GL.GLfloat)
type Vec3 = (GL.GLfloat, GL.GLfloat, GL.GLfloat)

-- | Position, Color
type Vertex = (Vec3, Vec3)

-- | Position, Rotation
type PosRot = (Vec3, Vec3)

data World = World {
    worldPlayer :: IORef GameObject,
    worldEntities :: Maybe [IORef GameObject]
}

-- TODO: Possibly supply World to GameObject for
--       update function.
data GameObject = Player {
    playerCamera :: Camera,
    playerPosRot :: PosRot,
    playerInput :: Input,
    playerUpdate :: GameObject -> GameObject,
    playerRender :: GameObject -> IO ()
} | Entity {
    entityPosRot :: PosRot,
    entityUpdate :: GameObject -> GameObject,
    entityRender :: GameObject -> IO ()
}

data Camera = Camera {
    camPos :: Vec3
}

data Input = Input {
    inputKeys :: [(GLFW.Key, Bool, GameObject -> GameObject)],
    inputMouseDelta :: Vec2,
    inputLastMousePos :: Vec2
}

mkWorld :: IO World
mkWorld = do
    x <- liftM World (newIORef mkPlayer)
    return $ x Nothing

mkPlayer :: GameObject
mkPlayer =
    Player (Camera (0, 0, 0)) ((0, 0, 0), (0, 0, 0)) baseInput
                    id $ \_ -> return ()

baseInput :: Input
baseInput =  Input [(GLFW.Key'A, False, aIn), (GLFW.Key'D, False, dIn),
                    (GLFW.Key'W, False, wIn), (GLFW.Key'S, False, sIn),
                    (GLFW.Key'LeftShift, False, shiftIn), 
                    (GLFW.Key'Space, False, spaceIn)] (0, 0) (0, 0)

aIn :: GameObject -> GameObject
aIn p = moveFromLook p (0.001, 0, 0)
dIn :: GameObject -> GameObject 
dIn p = moveFromLook p (-0.001, 0, 0)
wIn :: GameObject -> GameObject
wIn p = moveFromLook p (0, 0, -0.001)
sIn :: GameObject -> GameObject
sIn p = moveFromLook p (0, 0, 0.001)

shiftIn :: GameObject -> GameObject
shiftIn p = moveObject p (0, -0.001, 0)

spaceIn :: GameObject -> GameObject
spaceIn p = moveObject p (0, 0.001, 0)

moveFromLook :: GameObject -> Vec3 -> GameObject
moveFromLook player moveDirs =
    let rot = snd $ playerPosRot player
        (_, ry, _) = vec3ToFloats rot
        (dx, _, dz) = vec3ToFloats moveDirs

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = 0
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
        
    in moveObject player (realToFrac mx, my, realToFrac mz)

toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

sinDeg :: Float -> Float
sinDeg = sin . toRadians
cosDeg :: Float -> Float
cosDeg = cos . toRadians

add3 :: Num t => (t, t, t) -> (t, t, t) -> (t, t, t)
add3 (x, y, z) (x2, y2, z2) = (x+x2, y+y2, z+z2)

vec3ToFloats :: Vec3 -> (Float, Float, Float)
vec3ToFloats (x, y, z) = (realToFrac x, realToFrac y, realToFrac z)

moveObject :: GameObject -> Vec3 -> GameObject
moveObject p@(Player{}) (dx, dy, dz) =
    let ((ix, iy, iz), rot) = playerPosRot p
        newPos = (ix + dx, iy + dy, iz + dz)
    in p{playerPosRot = (newPos, rot)}

setPos :: GameObject -> Vec3 -> GameObject
setPos p@(Player{}) pos =
    let (_, rot) = playerPosRot p
    in p{playerPosRot = (pos, rot)}
setPos e@(Entity{}) pos =
    let (_, rot) = entityPosRot e
    in e{entityPosRot = (pos, rot)}

-- | Apply translations locally by first applying
--   rotation and then applying translations without
--   calling glLoadIdentity.
localTranslate :: GameObject -> IO ()
localTranslate p@(Player{}) = do
     -- Rotate Entity.
    let (xrp, yrp, zrp) = snd $ playerPosRot p
    GL.glRotatef xrp 1 0 0
    GL.glRotatef yrp 0 1 0
    GL.glRotatef zrp 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ playerPosRot p
    GL.glTranslatef x y z
localTranslate e@(Entity{}) = do
     -- Rotate Entity.
    let (xre, yre, zre) = snd $ entityPosRot e
    GL.glRotatef xre 1 0 0
    GL.glRotatef yre 0 1 0
    GL.glRotatef zre 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ entityPosRot e
    GL.glTranslatef x y z

-- | Apply translations globally by first translating
--   and then rotating. Player's translations are done
--   after negating the values.
globalTranslate :: GameObject -> IO ()
globalTranslate p@(Player{}) = do
     -- Rotate Entity.
    let (xr, yr, zr) = snd $ playerPosRot p
    GL.glRotatef xr 1 0 0
    GL.glRotatef yr 0 1 0
    GL.glRotatef zr 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ playerPosRot p
    GL.glTranslatef (-x) (-y) (-z)
globalTranslate e@(Entity{}) = do
    -- Move Entity.
    let (x, y, z) = fst $ entityPosRot e
    GL.glTranslatef x y z
 
     -- Rotate Entity.
    let (xr, yr, zr) = snd $ entityPosRot e
    GL.glRotatef xr 1 0 0
    GL.glRotatef yr 0 1 0
    GL.glRotatef zr 0 0 1

updateObject :: GameObject -> GameObject
updateObject p@(Player{}) = playerUpdate p p
updateObject e@(Entity{}) = entityUpdate e e

updateObjects :: [IORef GameObject] -> IO ()
updateObjects (x:xs) = do
    object <- readIORef x
    writeIORef x (updateObject object)
    updateObjects xs
updateObjects [] = return ()
