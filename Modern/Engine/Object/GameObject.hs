{-# LANGUAGE RankNTypes #-}
module Engine.Object.GameObject where

import Data.IORef (IORef, modifyIORef', readIORef, writeIORef)
import Data.Maybe (isJust)

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

-- | Using the object's current AABB's and position,
--   create a new AABB.
calculateNewAABBs :: GameObject t -> Maybe [AABB]
calculateNewAABBs obj
    | isJust (getAABBs obj) =
        let (Just aabbs) = getAABBs obj
            transformAll (AABB l r:xs) pos =
                AABB (l + pos) (r + pos) : transformAll xs pos
            transformAll [] _ = []
        in Just $ transformAll aabbs (getPos obj)
    | otherwise = Nothing

-- | Test if the given object intersects with any of the
--   objects in the given list.
isIntersectingAny :: GameObject t -> [IORef (GameObject t)] -> IO Bool
isIntersectingAny collider (ref:xs) = do
    collidee <- readIORef ref
    if objectsIntersect collider collidee
        then return True
    else isIntersectingAny collider xs
isIntersectingAny _ [] = return False

-- | Test if the given object intersects with any of the
--   objects in the given list.
getObjectIntersecter :: GameObject t -> [IORef (GameObject t)] -> IO (Maybe AABB)
getObjectIntersecter collider (ref:xs) = do
    collidee <- readIORef ref
    let intersecter = getIntersecter collider collidee
    if isJust intersecter
        then return intersecter
    else getObjectIntersecter collider xs
getObjectIntersecter _ [] = return Nothing

-- | Test if two objects intersect.
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



-- | Update an GameObject without side effects.
pureUpdate :: GameObject t -> GameObject t
pureUpdate (Player{}) =
    error $ "Error: attempted to call GameObject.pureUpdate"
        ++ " on a nonpure GameObject: Player."
pureUpdate pe@(PureEntity{}) = pentityUpdate pe pe
pureUpdate (EffectfulEntity{}) =
    error $ "Error: attempted to call GameObject.pureUpdate"
        ++ " on a nonpure GameObject: EffectfulEntity."

-- | Update an GameObject with side effects.
effectfulUpdate :: GameObject t -> World t -> IO (GameObject t)
effectfulUpdate p@(Player{}) w = playerUpdate p w
effectfulUpdate pe@(PureEntity{}) _ = return $ pureUpdate pe
effectfulUpdate ee@(EffectfulEntity{}) w = eentityUpdate ee w ee

-- | Call pureUpdate on all IORef'd GameObjects.
pureUpdateAll :: [IORef (GameObject t)] -> IO ()
pureUpdateAll (object:rest) = do
    modifyIORef' object pureUpdate
    pureUpdateAll rest
pureUpdateAll [] = return ()

-- | Call effectfulUpdate on all IORef'd GameObjects in
--   the world.
effectfulUpdateWorld :: World t -> IO ()
effectfulUpdateWorld world =
    effectfulUpdateAll (worldEntities world) world

-- | Call effectfulUpdate on all IORef'd GameObjects,
--   given the World.
effectfulUpdateAll :: [IORef (GameObject t)] -> World t -> IO ()
effectfulUpdateAll (object:rest) world = do
    obj <- readIORef object
    newObj <- effectfulUpdate obj world
    -- Make sure object is evaluated, prevents leaks.
    newObj `seq` writeIORef object newObj
    effectfulUpdateAll rest world
effectfulUpdateAll [] _ = return ()

getWholeAABB :: GameObject t -> Maybe AABB
getWholeAABB (Player{}) = Just playerAABB
getWholeAABB pe@(PureEntity{}) = modelWholeAABB $ pentityModel pe
getWholeAABB ee@(EffectfulEntity{}) = modelWholeAABB $ eentityModel ee

getAABBs :: GameObject t -> Maybe [AABB]
getAABBs pe@(PureEntity{}) = modelAABBs $ pentityModel pe
getAABBs (Player{}) = Just [playerAABB]
getAABBs ee@(EffectfulEntity{}) = modelAABBs $ eentityModel ee

applyGravity :: World t -> GameObject t -> IO (GameObject t)
applyGravity world object =
    moveObjectSafe world object (Vec3 0 (-0.1) 0)

moveObjectSlideIntersecter ::
    World t -> GameObject t -> Vec3 GLfloat -> IO (GameObject t, Maybe AABB)
moveObjectSlideIntersecter world object (Vec3 dx dy dz) = do
    (objectX, abX) <- if dx /= 0
        then do
            let objectXP = moveObject object $ Vec3 dx 0 0
            intersectingX <- getObjectIntersecter objectXP (worldEntities world)
            return $ if isJust intersectingX
                        then (object, intersectingX)
                    else (objectXP, Nothing)
        else return (object, Nothing)

    (objectY, abY) <- if dy /= 0
        then do
            let objectYP = moveObject objectX $ Vec3 0 dy 0
            intersectingY <- getObjectIntersecter objectYP (worldEntities world)
            return $ if isJust intersectingY
                        then (objectX, intersectingY)
                    else (objectYP, abX)
        else return (objectX, abX)

    if dz /= 0
        then do
            let objectZP = moveObject objectY $ Vec3 0 0 dz
            intersectingZ <- getObjectIntersecter objectZP (worldEntities world)
            return $ if isJust intersectingZ
                        then (objectY, intersectingZ)
                    else (objectZP, abY)
        else return (objectY, abY)


moveObjectSlide :: World t -> GameObject t -> Vec3 GLfloat -> IO (GameObject t)
moveObjectSlide world object (Vec3 dx dy dz) = do
    objectX <- if dx /= 0
        then do
            let objectXP = moveObject object $ Vec3 dx 0 0
            intersectingX <- isIntersectingAny objectXP (worldEntities world)
            return $ if intersectingX then object else objectXP
        else return object

    objectY <- if dy /= 0
        then do
            let objectYP = moveObject objectX $ Vec3 0 dy 0
            intersectingY <- isIntersectingAny objectYP (worldEntities world)
            return $ if intersectingY then objectX else objectYP
        else return objectX

    if dz /= 0
        then do
            let objectZP = moveObject objectY $ Vec3 0 0 dz
            intersectingZ <- isIntersectingAny objectZP (worldEntities world)
            return $ if intersectingZ then objectY else objectZP
        else return objectY

moveObjectSafe :: World t -> GameObject t -> Vec3 GLfloat -> IO (GameObject t)
moveObjectSafe world object vec = do
    let moved = moveObject object vec
    intersectingObject <- isIntersectingAny moved (worldEntities world)
    return $ if intersectingObject
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
