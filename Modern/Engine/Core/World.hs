module Engine.Core.World (
    World(..), WorldState(..), playerAABB,
    GameObject(..), Input(..), setWorldUniforms,
    getWorldTime, getWorldDelta,
    Framebuffer(..), (~>), (~~),
    (~>~), (~>~>), setWorldPlayer
) where

import Data.Time (getCurrentTime, UTCTime)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat, GLint)

import Engine.Graphics.Shaders
import Engine.Core.Vec
import Engine.Model.Model
import Engine.Model.AABB
import Engine.Graphics.Window

data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldUniforms :: ![ShaderUniform],
    worldFramebuffer :: !(Framebuffer, [GLuint]),
    worldState :: !WorldState
}

setWorldPlayer :: GameObject t -> World t -> World t
setWorldPlayer player world = world{worldPlayer = player}

data WorldState = WorldState {
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat,
    statePaused :: !Bool,
    stateWindow :: !Window
}

data Framebuffer = FB {
    fbufName :: !GLuint,
    fbufTexture :: !GLuint,
    fbufDimensions :: !(GLint, GLint),
    fbufVBO :: !GLuint,
    fbufRenderBuffer :: !GLuint
}

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

data GameObject t = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerVelocity :: !(Vec3 GLfloat),
    playerSpeed :: !GLfloat,
    playerUpdate :: !(World t -> World t),
    playerInput :: !(Input t)
} | PureEntity {
    pentityPosition :: !(Vec3 GLfloat),
    pentityUpdate :: !(GameObject t -> GameObject t),
    pentityModel :: !Model,
    pentityAttribute :: !t
} | EffectfulEntity {
    eentityPosition :: !(Vec3 GLfloat),
    eentityUpdate :: !(World t -> GameObject t -> GameObject t),
    eentityModel :: !Model,
    eentityAttribute :: !t
}

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

(~>~>) ::
    (a, b) ->
    (a -> a, b -> b) ->
    (a, b)
(~>~>) (x, y) (fx, fy) = (fx x, fy y)

data Input t = Input {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    inputKeys :: ![(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)],
    inputMouseDelta :: !(Vec2 GLfloat),
    inputLastMousePos :: !(Vec2 GLfloat),
    inputMouseSpeed :: !GLfloat
}

-- | Set a world's uniforms to given shader.
setWorldUniforms :: World t -> Shader -> IO Shader
setWorldUniforms world shader =
    setUniformsAndRemember shader $ worldUniforms world

getWorldDelta :: World t -> GLfloat
getWorldDelta = stateDelta . worldState

-- | Synonym for getCurrentTime.
getWorldTime :: IO UTCTime
getWorldTime = getCurrentTime
