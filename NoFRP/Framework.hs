{-# LANGUAGE RankNTypes #-}
module Framework where
import Data.IORef
import Graphics.Rendering.OpenGL as GL
import Graphics.UI.GLUT as GLUT (Key)

----------------------------------
-- | ------ Functions ------- | --
----------------------------------

-- | Add a GameObject to an IORef containg a list of
-- | GameObjects.
addToUpdate :: IORef [GameObject] -> GameObject -> IO ()
addToUpdate ref object = do
    os <- readIORef ref
    ref $= os ++ [object]

-- | Move inner GameObject
moveActor :: Actor -> Vec2 -> IO ()
moveActor actor aPos = do
    object <- readIORef actor
    actor $= moveObject object aPos

setPos :: GameObject -> Vec2 -> GameObject
setPos player@(Player{}) goPos = player{playerPosition = goPos}
setPos entity@(Entity{}) goPos = entity{entityPosition = goPos}

getPos :: GameObject -> Vec2
getPos player@(Player{}) = playerPosition player
getPos entity@(Entity{}) = entityPosition entity

-- | Calculate new GameObject based on old GameObject
-- | and new Vec2 position.
moveObject :: GameObject -> Vec2 -> GameObject
moveObject p@(Player (ix, iy) _ _ _) (dx, dy) = setPos p (ix+dx, iy+dy)

renderObject :: GameObject -> IO ()
renderObject player@(Player{}) = playerDisplay player
renderObject entity@(Entity{}) = entityDisplay entity

update :: GameObject -> GameObject
update player@(Player _ _ origIn _) =
    (innerUpdate player){playerInput = origIn}
    where 
        innerUpdate innerP@(Player _ _ (Input ((_, isDown, func):xs)) _) =
            let newInput = Input xs
                newPlayer = if isDown then func innerP else innerP
                newPlayer2 = Player (playerPosition newPlayer) (playerDisplay newPlayer) newInput (playerPhysics newPlayer)
            in innerUpdate newPlayer2

--innerUpdate $ newPlayer{playerInput = newInput}
        innerUpdate p@(Player _ _ (Input []) _) = p
{-
if isDown 
                then update $ (func player){playerInput = newInput}
            else update $ player{playerInput = newInput}  -}
update entity@(Entity{}) = entity

----------------------------------
-- | ----- Type Synonyms ---- | --
----------------------------------

-- | Any Entity whose values change.
type Actor = IORef GameObject

-- | Simplifies type signatures mostly.
type Vec2 = (GL.GLfloat, GL.GLfloat)

-- | IO () action that draws an action.
type DrawAction = IO ()

----------------------------------
-- | -- Classes/Instances -- | ---
----------------------------------

instance Show GameObject where
    show (Player pos _ input physics) = 
        "Player:\n\tPosition: " ++ (show pos) ++ "\n\tInput: " ++ (show input)-- ++ "\n\tPhysics" ++ (show physics)

instance Show Input where
    show (Input ((key, isDown, _):rest)) = 
        "(" ++ (show key) ++ ", down: " ++ (show isDown) ++ ")" ++ (show $ Input rest)
    show (Input []) = []

----------------------------------
-- | ------ Data Types ------ | --
----------------------------------

-- | Possible data type for representing
-- | entire world, I would prefer to use
-- | smaller individual datas and give
-- | functions only the ones they need
-- | instead of wrapping them all in one
-- | big data.
data World = World {
    worldPlayer :: GameObject,
    worldInput :: Input
}

-- | Mostly settings, current state.
data GameState = GameState {
    delta :: GL.GLfloat
}

data GameObject = Player {
    playerPosition :: Vec2,
    playerDisplay :: DrawAction,
    playerInput :: Input,
    playerPhysics :: Physics
} | Entity {
    entityPosition :: Vec2,
    entityDisplay :: DrawAction,
    entityPhysics :: Physics
}

-- | Data type for encapsulating
-- | values relating to player input.
data Input = Input {
    inputKeys :: [(GLUT.Key, Bool, GameObject -> GameObject)]
}

data Physics = Physics {
    physicsUpdate :: GameObject -> GameObject,
    velocity :: GLfloat
}
