{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverlappingInstances #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Engine.Core.Types (
    Game(..), GameIO(..), HasName(..),
    World(..), Graphics(..), WorldState(..),
    GameObject(..),
    MOctree(..), Input(..),
    WorldMatrices(..), Matrix4x4,
    Matrix3x3, Vector4, Vector3,
    emptyEntity, playerAABB,
    emptyGraphics, emptyWorldState,
    emptyMatrices
) where

import Control.Applicative (Applicative)
import Data.Time (UTCTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import Data.Maybe (isNothing, isJust, fromJust)
import Control.Monad.State
    (State, StateT, MonadIO,
     MonadState)
import Data.List (transpose)

import qualified Data.Vector.Storable.Mutable as MV
import qualified Data.Vector.Storable as V

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec
import Engine.Core.HasPosition
    (HasPosition(..), HasRotation(..))
import Engine.Graphics.Window
import Engine.Model.AABB (HasAABB(..), AABB(..))
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

instance HasPosition Vec3 where
    getPos = id
    setPos _ = id

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
        modelAABBs $ entityModel pe

    getWholeAABB (Player{}) = Just playerAABB
    getWholeAABB pe@(Entity{}) =
        modelWholeAABB $ entityModel pe

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

-- = Collision Detection

instance (HasAABB a, HasAABB b) => Intersect a b where
    intersecting left right =
        let lwholeM = getWholeAABB left
            rwholeM = getWholeAABB right
        in if isJust lwholeM && isJust rwholeM
                then
                    let lwhole = fromJust lwholeM
                        rwhole = fromJust rwholeM
                    in intersecting lwhole rwhole &&
                        let lall = getAABBs left
                            rall = getAABBs right
                        in anyIntersect lall rall
                else
                    let lall = getAABBs left
                        rall = getAABBs right
                    in anyIntersect lall rall
      where
        anyIntersect :: Intersect a b => [a] -> [b] -> Bool
        anyIntersect (l:ls) (r:rs) =
            intersecting l r || anyIntersect ls rs
        anyIntersect _ _ = False

data MOctree a =
    MNode AABB (MV.IOVector (MOctree a))
  | PNode AABB (V.Vector (MOctree a))
  | MLeaf AABB (MV.IOVector a) Int
  | PLeaf AABB (V.Vector a) Int

-- = Procedurally Generated Terrain

instance Intersect Terrain AABB where
    intersecting terr (AABB (Vec3 lx ly lz) _) =
        ly < terrainHeightFunc terr lx lz

instance Intersect AABB Terrain where
    intersecting (AABB (Vec3 lx ly lz) _) terr =
        ly < terrainHeightFunc terr lx lz

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

-- = Matrices

data WorldMatrices = WorldMatrices {
    matrixModel :: Matrix4x4,
    matrixView :: Matrix4x4,
    matrixProjection :: Matrix4x4
} deriving (Show, Eq)
emptyMatrices :: WorldMatrices
emptyMatrices = WorldMatrices 1 1 1

-- | 4x4 Matrix in the OpenGL orientation:
--   translation column is the last 4 elements.
type Matrix4x4 = [[GLfloat]]
-- | 3x3 Matrix in the OpenGL orientation.
type Matrix3x3 = [[GLfloat]]
-- | Four element GLfloat vector.
type Vector4 = [GLfloat]
-- | Three element GLfloat vector.
type Vector3 = [GLfloat]

instance Num Matrix4x4 where
    a * b =
        map (\row -> map (gdotVec row) at) b
        where at = transpose a
    a + b = zipWith (zipWith (+)) a b
    abs = map (map abs)
    fromInteger i =
        [
        [fromInteger i, 0, 0, 0],
        [0, fromInteger i, 0, 0],
        [0, 0, fromInteger i, 0],
        [0, 0, 0, fromInteger i]
        ]
    signum = map $ map signum
    negate = map $ map negate

-- | Vector dot product.
gdotVec :: [GLfloat] -> [GLfloat] -> GLfloat
gdotVec a b = sum $ ginnerVec a b
-- | Inner product of two vectors.
ginnerVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
ginnerVec = zipWith (*)
