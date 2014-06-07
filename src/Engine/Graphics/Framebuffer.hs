module Engine.Graphics.Framebuffer (
    Framebuffer(..), mkScreenFramebuffer
) where

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw
    (GLuint, GLint)

-- | All OpenGL handles for a Framebuffer and
--   Renderbuffer.
data Framebuffer = Framebuffer {
    fbufName :: GLuint,
    fbufTexture :: GLuint,
    fbufDimensions :: (GLint, GLint),
    fbufVBO :: GLuint,
    fbufRenderBuffer :: GLuint
} deriving (Show, Eq)
mkScreenFramebuffer :: GLFW.Window -> IO Framebuffer
mkScreenFramebuffer win = do
    (w, h) <- GLFW.getFramebufferSize win
    return $ Framebuffer 0 0 (fromIntegral w, fromIntegral h) 0 0
