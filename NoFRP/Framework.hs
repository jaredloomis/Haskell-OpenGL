module Framework where

import Data.IORef
import Data.List

import qualified Graphics.Rendering.OpenGL as GL
import qualified Graphics.UI.GLUT as GLUT (Key)

----------------------------------
-- | ------ Functions ------- | --
----------------------------------

-- | No using GL.$=, makes it look better
($=) :: GL.HasSetter s => s a -> a -> IO ()
($=) a b = a GL.$= b

---- | ConX functions | ----

-- | Apply updateCP
updateConPlayerRef :: IORef ConPlayer -> Maybe [GameObject] -> IO ()
updateConPlayerRef cpRef others = do
    cp <- readIORef cpRef
    cpRef $= updateConPlayer cp others

-- | Apply update function to entity
updateConEntityRef :: IORef ConEntity -> IO ()
updateConEntityRef con = do
    container <- readIORef con
    let entities = conEntityEntities container
    con $= ConEntity (updateObjects entities)

-- | Apply the ConPlayer's Input's update functions
--   for each key that is down. Collision detection is
--   done on the array of GameObjects given as a second
--   argument.
updateConPlayer :: ConPlayer -> Maybe [GameObject] -> ConPlayer
updateConPlayer cp@(ConPlayer _ origIn) others =
    -- | Let inner function do the work, then replace the
    --   Input that was affected by recursion.
    (innerUpdate cp){conPlayerInput = origIn}
    where
        innerUpdate :: ConPlayer -> ConPlayer
        innerUpdate (ConPlayer innerP (Input ((_, isDown, func):xs))) =
            -- | If the key is down, apply corresponding function to player
            let newPlayer = if isDown then func innerP others else innerP
                newCP = ConPlayer newPlayer $ Input xs
            in innerUpdate newCP
        innerUpdate innerCP@(ConPlayer _ (Input [])) = innerCP

-- | Call updateObjects on all GameObjects in ConEntity
updateConEntity :: ConEntity -> ConEntity
updateConEntity ce = ConEntity (updateObjects (conEntityEntities ce))

---- | Normal functions | ----

setPos :: GameObject -> Vec2 -> GameObject
setPos player@(Player{}) goPos = player{playerPosition = goPos}
setPos entity@(Entity{}) goPos = entity{entityPosition = goPos}

getPos :: GameObject -> Vec2
getPos player@(Player{}) = playerPosition player
getPos entity@(Entity{}) = entityPosition entity

getPhysics :: GameObject -> Physics
getPhysics p@(Player{}) = playerPhysics p
getPhysics e@(Entity{}) = entityPhysics e

-- | Calculate new GameObject based on old GameObject
--   and new Vec2 position.
moveObject :: GameObject -> Vec2 -> GameObject
moveObject p@(Player (ix, iy)  _ _) (dx, dy) = setPos p (ix+dx, iy+dy)
moveObject e@(Entity (ix, iy)  _ _) (dx, dy) = setPos e (ix+dx, iy+dy)

-- | Do same as moveObject, but use collision detection on given
--   GameObjects.
moveObjectSafe :: GameObject -> [GameObject] -> Vec2 -> GameObject
moveObjectSafe mover collide (dx, dy) =
    -- | GameObject that will be returned if in passes collision test.
    let movedObject = setPos mover (fst (getPos mover)+dx, snd (getPos mover)+dy)
    -- | if any of the tests of (x `objectsCollide` movedObject) are true,
    --   return the original object. Otherwise, return the movedObject.
    in if [True] `isInfixOf` map (`objectsCollide` movedObject) collide
        then mover
    else movedObject

objectsCollide :: GameObject -> GameObject -> Bool
objectsCollide a b = 
    let (ax, ay) = getPos a
        (bx, by) = getPos b
        (aw, ah) = boundingBox $ getPhysics a
        (bw, bh) = boundingBox $ getPhysics b
    in ax < (bx+bw) && ay < (by+bh) && 
        (ax+aw) > bx && (ay+ah) > by

updateObjects :: [GameObject] -> [GameObject]
updateObjects = map update

update :: GameObject -> GameObject
update player@(Player{}) = player
update entity@(Entity{}) = entity

----------------------------------
-- | ----- Type Synonyms ---- | --
----------------------------------

-- | Simplifies type signatures mostly.
type Vec2 = (GL.GLfloat, GL.GLfloat)

-- | IO () action that draws an action.
type DrawAction = IO ()

----------------------------------
-- | -- Classes/Instances -- | ---
----------------------------------

instance Show GameObject where
    show (Player pos _ _) = "Player:\n\tPosition: " ++ show pos

instance Show Input where
    show (Input ((key, isDown, _):rest)) = 
        "(" ++ show key ++ ", down: " ++ show isDown ++ ")" ++ show (Input rest)
    show (Input []) = []

----------------------------------
-- | ------ Data Types ------ | --
----------------------------------


---- | -- Conglomerate data types | ----

-- | High level data type containing
--   other conglomerate datas, used for
--   representing state of entire game.
data World = World {
    worldPlayer :: !(IORef ConPlayer),
    worldDynamic :: !(Maybe (IORef ConEntity)),
    worldStatic :: !(Maybe ConEntity),
    worldSettings :: !(Maybe ConSettings)
}

-- | All information relating to the player
--   and all entities.
data ConObject = ConObject {
    conObjectPlayer :: !ConPlayer,
    conObjectEntity :: !ConEntity
}

-- | All information relating to player
data ConPlayer = ConPlayer {
    conPlayerPlayer :: !GameObject,
    conPlayerInput :: !Input
}

-- | All information relating to entities
newtype ConEntity = ConEntity {
    conEntityEntities :: [GameObject]
}

-- | Data type for game settings
newtype ConSettings = ConSettings {
    conSettingState :: GameState
}

---- | -- Base data types -- | ----

-- | Mostly settings, current state.
newtype GameState = GameState {
    gameDelta :: GL.GLfloat
}

-- | Any object that has a position in the game.
data GameObject = Player {
    playerPosition :: !Vec2,
    playerDisplay :: !DrawAction,
    playerPhysics :: !Physics
} | Entity {
    entityPosition :: !Vec2,
    entityDisplay :: !DrawAction,
    entityPhysics :: !Physics
}

-- | Data type for encapsulating
--   values relating to player input.
newtype Input = Input {
    inputKeys :: [(GLUT.Key,  -- ^ Referenced key
                   Bool,      -- ^ Is down
                   GameObject -> Maybe [GameObject] -> GameObject -- ^ Function
                  )]
}

-- | Data type for a collection of
--   values used in physics calculations
data Physics = Physics {
    physicsUpdate :: GameObject -> GameObject,
    boundingBox :: !Vec2,
    physicsVelocity :: !GL.GLfloat
}
