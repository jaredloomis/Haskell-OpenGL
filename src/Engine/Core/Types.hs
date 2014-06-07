{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TemplateHaskell #-}
module Engine.Core.Types (
    Game(..), GameIO(..), HasName(..),
    World(..), WorldState(..), Graphics(..),
    GameObject(..), Input(..),
    emptyEntity, playerAABB, emptyGraphics,
    emptyWorldState
) where

import Data.Label
import Data.Default
import Control.Applicative (Applicative)
import Data.Maybe (isNothing)
import Control.Monad.State
    (State, StateT, MonadIO,
     MonadState)
import Control.Parallel.Strategies
    (parMap, r0)

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec (Vec3(..), Vec2)
import Engine.Core.HasPosition
    (HasPosition(..), HasRotation(..), HasVelocity(..))
import Engine.Graphics.Window
    (Window(..), defaultWindow)
import Engine.Model.AABB (HasAABB(..), AABB(..), AABBSet(..))
import Engine.Object.Intersect (Intersect(..))
import Engine.Terrain.Generator (Terrain(..))
import Engine.Object.Octree (Octree(..))
import Engine.Graphics.Shaders (ShaderUniform)
import Engine.Graphics.Framebuffer (Framebuffer)
import Engine.Model.Model (Model(..), emptyModel)

-- = New API (Not Great...)

import Data.Vinyl

type GameObject'' = ["position" ::: Vec3,  "rotation"  ::: Vec3,
                     "velocity" ::: Vec3,  "update"    ::: UpdateType,
                     "model"    ::: Model, "input"     ::: Input',
                     "aabb"     ::: AABB,  "intersect" ::: ICheck]

-- Just to stop errors.
data Input' = Input' Int
data UpdateType = UpdateType Int
data ICheck = ICheck Int

position' :: "position" ::: Vec3
position' = Field
rotation' :: "rotation" ::: Vec3
rotation' = Field
velocity' :: "velocity" ::: Vec3
velocity' = Field
update' :: "update" ::: UpdateType
update' = Field
model' :: "model" ::: Model
model' = Field
input' :: "input" ::: Input'
input' = Field
aabb' :: "aabb" ::: AABB
aabb' = Field
parent :: "parent" ::: PlainRec GameObject''
parent = Field

--xsg = rLens parent . rLens position' .~ 10 $ jon

parentPos :: (("parent" ::: PlainRec GameObject'') -?> rs, Functor f) =>
              (Vec3 -> f Vec3) -> PlainRec rs -> f (PlainRec rs)
parentPos = rLens parent . rLens position'

jon = position'  =: 12
  <+> rotation'  =: 20
  <+> velocity'  =: 7
  <+> parent     =: undefined

type x -?> xs = IElem x xs
type x >~ xs = x -?> xs
type x `E` xs = IElem x xs

move' :: (("position" ::: Vec3) -?> rs) => Vec3 -> PlainRec rs -> PlainRec rs
move' = rPut position'

-- = State Monads

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
    worldGraphics :: Graphics,
    worldState :: WorldState
}

-- | The type used to contain values that
--   change and affect the state of the World.
data WorldState = WorldState {
    stateTime :: GLfloat,
    stateDelta :: GLfloat,
    statePaused :: Bool,
    stateWindow :: Window
} deriving (Show)

instance Default WorldState where
    def = WorldState 0 0 False def

emptyWorldState :: WorldState
emptyWorldState = WorldState 0 0 False defaultWindow

-- | The type used to contain global values relating to
--   graphics / shaders.
data Graphics = Graphics {
    graphicsUniforms :: [ShaderUniform],
    graphicsPostProcessors :: (Framebuffer, [GLuint]),
    graphicsShadowInfo :: (Framebuffer, GLuint)
}
emptyGraphics :: Graphics
emptyGraphics = Graphics [] (undefined, []) (undefined, 0)

-- = GameObject

-- | Type representing nearly anything in the game
--   that is somewhat "physical".
{-
data Player = Player {
    playerPosition :: Vec3,
    playerRotation :: Vec3,
    playerVelocity :: Vec3,
    playerSpeed :: GLfloat,
    playerUpdate :: Game t (),
    playerInput :: Input t
}
data GameObject t = GameObject {
    entityPosition :: Vec3,
    entityRotation :: Vec3,
    entityVelocity :: Vec3,
    entityUpdate :: GameObject t -> Game t (GameObject t),
    entityModel :: Model,
    entityAttribute :: t
}
-}
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
    entityVelocity :: Vec3,
    entityUpdate :: GameObject t -> Game t (GameObject t),
    entityModel :: Model,
    entityAttribute :: t
}
emptyEntity :: GameObject ()
emptyEntity = Entity 0 0 0 return emptyModel ()
-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB (Vec3 (-0.5) (-1.5) (-0.5)) (Vec3 0.5 1.5 0.5)

instance Show (GameObject t) where
    show obj@(Player{}) =
        "Player{" ++
        "position = " ++ show (getPos obj) ++
        ", rotation = " ++ show (getRot obj) ++
--        ", speed = " ++ show (playerSpeed obj) ++
        "}"
    show obj@(Entity{}) =
        "Entity{" ++
        "position = " ++ show (getPos obj) ++
        ", rotation = " ++ show (getRot obj) ++
        ", model = " ++ show (entityModel obj) ++
        "}"

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

instance HasVelocity (GameObject t) where
    getVel p@(Player{}) = playerVelocity p
    getVel e@(Entity{}) = entityVelocity e

    setVel p@(Player{}) vel = p{playerVelocity = vel}
    setVel e@(Entity{}) vel = e{entityVelocity = vel}

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
            in parMap r0 (\(AABB l h) -> AABB (l+pos) (h+pos)) aabbs

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

instance Intersect AABB (GameObject t) where
    intersecting aabb object = anyIntersecting aabb (getAABBs object)
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

--mkLabel ''GameObject

--x :: GameObject t :~> GLfloat
--x = playerSpeed
