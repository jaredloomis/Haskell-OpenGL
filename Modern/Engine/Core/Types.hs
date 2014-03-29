{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Engine.Core.Types where

import Data.Time (UTCTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import Foreign (Word8)
import Data.Maybe (fromMaybe)
import Control.Monad.State

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat, GLint)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec
import Engine.Graphics.Window

newtype Game t a = Game {
    gameState :: State (World t) a
} deriving (Functor, Monad, MonadState (World t))

newtype GameIO t a = GameIO {
    gameIoState :: StateT (World t) IO a
} deriving (Functor, Monad, MonadIO, MonadState (World t))

testIt :: Vec3 GLfloat
testIt = entityPosition . head . worldEntities . execState
    (gameState moveAllObjects) $
        World emptyEntity [emptyEntity] emptyGraphics emptyWorldState

moveAllObjects :: Game t ()
moveAllObjects = do
    w <- get
    let ents = worldEntities w
        newEnts = map (\o -> movePos o (Vec3 1 0 0)) ents
    put w{worldEntities = newEnts}

-- | A class for types that have a position
--   that can be retrieved and set.
class HasPosition p where
    getPos :: p -> Vec3 GLfloat
    setPos :: p -> Vec3 GLfloat -> p
    movePos :: p -> Vec3 GLfloat -> p
    movePos hp movement =
        setPos hp (getPos hp + movement)

-- | A class for types that have a rotation
--   that can be retrieved and set.
class HasRotation r where
    getRot :: r -> Vec3 GLfloat
    setRot :: r -> Vec3 GLfloat -> r
    rotate :: r -> Vec3 GLfloat -> r
    rotate r deltaR =
        setRot r (getRot r + deltaR)

-- | A class for types that have an
--   Axis-Aligned Bounding Box (AABB). Type must
--   also have a position for this to make sense.
class HasPosition a => HasAABB a where
    getAABBs :: a -> [AABB]
    getWholeAABB :: a -> Maybe AABB

-- | A class for types 'g' that contain another type 't'.
class Container g t where
    getContents :: g -> [t]
    setContents :: g -> [t] -> g

-- | A class for types that can be updated, given a global
--   information type.
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


-- | The type I use to contain the overall state of
--   the entire game.
data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldGraphics :: !(Graphics t),
    worldState :: !WorldState
}

instance Container (World t) (GameObject t) where
    getContents = worldEntities
    setContents world xs = world{worldEntities = xs}

-- | The type used to contain global values relating to
--   graphics / shaders.
data Graphics t = Graphics {
    graphicsUniforms :: ![ShaderUniform],
    graphicsPostProcessors :: !(Framebuffer, [GLuint]),
    graphicsShadowInfo :: !(Framebuffer, GLuint)
}

emptyGraphics :: Graphics t
emptyGraphics = Graphics [] (undefined, []) (undefined, 0)

-- | The type used to contain values that
--   change and affect the state of the World.
data WorldState = WorldState {
    stateTime :: !UTCTime,
    stateDelta :: !GLfloat,
    statePaused :: !Bool,
    stateWindow :: !Window
}

emptyWorldState :: WorldState
emptyWorldState = WorldState (posixSecondsToUTCTime 0) 0 False defaultWindow

-- | Type used to generalize any update that:
--   1. Involves a specific type 't'.
--   2. May or may not involve a global type 'g'.
data Update t g =
      Pure (t -> t)
    | Effectful (g -> t -> g)
    | Seed (g -> t -> t)

-- | Type representing nearly anything in the game
--   that is somewhat "physical".
data GameObject t = Player {
    playerPosition :: !(Vec3 GLfloat),
    playerRotation :: !(Vec3 GLfloat),
    playerVelocity :: !(Vec3 GLfloat),
    playerSpeed :: !GLfloat,
    playerUpdate :: !(World t -> World t),
    playerInput :: !(Input t)
} | Entity {
    entityPosition :: !(Vec3 GLfloat),
    entityRotation :: !(Vec3 GLfloat),
    entityUpdate :: Update (GameObject t) (World t),
    entityModel :: !Model,
    entityAttribute :: !t
}

emptyEntity :: GameObject ()
emptyEntity = Entity 0 0 (Pure id) emptyModel ()

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

instance HasPosition (GameObject t) where
    getPos p@(Player{}) = playerPosition p
    getPos pe@(Entity{}) = entityPosition pe

    setPos p@(Player{}) pos = p{playerPosition = pos}
    setPos pe@(Entity{}) pos = pe{entityPosition = pos}

instance HasRotation (GameObject t) where
    getRot p@(Player{}) = playerRotation p
    getRot e@(Entity{}) = entityRotation e

    setRot p@(Player{}) rot = p{playerRotation = rot}
    setRot e@(Entity{}) rot = e{entityRotation = rot}

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

emptyModel :: Model
emptyModel = Model (Shader 0 []) [] [] 0 Nothing Nothing


data Input t = Input {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    inputKeys :: ![(GLFW.Key, GLFW.KeyState,
                    GLFW.KeyState,
                    World t -> World t)],
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

data Image = Image !GL.Size !(GL.PixelData Word8)
    deriving (Show)

type Texture = (GL.TextureObject, GLint)
