module Engine.Core.Types where

import Data.Time (UTCTime)
import Foreign (Word8)

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat, GLint)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec
import Engine.Graphics.Window

class HasPosition p where
    getPos :: p -> Vec3 GLfloat
    setPos :: p -> Vec3 GLfloat -> p
    movePos :: p -> Vec3 GLfloat -> p
    movePos hp movement =
        setPos hp (getPos hp + movement)

class HasPosition a => HasAABB a where
    getAABB :: a -> AABB
    getTransformedAABB :: a -> AABB


data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldUniforms :: ![ShaderUniform],
    worldPostProcessors :: !(Framebuffer, [GLuint]),
    worldShadowInfo :: !(Framebuffer, GLuint),
    worldState :: !WorldState
}

data WorldState = WorldState {
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat,
    statePaused :: !Bool,
    stateWindow :: !Window
}


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

instance HasPosition (GameObject t) where
    getPos p@(Player{}) = playerPosition p
    getPos pe@(PureEntity{}) = pentityPosition pe
    getPos ee@(EffectfulEntity{}) = eentityPosition ee

    setPos p@(Player{}) pos = p{playerPosition = pos}
    setPos pe@(PureEntity{}) pos = pe{pentityPosition = pos}
    setPos ee@(EffectfulEntity{}) pos = ee{eentityPosition = pos}

data Model = Model {
    modelShader :: !Shader,
    modelShaderVars :: ![ShaderAttrib],
    modelTextures :: ![Texture],
    modelVertCount :: !GLint,
    modelAABBs :: !(Maybe [AABB]),
    modelWholeAABB :: !(Maybe AABB)
}


data Input t = Input {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    inputKeys :: ![(GLFW.Key, GLFW.KeyState, GLFW.KeyState, World t -> World t)],
    inputMouseDelta :: !(Vec2 GLfloat),
    inputLastMousePos :: !(Vec2 GLfloat),
    inputMouseSpeed :: !GLfloat
}


-- | AABB (min corner) (max corner)
data AABB = AABB !(Vec3 GLfloat) !(Vec3 GLfloat) deriving (Show)

instance HasPosition AABB where
    getPos (AABB minV _) = minV
    setPos (AABB minV maxV) pos =
        AABB pos ((maxV - minV) + pos)

-- | All OpenGL handles for a Framebuffer and
--   Renderbuffer.
data Framebuffer = FB {
    fbufName :: !GLuint,
    fbufTexture :: !GLuint,
    fbufDimensions :: !(GLint, GLint),
    fbufVBO :: !GLuint,
    fbufRenderBuffer :: !GLuint
}

-- | An OpenGL program id and some uniform
--   ids so that glUniform* doesn't have to be
--   called more than once.
data Shader = Shader {
    shaderId :: GLuint,
    shaderUniforms :: [(String, GLint)]
} deriving (Show)

-- | Attrib id, Buffer id, size of attrib.
type ShaderAttrib = Vec3 GLuint

-- | Name, Values
type ShaderUniform = (String, IO [GLfloat])

data Image = Image GL.Size (GL.PixelData Word8)
    deriving (Show)

type Texture = (GL.TextureObject, GLint)
