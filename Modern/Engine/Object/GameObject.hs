module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    updateWorld, applyGravity,
    moveObjectSafe,
    moveObject, moveSlideIntersecters,
    getModel
) where

import Control.Monad (foldM)
import Data.Maybe (isJust, fromJust)
import Control.Monad.State (get)

import Engine.Core.Types
    (Game, World(..), GameObject(..),
     playerAABB)
import Engine.Core.HasPosition (HasPosition(..))
import Engine.Core.Vec (Vec3(..))
import Engine.Model.AABB (AABB(..))
import Engine.Model.Model (Model(..))
import Engine.Object.Octree (findNearby)
import Engine.Object.Intersect (intersectsAny, getObjectIntersecter)

updateWorld :: Game t (World t)
updateWorld = do
    world <- get
    newObjs <- updateEntities
    return world{worldEntities = newObjs}

updateEntities :: Game t [GameObject t]
updateEntities = do
    world <- get
    mapM (\o -> entityUpdate o o) (worldEntities world)

-- | Safely move an object down, simulating
--   very simple gravity.
applyGravity :: GameObject t -> Game t (GameObject t)
applyGravity object =
    moveObjectSafe object (Vec3 0 (-0.1) 0)

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
    foldM (\g x -> return $ moveObject g x) object
        [Vec3 dx 0 0, Vec3 0 dy 0, Vec3 0 0 dz]

moveObjectSafe :: GameObject t -> Vec3 -> Game t (GameObject t)
moveObjectSafe object vec = do
    world <- get
    let moved = moveObject object vec
        entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))
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
