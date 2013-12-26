module GameObject where

import Control.Monad (liftM)
import Data.IORef (IORef, newIORef, readIORef, writeIORef)
import Data.Time.Clock (DiffTime)

import qualified Graphics.Rendering.OpenGL.Raw as GL
import qualified Graphics.UI.GLFW as GLFW

import Math
import Types

-- | Create a default World.
mkWorld :: IO World
mkWorld = do
    worldWithPlayer <- liftM World (newIORef mkPlayer)
    liftM (worldWithPlayer Nothing) (newIORef mkSettings)

-- | Create a default Settings
mkSettings :: Settings
mkSettings = Settings (0, 0)

-- | Create a default Player.
mkPlayer :: GameObject
mkPlayer =
    Player ((0, 0, 0), (0, 0, 0)) baseInput id
    --Player (Camera (0, 0, 0)) ((0, 0, 0), (0, 0, 0)) baseInput
    --                id $ \_ -> return ()

-- | Input for first person camera.
baseInput :: Input
baseInput =  Input [(GLFW.Key'A, False, aIn), (GLFW.Key'D, False, dIn),
                    (GLFW.Key'W, False, wIn), (GLFW.Key'S, False, sIn),
                    (GLFW.Key'LeftShift, False, shiftIn), 
                    (GLFW.Key'Space, False, spaceIn)] (0, 0) (0, 0)

aIn :: GameObject -> GameObject
aIn p = moveFromLook p (1, 0, 0)
dIn :: GameObject -> GameObject 
dIn p = moveFromLook p (-1, 0, 0)
wIn :: GameObject -> GameObject 
wIn p = moveFromLook p (0, 0, -1)
sIn :: GameObject -> GameObject 
sIn p = moveFromLook p (0, 0, 1)

shiftIn :: GameObject -> GameObject
shiftIn p = moveObject p (0, -1, 0)

spaceIn :: GameObject -> GameObject 
spaceIn p = moveObject p (0, 1, 0)

getPos :: GameObject -> Vec3
getPos p@(Player{}) = fst $ playerPosRot p
getPos e@(Entity{}) = fst $ entityPosRot e

getRot :: GameObject -> Vec3
getRot p@(Player{}) = snd $ playerPosRot p
getRot e@(Entity{}) = snd $ entityPosRot e

setPos :: GameObject -> Vec3 -> GameObject
setPos p@(Player{}) pos = p{playerPosRot = (pos, snd $ playerPosRot p)}
setPos e@(Entity{}) pos = e{entityPosRot = (pos, snd $ entityPosRot e)}

setRot :: GameObject -> Vec3 -> GameObject
setRot p@(Player{}) rot = p{playerPosRot = (fst $ playerPosRot p, rot)}
setRot e@(Entity{}) rot = e{entityPosRot = (fst $ entityPosRot e, rot)}

moveWithDelta :: (GameObject -> GameObject) -> GameObject -> DiffTime -> GameObject
moveWithDelta moveFunc object delta =
    let movedObject = moveFunc object
        (startX, startY, startZ) = getPos object
        (endX, endY, endZ) = getPos movedObject
        (rawdx, rawdy, rawdz) = (endX-startX, endY-startY, endZ-startZ)
        gld = realToFrac delta :: GL.GLfloat
        (finalDx, finalDy, finalDz) = (gld*rawdx, gld*rawdy, gld*rawdz)
        finalPos = (startX + finalDx, startY + finalDy, startZ + finalDz)
        
    in setPos movedObject finalPos

moveObject :: GameObject -> Vec3 -> GameObject
moveObject p@(Player{}) (dx, dy, dz) =
    let ((ix, iy, iz), rot) = playerPosRot p
        newPos = (ix + dx, iy + dy, iz + dz)
    in p{playerPosRot = (newPos, rot)}

-- | Takes a Player and a Vec3 of movement
--   and moves player locally based on rotation.
--   Does not use Y direction argument.
moveFromLook :: GameObject -> Vec3 -> GameObject
moveFromLook player moveDirs=
    let rot = snd $ playerPosRot player
        (_, ry, _) = vec3ToFloats rot
        (dx, _, dz) = vec3ToFloats moveDirs

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = 0
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
        
    in moveObject player (realToFrac mx, my, realToFrac mz)

{-
setPos :: GameObject -> Vec3 -> GameObject
setPos p@(Player{}) pos =
    let (_, rot) = playerPosRot p
    in p{playerPosRot = (pos, rot)}
setPos e@(Entity{}) pos =
    let (_, rot) = entityPosRot e
    in e{entityPosRot = (pos, rot)}
-}

updateObject :: GameObject -> GameObject
updateObject p@(Player{}) = playerUpdate p p
updateObject e@(Entity{}) = entityUpdate e e

-- | Call updateObject on all objects  in array,
--   modifying each IORef to the returned value.
updateObjectRefs :: [IORef GameObject] -> IO ()
updateObjectRefs (x:xs) = do
    object <- readIORef x
    writeIORef x (updateObject object)
    updateObjectRefs xs
updateObjectRefs [] = return ()
