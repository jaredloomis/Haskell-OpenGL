module Engine.Core.World where

import Data.IORef (IORef)
import Control.Monad (liftM)
import Data.Time (getCurrentTime, UTCTime)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat)
import Graphics.Rendering.OpenGL (Size(..), ($=))

import Engine.Graphics.Shaders
import Engine.Graphics.Textures
import Engine.Core.Vec
import Engine.Model.Model
import Engine.Model.AABB

data World t = World {
    worldPlayer :: !(IORef (GameObject t)),
    worldEntities :: ![IORef (GameObject t)],
    worldUniforms :: ![ShaderUniform],
    worldState :: !(IORef WorldState)
}

data WorldState = WorldState {
    stateTextureCount :: !GLuint,
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat
}

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

data GameObject t = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerVelocity :: !(Vec3 GLfloat),
    playerSpeed :: !GLfloat,
    playerUpdate :: World t -> IO (GameObject t),
    playerInput :: !(Input t)
} | PureEntity {
    pentityPosition :: !(Vec3 GLfloat),
    pentityUpdate :: !(GameObject t -> GameObject t),
    pentityModel :: !Model,
    pentityAttribute :: !t
} | EffectfulEntity {
    eentityPosition :: !(Vec3 GLfloat),
    eentityUpdate :: World t -> GameObject t -> IO (GameObject t),
    eentityModel :: !Model,
    eentityAttribute :: !t
}

data Input t = Input {
    inputKeys :: ![(GLFW.Key, Bool, World t -> GameObject t -> IO (GameObject t))],
    inputMouseDelta :: !(Vec2 GLfloat),
    inputLastMousePos :: !(Vec2 GLfloat),
    inputMouseSpeed :: !GLfloat
}

-- | Bind a world's uniforms to given shader.
bindWorldUniforms :: World t -> GLuint -> IO ()
bindWorldUniforms world shader =
    bindUniforms shader $ worldUniforms world

loadWorldTexture :: WorldState -> FilePath -> IO GL.TextureObject
loadWorldTexture wState file = do
    (Image (Size w h) pd) <- juicyLoadImage file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy
        (fromIntegral $ stateTextureCount wState)
        GL.RGB' (GL.TextureSize2D w h) 0 pd
    return texName

-- | Synonym for getCurrentTime.
getWorldTime :: IO UTCTime
getWorldTime = getCurrentTime
