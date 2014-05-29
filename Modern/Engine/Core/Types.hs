{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Core.Types (
    Game(..), GameIO(..), HasName(..),
    World(..), WorldState(..), Graphics(..),
    GameObject(..), Input(..),
    emptyEntity, playerAABB, emptyGraphics,
    emptyWorldState
) where

import Data.Monoid
import Control.Applicative (Applicative)
import Data.Time (UTCTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import Data.Maybe (isNothing)
import Control.Monad.State
    (State, StateT, MonadIO,
     MonadState)
import qualified Data.Map as M
import qualified Data.IntMap as I

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


-- = New API

newtype Game' a = Game' {
    gameState' :: State World' a
} deriving (Functor, Applicative, Monad, MonadState World')

newtype GameIO' a = GameIO' {
    gameIoState' :: StateT World' IO a
} deriving (Functor, Applicative, Monad, MonadIO, MonadState World')


data World' = World' {
    worldObjCount :: Int,
    world'Objs :: I.IntMap GameObject',
    world'Octree :: Octree AABB,
    world'Graphics :: Graphics,
    world'State :: WorldState
}

type GameObject' = M.Map String Attr

test :: GameObject'
test = fromList $ [
    (Position 0)
    ]

test2 :: Attr
test2 = Rotation 0

test3 :: Attr
test3 = Position 1

data Attr =
    Position Vec3
  | Rotation Vec3
  | Velocity Vec3
  | Update UpdateType
  | ModelAttr Model
  | InputField (Input ())
  | BoundingBox AABB
  | IntersectCheck (GameObject' -> Bool)
-- TODO: FIX/REMOVE
instance Show Attr where
    show = attrName

data UpdateType =
    DirectUpdate (GameObject' -> State World' GameObject')
  | GlobalUpdate (State World' ())
instance Monoid UpdateType where
    mempty = DirectUpdate return
    mappend (DirectUpdate l) (DirectUpdate r) = DirectUpdate $ (r =<<) . l
    mappend (GlobalUpdate l) (GlobalUpdate r) = GlobalUpdate $ l >> r
    mappend (DirectUpdate direct) (GlobalUpdate global) =
        DirectUpdate $ ((global >>) . return =<<) . direct
    mappend (GlobalUpdate global) (DirectUpdate direct) =
        DirectUpdate $ (global >>) . direct

collisionResolve :: Attr -> Attr -> Attr
collisionResolve (Position l) (Position r) = Position $ l+r
collisionResolve (Rotation l) (Rotation r) = Rotation $ l+r
collisionResolve (Velocity l) (Velocity r) = Velocity $ l+r
collisionResolve (Update l) (Update r) = Update $ l <> r
-- TODO
collisionResolve l@(ModelAttr{}) (ModelAttr{}) = l
-- TODO
collisionResolve l@(InputField{}) (InputField{}) = l
collisionResolve l@(BoundingBox{}) (BoundingBox{}) = l
collisionResolve l@(IntersectCheck{}) (IntersectCheck{}) = l
collisionResolve _ _ =
    error $ "Engine.Core.Types.collisionResolve -" ++
            "given Attr collision cannot be resolved."

-- | /O(log n)/ Get an attrib from GameObject.
(@!) :: GameObject' -> String -> Maybe Attr
(@!) = flip M.lookup

-- | /O(log n) / Add an attrib to a GameObject'.
(@+) :: Attr -> GameObject' -> GameObject'
(@+) x xs = M.insertWith collisionResolve (attrName x) x xs

-- | /O(log n)/ Delete an attrib from a GameObject'.
(@-) :: GameObject' -> String -> GameObject'
(@-) = flip M.delete

-- | /O(log n)/ Modify an attrib of a GameObject'.
modify :: (Attr -> Attr) -> String -> GameObject' -> GameObject'
modify = M.adjust

-- | /O(n * log n)/ create GameObject' from list of "Attr"s.
fromList :: [Attr] -> GameObject'
fromList = M.fromListWith collisionResolve . createKeys

createKeys :: [Attr] -> [(String, Attr)]
createKeys = map (\x -> (attrName x, x))

getPosition :: GameObject' -> Vec3
getPosition obj =
    getGeneric obj (Position undefined) (\(Position x)->x)
getRotation :: GameObject' -> Vec3
getRotation obj =
    getGeneric obj (Rotation undefined) (\(Position x)->x)

getGeneric :: GameObject' -> Attr -> (Attr -> a) -> a
getGeneric obj defVal func =
    let mval = obj @! attrName defVal
    in maybe (func defVal) func mval

position :: String
position = attrName $ Position undefined
rotation :: String
rotation = attrName $ Rotation undefined
velocity :: String
velocity = attrName $ Velocity undefined
update :: String
update = attrName $ Update undefined
model :: String
model = attrName $ ModelAttr undefined
input :: String
input = attrName $ InputField undefined
boundingBox :: String
boundingBox = attrName $ BoundingBox undefined
intersectCheck :: String
intersectCheck = attrName $ IntersectCheck undefined

attrName :: Attr -> String
attrName (Position{}) = "pos"
attrName (Rotation{}) = "rot"
attrName (Velocity{}) = "vel"
attrName (Update{}) = "update"
attrName (ModelAttr{}) = "modrend"
attrName (InputField{}) = "input"
attrName (BoundingBox{}) = "bbox"
attrName (IntersectCheck{}) = "icheck"

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
    stateTime :: UTCTime,
    stateDelta :: GLfloat,
    statePaused :: Bool,
    stateWindow :: Window
} deriving (Show)
emptyWorldState :: WorldState
emptyWorldState = WorldState (posixSecondsToUTCTime 0) 0 False defaultWindow

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
        ", speed = " ++ show (playerSpeed obj) ++
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
