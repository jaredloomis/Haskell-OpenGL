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
addToUpdate :: (GameObject a) => IORef [a] -> a -> IO ()
addToUpdate ref object = do
    os <- readIORef ref
    ref $= os ++ [object]

-- | Move inner GameObject
moveActor :: Actor -> Vec2 -> IO ()
moveActor actor aPos = do
    object <- readIORef actor
    actor $= moveObject object aPos

-- | Calculate new GameObject based on old GameObject
-- | and new Vec2 position.
moveObject :: GameObject a => a -> Vec2 -> a
moveObject object (dx, dy) =    let (ix, iy) = getPos object 
                                in setPos object (ix+dx, iy+dy)

----------------------------------
-- | ----- Type Synonyms ---- | --
----------------------------------

-- | Any Entity whose values change.
type Actor = IORef Entity

-- | Simplifies type signatures mostly.
type Vec2 = (GL.GLfloat, GL.GLfloat)

-- | IO () action that draws an action.
type DrawAction = IO ()

----------------------------------
--- | - Classes & Instances - | --
----------------------------------

-- | Class to be used by anything that will be
-- | rendered on screen and has a position.
class GameObject o where
    getPos :: o -> Vec2
    setPos :: o -> Vec2 -> o
    renderObject :: o -> DrawAction
    update :: o -> o

instance GameObject Player where
    getPos = playerPosition
    setPos player goPos = player{playerPosition = goPos}
    renderObject = playerDisplay
    update player = let newX = min ((fst $ playerPosition player) + 1.0e-4) 1
                    in player{playerPosition = (newX, snd $ playerPosition player)}

instance GameObject Entity where
    getPos = entityPosition
    setPos entity goPos = entity{entityPosition = goPos}
    renderObject = entityDisplay
    update entity = entity

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
    worldPlayer :: Player,
    worldInput :: Input
}

-- | Mostly settings, current state.
data GameState = GameState {
    delta :: GL.GLfloat
}

-- | Data type for player.
data Player = Player {
    playerPosition :: Vec2,
    playerDisplay :: DrawAction,
    playerInput :: Input
}
-- | Data type for other things on screen.
data Entity = Entity {
    entityPosition :: Vec2,
    entityDisplay :: DrawAction
}

-- | Data type for encapsulating
-- | values relating to player input.
data Input = Input {
    inputKeys :: [(GLUT.Key, Bool)]
}
