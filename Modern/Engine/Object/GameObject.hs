module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    moveObjectSlideIntersecter,
    updateAll, updateObject,
    updateWorld, applyGravity,
    moveObjectSafe, calculateNewWholeAABB,
    moveObject, moveObjectSlideAllIntersecters,
    getModel
) where

import Data.Maybe (isJust, fromJust)

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Core.Vec
import Engine.Model.Model
import Engine.Model.AABB

-- | Test if two objects intersect.
objectsIntersect :: GameObject t -> GameObject t -> Bool
objectsIntersect l r
    | isJust (getWholeAABB l) &&
      isJust (getWholeAABB r) =
        let Just wholeabl = calculateNewWholeAABB l
            Just wholeabr = calculateNewWholeAABB r
        in intersecting wholeabl wholeabr &&
            (not (isJust (getAABBs l) && isJust (getAABBs r)) ||
                let Just newl = calculateNewAABBs l
                    Just newr = calculateNewAABBs r
                in anyIntersect (head newl) newr)
    | otherwise = False

-- | Using the object's current AABB and position,
--   create a new AABB.
calculateNewWholeAABB :: GameObject t -> Maybe AABB
calculateNewWholeAABB obj
    | isJust (getWholeAABB obj) =
        let (Just (AABB l r)) = getWholeAABB obj
            pos = getPos obj
        in Just $ AABB (l + pos) (r + pos)
    | otherwise = Nothing

-- | Using the object's current AABBs and position,
--   create a new AABB.
calculateNewAABBs :: GameObject t -> Maybe [AABB]
calculateNewAABBs obj
    | isJust (getAABBs obj) =
        let (Just aabbs) = getAABBs obj
        in Just $ transformAll aabbs (getPos obj)
    | otherwise = Nothing

transformAll :: [AABB] -> Vec3 GLfloat -> [AABB]
transformAll (AABB l r : xs) pos =
    AABB (l + pos) (r + pos) : transformAll xs pos
transformAll [] _ = []

-- | Check if the needle intersects with any in the
--   haystack.
isIntersectingAny :: GameObject t -> [GameObject t] -> Bool
isIntersectingAny collider (collidee:xs) =
    objectsIntersect collider collidee ||
        isIntersectingAny collider xs
isIntersectingAny _ [] = False

-- | Check if the needle intersects with any in the haystack,
--   if it does, the intersected AABB is returned.
getObjectIntersecter :: GameObject t -> [GameObject t] -> Maybe AABB
getObjectIntersecter collider (collidee:xs) =
    let intersecter = getIntersecter collider collidee
    in if isJust intersecter
        then intersecter
    else getObjectIntersecter collider xs
getObjectIntersecter _ [] = Nothing

-- | Test if two objects intersect, yeilding the
--   offending AABB if they do.
getIntersecter :: GameObject t -> GameObject t -> Maybe AABB
getIntersecter l r
    | isJust (getWholeAABB l) &&
      isJust (getWholeAABB r) =
        let Just wholeabl = calculateNewWholeAABB l
            Just wholeabr = calculateNewWholeAABB r
        in
            if intersecting wholeabl wholeabr
                then if not (isJust (getAABBs l) && isJust (getAABBs r))
                    then Just wholeabr
                else
                    let Just newl = calculateNewAABBs l
                        Just newr = calculateNewAABBs r
                    in anyIntersectGet (head newl) newr
            else Nothing
    | otherwise = Nothing

-- | Update an GameObject.
updateObject :: GameObject t -> World t -> GameObject t
updateObject p@(Player{}) w = worldPlayer $ playerUpdate p w
updateObject pe@(PureEntity{}) _ = pentityUpdate pe pe
updateObject ee@(EffectfulEntity{}) w = eentityUpdate ee w ee

-- | Call updateObject on all IORef'd GameObjects in
--   the world.
updateWorld :: World t -> World t
updateWorld world =
    let objs =  worldEntities world
        newObjs = updateAll objs world
    in world{worldEntities = newObjs}

-- | Call updateObject on all GameObjects,
--   given the World.
updateAll :: [GameObject t] -> World t -> [GameObject t]
updateAll objects world =
    map (`updateObject` world) objects

-- | Get surrounding AABB of object.
getWholeAABB :: GameObject t -> Maybe AABB
getWholeAABB (Player{}) = Just playerAABB
getWholeAABB pe@(PureEntity{}) = modelWholeAABB $ pentityModel pe
getWholeAABB ee@(EffectfulEntity{}) = modelWholeAABB $ eentityModel ee

-- | Get specific AABBs of object.
getAABBs :: GameObject t -> Maybe [AABB]
getAABBs pe@(PureEntity{}) = modelAABBs $ pentityModel pe
getAABBs (Player{}) = Just [playerAABB]
getAABBs ee@(EffectfulEntity{}) = modelAABBs $ eentityModel ee

-- | Safely move an object down, simulating
--   very simple gravity.
applyGravity :: World t -> GameObject t -> GameObject t
applyGravity world object =
    moveObjectSafe world object (Vec3 0 (-0.1) 0)

-- | Move an object on each axis independently, and return
--   the AABB it intersected with, if applicable.
moveObjectSlideIntersecter ::
    World t -> GameObject t -> Vec3 GLfloat -> (GameObject t, Maybe AABB)
moveObjectSlideIntersecter world object (Vec3 dx dy dz) =
    let (objectX, abX) = if dx /= 0
            then
                let objectXP = moveObject object $ Vec3 dx 0 0
                    entities = worldEntities world
                    intersectingX = getObjectIntersecter objectXP entities
                in if isJust intersectingX
                        then (object, intersectingX)
                    else (objectXP, Nothing)
            else (object, Nothing)

        (objectY, abY) = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = worldEntities world
                    intersectingY = getObjectIntersecter objectYP entities
                in if isJust intersectingY
                        then (objectX, intersectingY)
                    else (objectYP, abX)
            else (objectX, abX)

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = worldEntities world
                intersectingZ = getObjectIntersecter objectZP entities
            in if isJust intersectingZ
                        then (objectY, intersectingZ)
                    else (objectZP, abY)
            else (objectY, abY)

-- | Move an object on each axis independently, and return
--   the AABB it intersected with, if applicable.
moveObjectSlideAllIntersecters ::
    World t -> GameObject t -> Vec3 GLfloat -> (GameObject t, Maybe [AABB])
moveObjectSlideAllIntersecters world object (Vec3 dx dy dz) =
    let (objectX, abX) = if dx /= 0
            then
                let objectXP = moveObject object $ Vec3 dx 0 0
                    entities = worldEntities world
                    intersectingX = getObjectIntersecter objectXP entities
                in if isJust intersectingX
                        then (object, intersectingX)
                    else (objectXP, Nothing)
            else (object, Nothing)

        (objectY, abY) = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = worldEntities world
                    intersectingY = getObjectIntersecter objectYP entities
                in if isJust intersectingY
                        then (objectX, intersectingY)
                    else (objectYP, abX)
            else (objectX, abX)

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = worldEntities world
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
                entities = worldEntities world
                intersectingX = isIntersectingAny objectXP entities
            in if intersectingX then object else objectXP
        else object

        objectY = if dy /= 0
            then
                let objectYP = moveObject objectX $ Vec3 0 dy 0
                    entities = worldEntities world
                    intersectingY = isIntersectingAny objectYP entities
                in if intersectingY then objectX else objectYP
            else objectX

    in if dz /= 0
        then
            let objectZP = moveObject objectY $ Vec3 0 0 dz
                entities = worldEntities world
                intersectingZ = isIntersectingAny objectZP entities
            in if intersectingZ then objectY else objectZP
        else objectY

moveObjectSafe :: World t -> GameObject t -> Vec3 GLfloat -> GameObject t
moveObjectSafe world object vec =
    let moved = moveObject object vec
        entities = worldEntities world
        intersectingObject = isIntersectingAny moved entities
    in if intersectingObject
        then object
    else moved

moveObject :: GameObject t -> Vec3 GLfloat -> GameObject t
moveObject obj deltaPos =
    setPos obj (getPos obj + deltaPos)

setPos :: GameObject t -> Vec3 GLfloat -> GameObject t
setPos p@(Player{}) pos = p{playerPosition = pos}
setPos pe@(PureEntity{}) pos = pe{pentityPosition = pos}
setPos ee@(EffectfulEntity{}) pos = ee{eentityPosition = pos}

getPos :: GameObject t -> Vec3 GLfloat
getPos p@(Player{}) = playerPosition p
getPos pe@(PureEntity{}) = pentityPosition pe
getPos ee@(EffectfulEntity{}) = eentityPosition ee

getModel :: GameObject t -> Model
getModel (Player{}) =
    error "GameObject.getModel called on Player"
getModel pe@(PureEntity{}) = pentityModel pe
getModel ee@(EffectfulEntity{}) = eentityModel ee
