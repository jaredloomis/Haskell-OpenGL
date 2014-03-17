module Engine.Core.World (
    setWorldPlayer, playerAABB, (~>~), (~>~>),
    (~>), (~~), setWorldUniforms, getWorldDelta,
    getWorldTime
) where

import Data.Time (getCurrentTime, UTCTime)

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types
import Engine.Graphics.Shaders
import Engine.Core.Vec

setWorldPlayer :: GameObject t -> World t -> World t
setWorldPlayer player world = world{worldPlayer = player}

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

actWithSeed ::
    (a -> b -> b) ->
    (a, b) ->
    (a, b)
actWithSeed func (world, obj) =
    (world, func world obj)

infixl ~>

(~>) ::
    (a, b) ->
    (a -> b -> b) ->
    (a, b)
(~>) val func = actWithSeed func val

infixl ~~

(~~) ::
    (a, b) ->
    (a -> a) ->
    (a, b)
(~~) (applyVal, passVal) func =
    (func applyVal, passVal)

infixl ~>~

(~>~) ::
    (a, b) ->
    (b -> a) ->
    (a, b)
(~>~) (_, pass) func =
    (func pass, pass)

infixl ~>~>

(~>~>) ::
    (a, b) ->
    (a -> a, b -> b) ->
    (a, b)
(~>~>) (x, y) (fx, fy) = (fx x, fy y)

-- | Set a world's uniforms to given shader.
setWorldUniforms :: World t -> Shader -> IO Shader
setWorldUniforms world shader =
    setUniformsAndRemember shader $ worldUniforms world

getWorldDelta :: World t -> GLfloat
getWorldDelta = stateDelta . worldState

-- | Synonym for getCurrentTime.
getWorldTime :: IO UTCTime
getWorldTime = getCurrentTime
