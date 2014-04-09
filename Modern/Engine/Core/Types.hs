{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
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

{-
testIt :: Vec3 GLfloat
testIt = entityPosition . head . worldEntities . execState
    (gameState moveAllObjects) $
        World emptyEntity [emptyEntity] emptyGraphics emptyWorldState
-}

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

instance HasPosition (Vec3 GLfloat) where
    getPos = id
    setPos _ = id

-- | The type used to contain the overall state of
--   the entire game.
data World t = World {
    worldPlayer :: !(GameObject t),
    worldEntities :: ![GameObject t],
    worldOctree :: !(Octree AABB),
    worldGraphics :: !(Graphics t),
    worldState :: !WorldState
}

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
    playerUpdate :: !(Game t (World t)),
    playerInput :: !(Input t)
} | Entity {
    entityPosition :: !(Vec3 GLfloat),
    entityRotation :: !(Vec3 GLfloat),
    entityUpdate :: !(GameObject t -> Game t (GameObject t)),
    entityModel :: !Model,
    entityAttribute :: !t
}

emptyEntity :: GameObject ()
emptyEntity = Entity 0 0 return emptyModel ()

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

-- TODO: Not really...
instance Show (GameObject t) where
    show = show . getPos

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

data Model = Model {
    modelShader :: !Shader,
    modelShaderVars :: ![ShaderAttrib],
    modelTextures :: ![Texture],
    modelVertCount :: !GLint,
    modelAABBs :: !(Maybe [AABB]),
    modelWholeAABB :: !(Maybe AABB)
}

emptyModel :: Model
emptyModel = Model (Shader 0 []) [] [] 0 (Just [AABB 0 0]) (Just $ AABB 0 0)

data Octree a where
    ONode :: HasAABB a => AABB -> [Octree a] -> Octree a
    OLeaf :: HasAABB a => AABB -> [a] -> Int -> Octree a

instance Show a => Show (Octree a) where
    show (ONode aabb children) =
        "Node: " ++ show aabb ++ "\n{\n" ++
        concatMap ((++"\n") . show) children ++ "}"
    show (OLeaf aabb contents _) =
        "Leaf: " ++ show aabb ++ ", " ++ show contents

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

instance HasAABB AABB where
    getWholeAABB (AABB low high) = Just (AABB 0 (high - low))
    getAABBs (AABB low high) = [AABB 0 (high - low)]

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
