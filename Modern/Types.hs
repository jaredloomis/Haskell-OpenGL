module Types where

import Data.IORef (IORef)
import Data.Word (Word8)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint, GLint)

--type Vec2 = (GLfloat, GLfloat)
--type Vec3 = (GLfloat, GLfloat, GLfloat)
type Vec3 a = (a, a, a)
type Vec2 a = (a, a)

data Object = Player {
    playerPosition :: Vec3 GLfloat,
    playerRotation :: Vec3 GLfloat,
    playerUpdate :: Object -> Object,
    playerInput :: Input
} | Entity {
    entityPosition :: Vec3 GLfloat,
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
    inputMouseDelta :: Vec2 GLfloat,
    inputLastMousePos :: Vec2 GLfloat
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
type ShaderAttrib = Vec3 GLuint

-- | Name, Number of Floats, Values
type ShaderUniform = (String, GLuint, [GLfloat])
