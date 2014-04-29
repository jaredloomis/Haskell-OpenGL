module Engine.Core.World (
    setWorldPlayer,
    setWorldUniforms, getWorldDelta,
    getWorldTime
) where

import Data.Time (getCurrentTime, UTCTime)

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types
    (World(..), WorldState(..), Graphics(..),
     GameObject(..), Shader(..))
import Engine.Graphics.Shaders (setUniformsAndRemember)

setWorldPlayer :: GameObject t -> World t -> World t
setWorldPlayer player world = world{worldPlayer = player}

-- | Set a world's uniforms to given shader.
setWorldUniforms :: World t -> Shader -> IO Shader
setWorldUniforms world shader =
    setUniformsAndRemember shader $ graphicsUniforms $ worldGraphics world

getWorldDelta :: World t -> GLfloat
getWorldDelta = stateDelta . worldState

-- | Synonym for getCurrentTime.
getWorldTime :: IO UTCTime
getWorldTime = getCurrentTime
