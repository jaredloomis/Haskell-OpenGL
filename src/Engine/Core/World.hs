module Engine.Core.World (
    setWorldPlayer,
    getWorldDelta,
    getWorldTime
) where

import Data.Time (getCurrentTime, utctDayTime)
import Control.Applicative ((<$>))

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types
    (World(..), WorldState(..), Graphics(..),
     Player(..))
import Engine.Graphics.Shaders (Shader(..), setUniformsAndRemember)

setWorldPlayer :: Player t -> World t -> World t
setWorldPlayer player world = world{worldPlayer = player}

{-
-- | Set a world's uniforms to given shader.
setWorldUniforms :: World t -> Shader -> IO Shader
setWorldUniforms world shader =
    setUniformsAndRemember shader $ graphicsUniforms $ worldGraphics world
-}

getWorldDelta :: World t -> GLfloat
getWorldDelta = stateDelta . worldState

-- | Call "Data.Time.getCurrentTime", convert to fractional.
getWorldTime :: Fractional a => IO a
getWorldTime = realToFrac . utctDayTime <$> getCurrentTime
