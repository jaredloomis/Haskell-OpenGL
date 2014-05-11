{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverlappingInstances #-}
module Engine.Core.Types (
    Game(..), GameIO(..), HasName(..),
    World(..), WorldState(..), Graphics(..),
    GameObject(..), Input(..),
    emptyEntity, playerAABB, emptyGraphics,
    emptyWorldState
) where

import Control.Applicative (Applicative)
import Data.Time (UTCTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import Data.Maybe (isNothing)
import Control.Monad.State
    (State, StateT, MonadIO,
     MonadState)

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec (Vec3(..), Vec2)
import Engine.Core.HasPosition
    (HasPosition(..), HasRotation(..))
import Engine.Graphics.Window
    (Window(..), defaultWindow)
import Engine.Model.AABB (HasAABB(..), AABB(..), AABBSet(..))
import Engine.Object.Intersect (Intersect(..))
import Engine.Terrain.Generator (Terrain(..))
import Engine.Object.Octree (Octree(..))
import Engine.Graphics.Shaders (ShaderUniform)
import Engine.Graphics.Framebuffer (Framebuffer)
import Engine.Model.Model (Model(..), emptyModel)

-- = "mtl" State Monads

newtype Game t a = Game {
    gameState :: State (World t) a
} deriving (Functor, Applicative, Monad, MonadState (World t))

newtype GameIO t a = GameIO {
    gameIoState :: StateT (World t) IO a
} deriving (Functor, Applicative, Monad, MonadIO, MonadState (World t))

-- = Type classes

-- TODO
class HasName i where
    getName :: i -> Int
    {-# MINIMAL getName #-}

-- = Global data types

-- | The type used to contain the overall state of
--   the entire game.
data World t = World {
    worldPlayer :: GameObject t,
    worldEntities :: [GameObject t],
    worldTerrain :: Maybe Terrain,
    worldOctree :: Octree AABB,
    worldGraphics :: Graphics t,
    worldState :: WorldState
}

-- | The type used to contain values that
--   change and affect the state of the World.
data WorldState = WorldState {
    stateTime :: UTCTime,
    stateDelta :: GLfloat,
    statePaused :: Bool,
    stateWindow :: Window
} deriving (Show)
emptyWorldState :: WorldState
emptyWorldState = WorldState (posixSecondsToUTCTime 0) 0 False defaultWindow

-- | The type used to contain global values relating to
--   graphics / shaders.
data Graphics t = Graphics {
    graphicsUniforms :: [ShaderUniform],
    graphicsPostProcessors :: (Framebuffer, [GLuint]),
    graphicsShadowInfo :: (Framebuffer, GLuint)
}
emptyGraphics :: Graphics t
emptyGraphics = Graphics [] (undefined, []) (undefined, 0)

-- = GameObject

-- | Type representing nearly anything in the game
--   that is somewhat "physical".
data GameObject t = Player {
    playerPosition :: Vec3,
    playerRotation :: Vec3,
    playerVelocity :: Vec3,
    playerSpeed :: GLfloat,
    playerUpdate :: Game t (),
    playerInput :: Input t
} | Entity {
    entityPosition :: Vec3,
    entityRotation :: Vec3,
    entityUpdate :: GameObject t -> Game t (GameObject t),
    entityModel :: Model,
    entityAttribute :: t
}
emptyEntity :: GameObject ()
emptyEntity = Entity 0 0 return emptyModel ()

-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-2) (-0.5)) (Vec3 0.5 1 0.5)

-- TODO: Not really...
instance Show (GameObject t) where
    show = ("GameObject: "++) . show . getPos

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
        aabbSetAll $ modelAABBSet $ entityModel pe

    getWholeAABB (Player{}) = Just playerAABB
    getWholeAABB pe@(Entity{}) =
        aabbSetWhole $ modelAABBSet $ entityModel pe

    transformedAABBs obj
        | null $ getAABBs obj = []
        | otherwise =
            let pos = getPos obj
                aabbs = getAABBs obj
            in map (\(AABB l h) -> AABB (l+pos) (h+pos)) aabbs

    transformedWholeAABB obj
        | isNothing $ getWholeAABB obj = Nothing
        | otherwise =
            let Just (AABB l r) = getWholeAABB obj
                pos = getPos obj
            in Just $ AABB (l + pos) (r + pos)

instance Intersect (GameObject t) AABB where
    intersecting object aabb = anyIntersecting aabb (getAABBs object)
        where
        anyIntersecting needle (hay:haystack) =
            needle `intersecting` hay ||
                anyIntersecting needle haystack
        anyIntersecting _ [] = False

-- = Input

-- | A data type to represent all settings used
--   to react to input.
data Input t = Input {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    inputKeys :: [(GLFW.Key, GLFW.KeyState,
                    GLFW.KeyState,
                    World t -> World t)],
    inputMouseDelta :: Vec2,
    inputLastMousePos :: Vec2,
    inputMouseSpeed :: GLfloat
}
