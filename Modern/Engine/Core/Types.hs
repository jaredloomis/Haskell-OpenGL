{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverlappingInstances #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Engine.Core.Types (
    Game(..), GameIO(..), HasPosition(..),
    HasRotation(..), HasName(..), Intersect(..),
    World(..), Graphics(..), WorldState(..),
    GameObject(..), Model(..), Terrain(..),
    Permutation, Simplex(..), Octree(..),
    MOctree(..), Input(..), Framebuffer(..),
    Shader(..), WorldMatrices(..), Matrix4x4,
    Matrix3x3, Vector4, Vector3, ShaderAttrib(..),
    ShaderUniform, Texture, Image(..),
    AABB(..), HasAABB(..), RenderInfo(..),
    emptyEntity, playerAABB,
    emptyGraphics, emptyWorldState,
    emptyMatrices, emptyInfo,
    emptyTerrain
) where

import Control.Applicative (Applicative)
import Data.Time (UTCTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import Foreign (Word8)
import Data.Maybe (fromMaybe, isNothing, isJust, fromJust)
import Control.Monad.State
    (State, StateT, MonadIO,
     MonadState)
import Foreign.Ptr
import Data.List (transpose)

import qualified Data.Vector.Storable.Mutable as MV
import qualified Data.Vector.Unboxed as UV
import qualified Data.Vector.Storable as V

import Graphics.Rendering.OpenGL.Raw (GLuint, GLfloat, GLint)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Vec
import Engine.Graphics.Window

-- = "mtl" State Monads.

newtype Game t a = Game {
    gameState :: State (World t) a
} deriving (Functor, Applicative, Monad, MonadState (World t))

newtype GameIO t a = GameIO {
    gameIoState :: StateT (World t) IO a
} deriving (Functor, Applicative, Monad, MonadIO, MonadState (World t))

-- = Type classes.

-- | A class for types that have a position
--   that can be retrieved and set.
class HasPosition p where
    {-# MINIMAL getPos, setPos #-}
    getPos :: p -> Vec3
    setPos :: p -> Vec3 -> p
    movePos :: p -> Vec3 -> p
    movePos hp movement =
        setPos hp (getPos hp + movement)

-- | A class for types that have a rotation
--   that can be retrieved and set.
class HasRotation r where
    {-# MINIMAL getRot, setRot #-}
    getRot :: r -> Vec3
    setRot :: r -> Vec3 -> r
    rotate :: r -> Vec3 -> r
    rotate r deltaR =
        setRot r (getRot r + deltaR)

-- TODO
class HasName i where
    {-# MINIMAL getName #-}
    getName :: i -> Int

-- | A type class for any two things
--   that can intersect.
class Intersect l r where
    {-# MINIMAL intersecting #-}
    intersecting :: l -> r -> Bool

-- | A class for types that have an
--   Axis-Aligned Bounding Box (AABB). Type must
--   also have a position for this to make sense.
class HasPosition a => HasAABB a where
    {-# MINIMAL getAABBs, transformedAABBs,
        getWholeAABB, transformedWholeAABB #-} 
    getAABBs :: a -> [AABB]
    transformedAABBs :: a -> [AABB]
    getWholeAABB :: a -> Maybe AABB
    transformedWholeAABB :: a -> Maybe AABB

instance HasPosition (Vec3) where
    getPos = id
    setPos _ = id

-- = Global data types

-- | The type used to contain the overall state of
--   the entire game.
data World t = World {
    worldPlayer :: GameObject t,
    worldEntities :: [GameObject t],
    worldTerrain :: Terrain,
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

-- = GameObject.

-- | Type representing nearly anything in the game
--   that is somewhat "physical".
data GameObject t = Player {
    playerPosition :: Vec3,
    playerRotation :: Vec3,
    playerVelocity :: Vec3,
    playerSpeed :: GLfloat,
    playerUpdate :: Game t (World t),
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
        let aabbs = modelAABBs $ entityModel pe
        in fromMaybe [] aabbs

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

-- = Model.

-- | A data type for representing a model
--   to be rendered.
data Model = Model {
    modelShader :: Shader,
    modelShaderVars :: [ShaderAttrib],
    modelTextures :: [Texture],
    modelVertCount :: GLint,
    modelAABBs :: Maybe [AABB],
    modelWholeAABB :: Maybe AABB
} deriving (Show, Eq)
emptyModel :: Model
emptyModel = Model (Shader 0 []) [] [] 0 (Just [AABB 0 0]) (Just $ AABB 0 0)

-- = Collision Detection.

-- | AABB (min corner) (max corner)
data AABB = AABB Vec3 Vec3 deriving (Show, Eq)

instance HasPosition AABB where
    getPos (AABB minV _) = minV
    setPos (AABB minV maxV) pos =
        AABB pos ((maxV - minV) + pos)

instance HasAABB AABB where
    getWholeAABB (AABB low high) = Just (AABB 0 (high - low))
    getAABBs (AABB low high) = [AABB 0 (high - low)]
    transformedAABBs aabb = [aabb]
    transformedWholeAABB = Just

instance Intersect AABB AABB where
    intersecting
        (AABB (Vec3 min1x min1y min1z) (Vec3 max1x max1y max1z))
        (AABB (Vec3 min2x min2y min2z) (Vec3 max2x max2y max2z)) =
            max1x > min2x &&
            min1x < max2x &&
            max1y > min2y &&
            min1y < max2y &&
            max1z > min2z &&
            min1z < max2z
    {-# INLINE intersecting #-}


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

-- | A pure Octree used to sort objects for
--   collision detection.
data Octree a =
    ONode AABB [Octree a]
  | OLeaf AABB [a] Int

data MOctree a =
    MNode AABB (MV.IOVector (MOctree a))
  | PNode AABB (V.Vector (MOctree a))
  | MLeaf AABB (MV.IOVector a) Int
  | PLeaf AABB (V.Vector a) Int

instance Show a => Show (Octree a) where
    show (ONode aabb children) =
        "Node: " ++ show aabb ++ "\n{\n" ++
        concatMap ((++"\n") . show) children ++ "}"
    show (OLeaf aabb contents _) =
        "Leaf: " ++ show aabb ++ ", " ++ show contents

-- = Procedurally Generated Terrain.

-- | A data type for a procedurally generally
--   terrain.
data Terrain = Terrain {
    terrainSimplex :: Simplex,
    terrainShader :: Shader,
    terrainShaderVars :: [ShaderAttrib],
    terrainTextures :: [Texture],
    terrainVertCount :: GLint,
    terrainWholeAABB :: AABB,
    terrainHeightFunc :: GLfloat -> GLfloat -> GLfloat
}
emptyTerrain :: Terrain
emptyTerrain = Terrain undefined
            (Shader (-1) []) [] [] 0
            (AABB 0 0)
            (\_ _ -> -10e100)

instance Intersect Terrain AABB where
    intersecting terr (AABB (Vec3 lx ly lz) _) =
        ly < terrainHeightFunc terr lx lz

instance Intersect AABB Terrain where
    intersecting (AABB (Vec3 lx ly lz) _) terr =
        ly < terrainHeightFunc terr lx lz

type Permutation = UV.Vector Int

-- | All the information needed to create and
--   keep track of a Simplex procedurally
--   generated terrain.
data Simplex = Simplex {
    simpSeed :: Int,
    simpDimensions :: (Int, Int),
    simpStartXY :: (Int, Int),
    simpSpacing :: GLfloat,
    simpOctaves :: Int,
    simpWavelength :: GLfloat,
    simpIntensity :: GLfloat,
    simpPerm :: Permutation
} deriving (Show, Eq)

-- = Input.

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

-- = Graphics

-- | All OpenGL handles for a Framebuffer and
--   Renderbuffer.
data Framebuffer = FB {
    fbufName :: GLuint,
    fbufTexture :: GLuint,
    fbufDimensions :: (GLint, GLint),
    fbufVBO :: GLuint,
    fbufRenderBuffer :: GLuint
} deriving (Show, Eq)

-- | An OpenGL program id and some uniform
--   ids so that glUniform* doesn't have to be
--   called more than once.
data Shader = Shader {
    shaderId :: GLuint,
    shaderUniforms :: [(String, GLint)]
} deriving (Show, Eq)

-- | Attrib id, Buffer id, size of attrib.
data ShaderAttrib = ShaderAttrib !GLuint !GLuint !GLuint
    deriving (Show, Eq)
-- | Name, Values
type ShaderUniform = (String, IO [GLfloat])

data Image = Image (GLint, GLint) (Ptr Word8)
    deriving (Show)

type Texture = (GLuint, GLint)

-- | The data passed around through the stages of
--   rendering.
data RenderInfo = RenderInfo {
    renderInfoShader :: Shader,
    renderInfoMatrices :: WorldMatrices
} deriving (Show, Eq)
emptyInfo :: RenderInfo
emptyInfo = RenderInfo (Shader (-1) []) emptyMatrices

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
    a + b = applyToIndices2 a b (+)
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

applyToIndices2 :: [[a]] -> [[b]] -> (a -> b -> c) -> [[c]]
applyToIndices2 (a:as) (b:bs) f =
    applyToIndices a b f : applyToIndices2 as bs f
applyToIndices2 _ _ _ = []
applyToIndices :: [a] -> [b] -> (a -> b -> c) -> [c]
applyToIndices (a:as) (b:bs) f =
    f a b : applyToIndices as bs f
applyToIndices _ _ _ = []
-- | Vector dot product.
gdotVec :: [GLfloat] -> [GLfloat] -> GLfloat
gdotVec a b = sum $ ginnerVec a b
-- | Inner product of two vectors.
ginnerVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
ginnerVec = zipWith (*)
