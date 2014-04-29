module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    updateWorld, applyGravity,
    moveObjectSafe,
    moveObject, moveSlideIntersecters,
    getModel
) where

import Data.Maybe (isJust, fromJust)
import Control.Monad.State (get)

import Engine.Core.Types
import Engine.Core.Vec (Vec3(..))
import Engine.Model.AABB (getObjectIntersecter)
import Engine.Object.Octree (findNearby)
import Engine.Object.Intersect (intersectsAny)

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
    world <- get
    let objectX = if dx /= 0
        then
            let objectXP = moveObject object $ Vec3 dx 0 0
                entities = findNearby (worldOctree world)
                            (movePos playerAABB (getPos object))
                intersectingX = intersectsAny objectXP entities
            in if intersectingX then object else objectXP
        else object

        objectY = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = findNearby (worldOctree world)
                            (movePos playerAABB (getPos object))
                    intersectingY = intersectsAny objectYP entities
                in if intersectingY then objectX else objectYP
            else objectX

    if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = findNearby (worldOctree world)
                            (movePos playerAABB (getPos object))
                intersectingZ = intersectsAny objectZP entities
            in if intersectingZ then return objectY else return objectZP
        else return objectY

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
