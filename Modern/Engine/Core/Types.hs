{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Core.Types where

import Data.Time (UTCTime)
import Foreign (Word8)
import Data.Maybe (fromMaybe)

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
    getAABBs :: a -> [AABB]
    getWholeAABB :: a -> Maybe AABB

class Container g t where
    getContents :: g -> [t]
    setContents :: g -> [t] -> g

class Container g t => HasUpdate t g where
    updateStep :: t -> Update t g
    performUpdateAll :: g -> [t] -> g
    performUpdateAll g list =
        let nonEff = updateNonEff list g
            newGlobal = updateEff list g
        in setContents newGlobal nonEff
        where
        updateEff :: HasUpdate t g => [t] -> g -> g
        updateEff (x : xs) global =
            let upStep = updateStep x
            in case upStep of
                Effectful f -> updateEff xs (f global x)
                _ -> updateEff xs global
        updateEff _ global = global

        updateNonEff :: HasUpdate t g => [t] -> g -> [t]
        updateNonEff (x : xs) global =
            let upStep = updateStep x
            in case upStep of
                Pure f -> f x : updateNonEff xs global
                Seed f -> f global x : updateNonEff xs global
                _ -> updateNonEff xs global
        updateNonEff _ _ = []


data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldUniforms :: ![ShaderUniform],
    worldPostProcessors :: !(Framebuffer, [GLuint]),
    worldShadowInfo :: !(Framebuffer, GLuint),
    worldState :: !WorldState
}

instance Container (World t) (GameObject t) where
    getContents = worldEntities
    setContents world xs = world{worldEntities = xs}

data WorldState = WorldState {
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat,
    statePaused :: !Bool,
    stateWindow :: !Window
}

data Update t g =
      Pure (t -> t)
    | Effectful (g -> t -> g)
    | Seed (g -> t -> t)

data GameObject t = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerVelocity :: !(Vec3 GLfloat),
    playerSpeed :: !GLfloat,
    playerUpdate :: !(World t -> World t),
    playerInput :: !(Input t)
} | Entity {
    entityPosition :: !(Vec3 GLfloat),
    entityUpdate :: Update (GameObject t) (World t),
    entityModel :: !Model,
    entityAttribute :: !t
}

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

instance HasPosition (GameObject t) where
    getPos p@(Player{}) = playerPosition p
    getPos pe@(Entity{}) = entityPosition pe

    setPos p@(Player{}) pos = p{playerPosition = pos}
    setPos pe@(Entity{}) pos = pe{entityPosition = pos}

instance HasAABB (GameObject t) where
    getAABBs (Player{}) = [playerAABB]
    getAABBs pe@(Entity{}) =
        let aabbs = modelAABBs $ entityModel pe
        in fromMaybe [] aabbs

    getWholeAABB (Player{}) = Just playerAABB
    getWholeAABB pe@(Entity{}) =
        modelWholeAABB $ entityModel pe

instance HasUpdate (GameObject t) (World t) where
    updateStep (Player{}) =
        Effectful $ flip playerUpdate
    updateStep pe@(Entity{}) =
        entityUpdate pe

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
