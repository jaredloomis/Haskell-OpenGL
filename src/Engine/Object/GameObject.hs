module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    updateWorld, applyGravity,
    moveObjectSafe,
    moveObject, moveSlideIntersecters,
    getModel
) where

import Control.Applicative ((<$>))
import Control.Monad (foldM)
import Data.Maybe (isJust, fromJust)
import Control.Monad.State (get)

import Engine.Core.Types
    (Game, World(..), GameObject(..),
     playerAABB)
import Engine.Core.HasPosition
    (HasPosition(..))
import Engine.Core.Vec (Vec3(..))
import Engine.Model.AABB (AABB(..))
import Engine.Model.Model (Model(..))
import Engine.Object.Octree (findNearby)
import Engine.Object.Intersect (intersectsAny, getObjectIntersecter)
import Engine.Core.World (getWorldDelta)

-- = Utility update functions.

updateWorld :: Game t (World t)
updateWorld = do
    world <- get
    newObjs <- updateEntities
    return world{worldEntities = newObjs}

updateEntities :: Game t [GameObject t]
updateEntities = do
    world <- get
    mapM (\o -> entityUpdate o o) (worldEntities world)

-- = Velocity-changing functions.

-- | Change Player's velocity to simulate gravity.
applyGravity :: GameObject t -> Game t (GameObject t)
applyGravity p@(Player{}) = do
    let Vec3 pvx pvy pvz = playerVelocity p
    world <- get

    atRest <- if pvy < 0
                then
                    let curPos = getPos p
                    in do
                        x <- getPos <$> moveObjectSafe p (Vec3 0 pvy 0)
                        return $ curPos == x
            else if pvy == 0
                then
                    let curPos = getPos p
                    in do
                        x <- getPos <$> moveObjectSafe p (Vec3 0 (-0.5) 0)
                        return $ curPos == x
            else return False
    if atRest
        then return $ p{playerVelocity = Vec3 pvx 0.0 pvz}
    else
        let newY = max (pvy - getWorldDelta world * 0.5) (-1)
        in return p{playerVelocity =
            Vec3 pvx newY pvz}
applyGravity _ =
    error "Player.applyGravityVelocity can only be used on Players."

-- = Position-changing functions.

-- | Move an object on each axis independently, and return
--   all AABBs it intersected with, if applicable.
moveSlideIntersecters ::
    GameObject t -> Vec3 -> Game t (GameObject t, [AABB])
moveSlideIntersecters object (Vec3 dx dy dz) = do
    (movedx, intx) <- moveSlideIntersecter object (Vec3 dx 0 0)
    (movedy, inty) <- moveSlideIntersecter movedx (Vec3 0 dy 0)
    (movedz, intz) <- moveSlideIntersecter movedy (Vec3 0 0 dz)

    let aabbs = map fromJust $ filter isJust [intx, inty, intz]
    return (movedz, aabbs)

moveSlideIntersecter :: GameObject t -> Vec3 -> Game t (GameObject t, Maybe AABB)
moveSlideIntersecter object movement = do
    world <- get
    let objectXP = moveObject object movement
        entities = findNearby (worldOctree world)
                    (movePos playerAABB (getPos object))
        intersect = getObjectIntersecter objectXP entities
    if isJust intersect
        then return (object, intersect)
    else return (objectXP, Nothing)

moveObjectSlide :: GameObject t -> Vec3 -> Game t (GameObject t)
moveObjectSlide object (Vec3 dx dy dz) = do
    foldM ((return .) . moveObject) object
        [Vec3 dx 0 0, Vec3 0 dy 0, Vec3 0 0 dz]

moveObjectSafe :: GameObject t -> Vec3 -> Game t (GameObject t)
moveObjectSafe object vec = do
    world <- get
    let moved = moveObject object vec
        entities = findNearby (worldOctree world)
                              (movePos playerAABB (getPos object))
        intersectingObject = intersectsAny moved entities
    if intersectingObject
        then return object
    else return moved

moveObject :: GameObject t -> Vec3 -> GameObject t
moveObject obj deltaPos =
    setPos obj (getPos obj + deltaPos)

getModel :: GameObject t -> Model
getModel (Player{}) =
    error "GameObject.getModel called on Player"
getModel pe@(Entity{}) = entityModel pe
