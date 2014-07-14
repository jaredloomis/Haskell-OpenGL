{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TemplateHaskell #-}
module Engine.Core.Types (
    Game(..), GameIO(..),
    World(..), WorldState(..), Graphics(..),
    Player(..), Entity(..), Input(..),
    (.~), (.=), (%~), (%=),
    hoistGame,
    emptyEntity, playerAABB, emptyGraphics,
    emptyWorldState, lPlayerPosition,
    lPlayerRotation, lPlayerVelocity,
    lPlayerSpeed, lPlayerUpdate, lPlayerInput,
    lWorldPlayer, lWorldEntities,
    lWorldGraphics, lWorldState,
    lInputKeys, lInputMouseDelta,
    lInputLastMousePos, lInputMouseSpeed,
    lEntityPosition, lEntityRotation,
    lEntityVelocity, lEntityUpdate, lEntityModel,
    lEntityAttribute,
    lGraphicsUniforms, lGraphicsPostProcessors,
    lGraphicsShadowInfo,
    lStateTime, lStateDelta, lStatePaused,
    lStateWindow, lWorldPhysics,
    lPlayerRigidBody, lEntityRigidBody
) where

import Control.Category
import Prelude hiding ((.))

import Data.Default (Default(..))
import Control.Applicative (Applicative)
import Data.Maybe (isNothing)
import Control.Monad.State
    (State, StateT(..), MonadIO,
     MonadState, runStateT)
import Data.Functor.Identity (runIdentity)

import Data.Vec ((:.)(..), Vec3, Vec2)

import Data.Label as L
import qualified Data.Label.Monadic as LM

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Physics.Bullet.Raw.Class (BtRigidBody)

import Engine.Core.HasPosition
    (HasPosition(..), HasRotation(..), HasVelocity(..))
import Engine.Graphics.Window
    (Window(..), defaultWindow)
import Engine.Mesh.AABB (HasAABB(..), AABB(..), AABBSet(..))
import Engine.Object.Intersect (Intersect(..))
import Engine.Object.Octree (Octree(..))
import Engine.Graphics.Shaders (ShaderUniform)
import Engine.Graphics.Framebuffer (Framebuffer)
import Engine.Mesh.Mesh (Mesh(..), emptyMesh)
import Engine.Bullet.Bullet (Physics(..))

-- = Vinyl API (unimplemented, just testing with it.)

import Data.Vinyl

newtype Game' a = Game' {
    game'State :: State World' a
} deriving (Functor, Applicative, Monad, MonadState World')

newtype GameIO' a = GameIO' {
    gameIo'State :: StateT World' IO a
} deriving (Functor, Applicative, Monad, MonadIO, MonadState World')


data World' = World' {
    world'Objects  :: GameObject',
    world'Octree   :: Octree AABB,
    world'Graphics :: Graphics,
    world'State    :: WorldState
}

type GameObject' = PlainRec
   [Position,   Rotation,
    Velocity,   Update,
    ModelField, InputField,
    AABBsField]

-- Just to stop errors.
data Input' = Input' {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    input'Keys :: [(GLFW.Key, GLFW.KeyState,
                    GLFW.KeyState,
                    World' -> World')],
    input'MouseDelta :: Vec2 GLfloat,
    input'LastMousePos :: Vec2 GLfloat,
    input'MouseSpeed :: GLfloat
}
data UpdateType =
    PureUpdate (State World' GameObject')
  | IOUpdate (StateT World' IO GameObject')

type Position = "position" ::: Vec3 GLfloat
position' :: Position
position' = Field
type Rotation = "rotation" ::: Vec3 GLfloat
rotation' :: Rotation
rotation' = Field
type Velocity = "velocity" ::: Vec3 GLfloat
velocity' :: Velocity
velocity' = Field
type Update = "update" ::: UpdateType
update' :: Update
update' = Field
type ModelField = "mesh" ::: Mesh
model' :: ModelField
model' = Field
type InputField = "input" ::: Input'
input' :: InputField
input' = Field
type AABBsField = "aabbs" ::: AABBSet
aabb' :: AABBsField
aabb' = Field
type Parent = "parent" ::: GameObject'
parent :: Parent
parent = Field

parentPos :: (("parent" ::: GameObject') -?> rs, Functor f) =>
              (Vec3 GLfloat -> f (Vec3 GLfloat)) -> PlainRec rs -> f (PlainRec rs)
parentPos = rLens parent . rLens position'

jon = position'  =: 12
  <+> rotation'  =: 20
  <+> velocity'  =: 7
  <+> parent     =: undefined

type attr `E` object = attr -?> object
type attr -?> object = IElem attr object
type object `Has` attr = object >~ attr
type object >~ attr = IElem attr object

move' :: (rs `Has` Position) => Vec3 GLfloat -> PlainRec rs -> PlainRec rs
move' dPos obj =
    let curPos = rGet position' obj
    in rPut position' (curPos + dPos) obj

---- = Real API = ----

-- = State Monads

newtype Game t a = Game {
    gameState :: State (World t) a
} deriving (Functor, Applicative, Monad, MonadState (World t))

newtype GameIO t a = GameIO {
    gameIoState :: StateT (World t) IO a
} deriving (Functor, Applicative, Monad, MonadIO, MonadState (World t))

-- | Do a "Game" action in the "GameIO" Monad.
hoistGame :: Game t a -> GameIO t a
hoistGame game = GameIO . StateT $
    (\s -> return (runIdentity (runStateT (gameState game) s)))

-- = Global data types

-- | The type used to contain the overall state of
--   the entire game.
data World t = World {
    worldPlayer :: Player t,
    worldEntities :: [Entity t],
    worldPhysics :: Physics,
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

data Player t = Player {
    playerPosition :: Vec3 GLfloat,
    playerRotation :: Vec3 GLfloat,
    playerVelocity :: Vec3 GLfloat,
    playerSpeed :: GLfloat,
    playerUpdate :: GameIO t (),
    playerInput :: Input t,
    playerRigidBody :: BtRigidBody
    }
-- TODO: Make this more flexible
playerAABB :: AABB
playerAABB = AABB ((-0.5) :. (-1.5) :. (-0.5) :. ())
                  (0.5 :. 1.5 :. 0.5 :. ())

-- | Type representing nearly anything in the game
--   that is somewhat "physical".
data Entity t = Entity {
    entityPosition :: Vec3 GLfloat,
    entityRotation :: Vec3 GLfloat,
    entityVelocity :: Vec3 GLfloat,
    entityUpdate :: Entity t -> Game t (Entity t),
    entityModel :: Mesh,
    entityRigidBody :: BtRigidBody,
    entityAttribute :: t
    }
emptyEntity :: Entity ()
emptyEntity = Entity 0 0 0 return emptyMesh undefined ()

-- = Input

-- | A data type to represent all settings used
--   to react to input.
data Input t = Input {
    -- (Key, Wanted Keystate, Current Keystate,
    --  Function to call when wanted == current)
    inputKeys :: [(GLFW.Key, GLFW.KeyState,
                    GLFW.KeyState,
                    World t -> World t)],
    inputMouseDelta :: Vec2 GLfloat,
    inputLastMousePos :: Vec2 GLfloat,
    inputMouseSpeed :: GLfloat
    }

-- = Labels.

mkLabel ''World
mkLabel ''Player
mkLabel ''Input
mkLabel ''Entity
mkLabel ''Graphics
mkLabel ''WorldState

(.~) :: (f :-> a) -> a -> f -> f
(.~) = set
infixr 4 .~

(.=) :: MonadState f m => (f :-> a) -> a -> m ()
(.=) = LM.puts
infixr 4 .=

(%~) :: (f :-> a) -> (a -> a) -> (f -> f)
(%~) = modify
infixr 4 %~

(%=) :: MonadState f m => (f :-> a) -> (a -> a) -> m ()
(%=) = LM.modify
infixr 4 %=

-- = Instances.

instance Show (Entity t) where
    show obj@(Entity{}) =
        "Entity{" ++
        "position = " ++ show (getPos obj) ++
        ", rotation = " ++ show (getRot obj) ++
        ", model = " ++ show (entityModel obj) ++
        "}"
instance Show (Player t) where
    show obj@(Player{}) =
        "Player{" ++
        "position = " ++ show (getPos obj) ++
        ", rotation = " ++ show (getRot obj) ++
        ", speed = " ++ show (playerSpeed obj) ++
        "}"

instance HasPosition (Entity t) where
    getPos pe = entityPosition pe
    setPos pe pos = pe{entityPosition = pos}
instance HasPosition (Player t) where
    getPos = playerPosition
    setPos p pos = p{playerPosition = pos}

instance HasRotation (Entity t) where
    getRot e = entityRotation e
    setRot e rot = e{entityRotation = rot}
instance HasRotation (Player t) where
    getRot p = playerRotation p
    setRot p rot = p{playerRotation = rot}

instance HasVelocity (Entity t) where
    getVel e = entityVelocity e
    setVel e vel = e{entityVelocity = vel}
instance HasVelocity (Player t) where
    getVel p = playerVelocity p
    setVel p vel = p{playerVelocity = vel}

instance HasAABB (Entity t) where
    getAABBs pe =
        aabbSetAll $ meshAABBSet $ entityModel pe

    getWholeAABB pe =
        aabbSetWhole $ meshAABBSet $ entityModel pe

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
instance HasAABB (Player t) where
    getAABBs _ = [playerAABB]

    getWholeAABB _ = Just playerAABB

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

instance Intersect (Entity t) AABB where
    intersecting object aabb = anyIntersecting aabb (getAABBs object)
        where
        anyIntersecting needle (hay:haystack) =
            needle `intersecting` hay ||
                anyIntersecting needle haystack
        anyIntersecting _ [] = False
instance Intersect (Player t) AABB where
    intersecting object aabb = anyIntersecting aabb (getAABBs object)
        where
        anyIntersecting needle (hay:haystack) =
            needle `intersecting` hay ||
                anyIntersecting needle haystack
        anyIntersecting _ [] = False

instance Intersect AABB (Entity t) where
    intersecting aabb object = anyIntersecting aabb (getAABBs object)
        where
        anyIntersecting needle (hay:haystack) =
            needle `intersecting` hay ||
                anyIntersecting needle haystack
        anyIntersecting _ [] = False
instance Intersect AABB (Player t) where
    intersecting aabb object = anyIntersecting aabb (getAABBs object)
        where
        anyIntersecting needle (hay:haystack) =
            needle `intersecting` hay ||
                anyIntersecting needle haystack
        anyIntersecting _ [] = False
