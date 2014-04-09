module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    moveObjectSlideIntersecter,
    updateWorld, applyGravity,
    moveObjectSafe,
    moveObject, moveObjectSlideAllIntersecters,
    getModel
) where

import Data.Maybe (isJust, fromJust)
import Control.Monad.State

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Types
import Engine.Core.Vec
import Engine.Model.AABB
import Engine.Object.Collision

-- | Call updateObject on all GameObjects in
--   the world.
--updateWorld :: World t -> World t
--updateWorld world = undefined--performUpdateAll world (worldEntities world)

updateWorld :: Game t (World t)
updateWorld = do
    world <- get
    newObjs <- updateEntities
    return world{worldEntities = newObjs}
    -- $ performUpdateAll world (worldEntities world)

updateEntities :: Game t [GameObject t]
updateEntities = do
    world <- get
    mapM (\o -> entityUpdate o o) (worldEntities world)

-- | Safely move an object down, simulating
--   very simple gravity.
applyGravity :: World t -> GameObject t -> GameObject t
applyGravity world object =
    moveObjectSafe world object (Vec3 0 (-0.1) 0)

-- | Move an object on each axis independently, and return
--   the first AABB it intersected with, if applicable.
moveObjectSlideIntersecter ::
    World t -> GameObject t -> Vec3 GLfloat -> (GameObject t, Maybe AABB)
moveObjectSlideIntersecter world object (Vec3 dx dy dz) =
    let (objectX, abX) = if dx /= 0
            then
                let objectXP = moveObject object $ Vec3 dx 0 0
                    entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                    intersectingX = getObjectIntersecter objectXP entities
                in if isJust intersectingX
                        then (object, intersectingX)
                    else (objectXP, Nothing)
            else (object, Nothing)

        (objectY, abY) = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                    intersectingY = getObjectIntersecter objectYP entities
                in if isJust intersectingY
                        then (objectX, intersectingY)
                    else (objectYP, abX)
            else (objectX, abX)

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                intersectingZ = getObjectIntersecter objectZP entities
            in if isJust intersectingZ
                        then (objectY, intersectingZ)
                    else (objectZP, abY)
            else (objectY, abY)

-- | Move an object on each axis independently, and return
--   all AABBs it intersected with, if applicable.
moveObjectSlideAllIntersecters ::
    World t -> GameObject t -> Vec3 GLfloat -> (GameObject t, Maybe [AABB])
moveObjectSlideAllIntersecters world object (Vec3 dx dy dz) =
    let (objectX, abX) = if dx /= 0
            then
                let objectXP = moveObject object $ Vec3 dx 0 0
                    entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                    intersectingX = getObjectIntersecter objectXP entities
                in if isJust intersectingX
                        then (object, intersectingX)
                    else (objectXP, Nothing)
            else (object, Nothing)

        (objectY, abY) = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = findNearby (worldOctree world) (movePos playerAABB (getPos object)) --worldEntities world
                    intersectingY = getObjectIntersecter objectYP entities
                in if isJust intersectingY
                        then (objectX, intersectingY)
                    else (objectYP, abX)
            else (objectX, abX)

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                intersectingZ = getObjectIntersecter objectZP entities
            in if isJust intersectingZ
                        then
                            let filtered = filter isJust [abX, abY, intersectingZ]
                            in (objectY, if null filtered
                                            then Nothing
                                        else Just $ map fromJust filtered)
                    else
                        let filtered = filter isJust [abX, abY]
                        in (objectZP, if null filtered
                                        then Nothing
                                    else Just $ map fromJust filtered)
            else
                let filtered = filter isJust [abX, abY]
                in (objectY, if null filtered
                                then Nothing
                            else Just $ map fromJust filtered)


moveObjectSlide :: World t -> GameObject t -> Vec3 GLfloat -> GameObject t
moveObjectSlide world object (Vec3 dx dy dz) =
    let objectX = if dx /= 0
        then
            let objectXP = moveObject object $ Vec3 dx 0 0
                entities = findNearby (worldOctree world) (movePos playerAABB (getPos object)) --worldEntities world
                intersectingX = isIntersectingAny objectXP entities
            in if intersectingX then object else objectXP
        else object

        objectY = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                    intersectingY = isIntersectingAny objectYP entities
                in if intersectingY then objectX else objectYP
            else objectX

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
                intersectingZ = isIntersectingAny objectZP entities
            in if intersectingZ then objectY else objectZP
        else objectY

moveObjectSafe :: World t -> GameObject t -> Vec3 GLfloat -> GameObject t
moveObjectSafe world object vec =
    let moved = moveObject object vec
        entities = findNearby (worldOctree world) (movePos playerAABB (getPos object))--worldEntities world
        intersectingObject = isIntersectingAny moved entities
    in if intersectingObject
        then object
    else moved

moveObject :: GameObject t -> Vec3 GLfloat -> GameObject t
moveObject obj deltaPos =
    setPos obj (getPos obj + deltaPos)

getModel :: GameObject t -> Model
getModel (Player{}) =
    error "GameObject.getModel called on Player"
getModel pe@(Entity{}) = entityModel pe
