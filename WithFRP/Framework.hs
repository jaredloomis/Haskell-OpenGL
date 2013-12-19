{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE RankNTypes #-}
-- | This module contains only the parts of the game/engine
--   that affect the overall structure of the Framework.
module Framework where

import Control.Applicative (liftA)
import Control.Monad (replicateM)

import qualified FRP.Elerea.Simple as ES
import qualified Graphics.Rendering.OpenGL as GL (GLfloat)

main :: IO ()
main = do
    let pTest = Player (0, 0) exampleUpdate
    comp <- (ES.start $ playerUpdate pTest)
    firstResults <- replicateM 7 comp
    putStrLn $ show firstResults
    return ()

---------------------------
------- Functions ---------
---------------------------

createUpdate :: Player ->
                (Player -> Player) ->
                ES.SignalGen (ES.Signal Player)
createUpdate object func = do
    rec let appliedFunc = liftA func an
        an <- ES.delay object appliedFunc
    return an

exampleUpdate :: ES.SignalGen (ES.Signal Player)
exampleUpdate = do
    rec let func = liftA (`moveObject` (1, 0)) an1
        an1 <- ES.delay (Player (0, 0) exampleUpdate) func
    return an1

setPos :: Player -> Vec2 -> Player
setPos player@(Player{}) (xPos, yPos) = player{playerPosition=(xPos, yPos)}

moveObject :: Player -> Vec2 -> Player
moveObject player@(Player{}) (deltaX, deltaY) =
    let (startX, startY) = playerPosition player
    in player{playerPosition = (startX + deltaX, startY + deltaY)}

---------------------------
------- Data Types --------
---------------------------

data Player = Player {
    playerPosition :: Vec2,
    playerUpdate :: UpdateSignal Player
}

---------------------------
----- Type Synonyms -------
---------------------------

-- | A type synonym to a 2-tuple of GLfloats
type Vec2 = (GL.GLfloat, GL.GLfloat)

-- | An update function signal.
type UpdateSignal a = ES.SignalGen (ES.Signal a)

-- | A data type that is of the class HasPosition and HasUpdate
type Entity = (HasPosition a, HasUpdate a) => a

---------------------------
--------- Classes ---------
---------------------------

-- | Class for anything that has x and y coordinates. 
--   It does not necessarily need to be displayed on
--   screen.
class HasPosition x where
    getPosition :: x -> Vec2
    setPosition :: x -> Vec2 -> x

    movePosition :: x -> Vec2 -> x
    movePosition hasP (deltaX, deltaY) =
        let (startX, startY) = getPosition hasP
        in setPosition hasP (startX + deltaX, startY + deltaY)

-- | Used for types that can be updated using an UpdateSignal
--   type.
class HasUpdate a where
    updateSignal :: a -> UpdateSignal a

---------------------------
------- Instances ---------
---------------------------

instance HasPosition Player where
    getPosition = playerPosition
    setPosition player newPos = player{playerPosition=newPos}

instance HasUpdate Player where
    updateSignal = playerUpdate

instance Show Player where
    show (Player (xp, yp) _) =
        "Player: (" ++ (show xp) ++ ", " ++ (show yp) ++ ")\n"
