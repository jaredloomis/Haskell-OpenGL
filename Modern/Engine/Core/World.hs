module Engine.Core.World (
    World(..), WorldState(..), playerAABB,
    GameObject(..), Input(..), setWorldUniforms,
    loadWorldTexture, getWorldTime, getWorldDelta
) where

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
import Engine.Graphics.Window

data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldUniforms :: ![ShaderUniform],
    worldState :: !WorldState
}

data WorldState = WorldState {
    stateTextureCount :: !GLuint,
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat,
    statePaused :: !Bool,
    stateWindow :: Window
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
    eentityUpdate :: !(GameObject t -> World t -> World t),
    eentityModel :: !Model,
    eentityAttribute :: !t
}

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

-- | Load a texture using the WorldState to keep track of texture ID.
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
