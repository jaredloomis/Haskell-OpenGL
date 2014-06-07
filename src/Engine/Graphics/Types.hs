{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Graphics.Types where

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, GLint)

import Foreign (Ptr, Word8)

import Engine.Core.Vec
import Engine.Matrix.Types

-- | The type used to contain global values relating to
--   graphics / shaders.
data Graphics t = Graphics {
    graphicsUniforms :: [ShaderUniform],
    graphicsPostProcessors :: (Framebuffer, [GLuint]),
    graphicsShadowInfo :: (Framebuffer, GLuint)
}

emptyGraphics :: Graphics t
emptyGraphics = Graphics [] (undefined, []) (undefined, 0)

data RenderInfo = RenderInfo {
    renderInfoShader :: Shader,
    renderInfoMatrices :: WorldMatrices
} deriving (Show)

emptyInfo :: RenderInfo
emptyInfo = RenderInfo emptyShader emptyMatrices


-- | All OpenGL handles for a Framebuffer and
--   Renderbuffer.
data Framebuffer = FB {
    fbufName :: GLuint,
    fbufTexture :: GLuint,
    fbufDimensions :: (GLint, GLint),
    fbufVBO :: GLuint,
    fbufRenderBuffer :: GLuint
} deriving (Show)

-- | An OpenGL program id and some uniform
--   ids so that glUniform* doesn't have to be
--   called more than once.
data Shader = Shader {
    shaderId :: GLuint,
    shaderUniforms :: [(String, GLint)]
} deriving (Show)

emptyShader :: Shader
emptyShader = Shader (-1) []

-- | Attrib id, Buffer id, size of attrib.
type ShaderAttrib = Vec3 GLuint

-- | Name, Values
type ShaderUniform = (String, IO [GLfloat])

data Image = Image (GLint, GLint) (Ptr Word8)
    deriving (Show)

type Texture = (GLuint, GLint)

class Renderable t g where
    renderBind :: t -> g -> IO g
    renderBind _ = return
    renderDraw :: t -> g -> IO g
    renderDraw _ = return
    renderCleanup :: t -> g -> IO g
    renderCleanup _ = return
    defaultGlobal :: t -> g
