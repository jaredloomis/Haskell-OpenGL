module Engine.Core.World where

import Data.IORef (IORef)
import Control.Monad (liftM)

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLuint)
import Graphics.Rendering.OpenGL (Size(..), ($=))

import Engine.Object.GameObject
import Engine.Graphics.Shaders
import Engine.Graphics.Textures

data World = World {
    worldPlayer :: !(IORef GameObject),
    worldEntities :: ![IORef GameObject],
    worldUniforms :: ![ShaderUniform],
    worldState :: !(IORef WorldState)
}

data WorldState = WorldState {
    stateTextureCount :: !GLuint
}

-- | Bind a world's uniforms to given shader.
bindWorldUniforms :: World -> GLuint -> IO ()
bindWorldUniforms world shader =
    bindUniforms shader $ worldUniforms world

loadGLTextureSafe :: WorldState -> FilePath -> IO GL.TextureObject
loadGLTextureSafe wState file = do
    (Image (Size w h) pd) <- juicyLoadImage file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy (fromIntegral $ stateTextureCount wState) GL.RGB' (GL.TextureSize2D w h) 0 pd
    return texName
