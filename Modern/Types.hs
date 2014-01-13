module Types where

import Data.IORef (IORef)
import Data.Word (Word8)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint, GLint)

type Vec3 a = (a, a, a)
type Vec2 a = (a, a)

data GameObject = Player {
    playerPosition :: Vec3 GLfloat,
    playerRotation :: Vec3 GLfloat,
    playerUpdate :: GameObject -> GameObject,
    playerInput :: Input
} | Entity {
    entityPosition :: Vec3 GLfloat,
    entityModel :: Model
}

data Model = Model {
    modelShader :: GLuint,
    modelShaderVars :: [ShaderAttrib],
    modelTextures :: [Texture],
    modelVertCount :: GLint
}

data Input = Input {
    inputKeys :: [(GLFW.Key, Bool,GameObject -> GameObject)],
    inputMouseDelta :: Vec2 GLfloat,
    inputLastMousePos :: Vec2 GLfloat
}

data World = World {
    worldPlayer :: IORef GameObject,
    worldEntities :: [IORef GameObject],
    worldUniforms :: [ShaderUniform],
    worldState :: IORef WorldState
}

data WorldState = WorldState {
    stateTextureCount :: GLuint
}

data Image = Image GL.Size (GL.PixelData Word8) deriving (Show)

type Texture = (GL.TextureObject, GLint)

-- | Attrib id, Buffer id, size of attrib.
type ShaderAttrib = Vec3 GLuint

-- | Name, Values
type ShaderUniform = (String, [GLfloat])
