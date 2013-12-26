module Types where

import Data.IORef (IORef)
import Data.Time.Clock (DiffTime)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL.Raw as GL

type Vec2 = (GL.GLfloat, GL.GLfloat)
type Vec3 = (GL.GLfloat, GL.GLfloat, GL.GLfloat)

-- | Position, Color
type Vertex = (Vec3, Vec3)

-- | Position, Rotation
type PosRot = (Vec3, Vec3)

data World = World {
    worldPlayer :: IORef GameObject,
    worldEntities :: Maybe [IORef GameObject],
    worldSettings :: IORef Settings
}

data GameObject = Player {
    playerPosRot :: PosRot,
    playerInput :: Input,
    playerUpdate :: GameObject -> GameObject
} | Entity {
    entityPosRot :: PosRot,
    entityUpdate :: GameObject -> GameObject,
    entityRender :: GameObject -> IO ()
}

data Settings = Settings {
    -- (Delta Time, Last Time)
    settingsTime :: (DiffTime, DiffTime)
}

-- TODO: add this to GameObjects?
data DrawInfo = DrawInfo {
    drawAction :: [Vec3] -> IO (),
    drawableVertices :: [Vec3]
}

data Input = Input {
    inputKeys :: [(GLFW.Key, Bool, GameObject -> GameObject)],
    inputMouseDelta :: Vec2,
    inputLastMousePos :: Vec2
}
