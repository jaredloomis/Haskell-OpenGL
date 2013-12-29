module Types where

import Data.IORef (IORef)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

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

{-
data Model = Model {
    modelVertices, modelNormals, modelColors :: GL.BufferObject,
    modelVerticesCount :: GLint,
    modelShaders :: Shaders
}
-}
data Model = Model {
    --modelShader :: GL.Program,
    modelShader :: GLuint,
    --modelAttribLocs :: [GL.AttribLocation],
    modelAttribLocs :: [GLuint],
    modelBuffers :: [GL.BufferObject],
    bufferIds :: [GLuint],
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
    worldEntities :: [IORef Object]
}
