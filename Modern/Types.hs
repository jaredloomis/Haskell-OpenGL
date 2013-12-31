module Types where

import Data.IORef (IORef)
import Data.Word (Word8)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint, GLint)

type Vec2 = (GLfloat, GLfloat)
type Vec3 = (GLfloat, GLfloat, GLfloat)

data Object = Player {
    playerPosition :: Vec3,
    playerRotation :: Vec3,
    playerUpdate :: Object -> Object,
    playerInput :: Input
} | Entity {
    entityPosition :: Vec3,
    entityModel :: Model
}

data Model = Model {
    modelShader :: GLuint,
    modelShaderVars :: [ShaderAttrib],
    modelTextures :: [GL.TextureObject],
    modelVertCount :: GLint
}

data Input = Input {
    inputKeys :: [(GLFW.Key, Bool, Object -> Object)],
    inputMouseDelta :: Vec2,
    inputLastMousePos :: Vec2
}

data Shaders = Shaders {
    shadersProgram :: GL.Program,
    shadersVertices :: GL.AttribLocation,
    shadersNormals :: GL.AttribLocation,
    shadersColors :: GL.AttribLocation
}

data World = World {
    worldPlayer :: IORef Object,
    worldEntities :: [IORef Object],
    worldAttribNames :: [String],
    worldBufferIds :: [GLuint],
    worldUniforms :: [ShaderUniform]
}

data Image = Image GL.Size (GL.PixelData Word8)

-- | Attrib id, Buffer id, size of attrib.
type ShaderAttrib = (GLuint, GLuint, GLuint)

-- | Name, Number of Floats, Values
type ShaderUniform = (String, GLuint, [GLfloat])
