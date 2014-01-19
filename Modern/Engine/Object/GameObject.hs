{-# LANGUAGE RankNTypes #-}
module Engine.Object.GameObject where

import Data.IORef (IORef, modifyIORef', readIORef, writeIORef)
import Data.Maybe (isJust)

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Core.Vec
import Engine.Model.Model
import Engine.Model.AABB

objectsIntersect :: GameObject t -> GameObject t -> Bool
objectsIntersect l r
    | isJust (getAABBs l) &&
      isJust (getAABBs r) &&
      isJust (getWholeAABB l) &&
      isJust (getWholeAABB r) =
        let Just wholeabl = calculateNewWholeAABB l
            Just wholeabr = calculateNewWholeAABB r
        in intersecting wholeabl wholeabr &&
               (let Just newl = calculateNewAABBs l
                    Just newr = calculateNewAABBs r
                in anyIntersect (head newl) newr)
    | otherwise = False

calculateNewWholeAABB :: GameObject t -> Maybe AABB
calculateNewWholeAABB obj
    | isJust (getWholeAABB obj) =
        let (Just (AABB l r)) = getWholeAABB obj
            pos = getPos obj
        in Just $ AABB (l + pos) (r + pos)
    | otherwise = Nothing


calculateNewAABBs :: GameObject t -> Maybe [AABB]
calculateNewAABBs obj
    | isJust (getAABBs obj) =
        let (Just aabbs) = getAABBs obj
            transformAll (AABB l r:xs) pos =
                AABB (l + pos) (r + pos) : transformAll xs pos
            transformAll [] _ = []
        in Just $ transformAll aabbs (getPos obj)
    | otherwise = Nothing

isIntersectingAny :: GameObject t -> [IORef (GameObject t)] -> IO Bool
isIntersectingAny collider (ref:xs) = do
    collidee <- readIORef ref
    if objectsIntersect collider collidee
        then return True
    else isIntersectingAny collider xs
isIntersectingAny _ [] = return False

pureUpdate :: GameObject t -> GameObject t
pureUpdate (Player{}) =
    error $ "Error: attempted to call GameObject.pureUpdate"
        ++ " on a nonpure GameObject: Player."
pureUpdate pe@(PureEntity{}) = pentityUpdate pe pe
pureUpdate (EffectfulEntity{}) =
    error $ "Error: attempted to call GameObject.pureUpdate"
        ++ " on a nonpure GameObject: EffectfulEntity."

effectfulUpdate :: GameObject t -> World t -> IO (GameObject t)
effectfulUpdate p@(Player{}) w = playerUpdate p w
effectfulUpdate pe@(PureEntity{}) _ = return $ pureUpdate pe
effectfulUpdate ee@(EffectfulEntity{}) w = eentityUpdate ee w ee

pureUpdateAll :: [IORef (GameObject t)] -> IO ()
pureUpdateAll (object:rest) = do
    modifyIORef' object pureUpdate
    pureUpdateAll rest

effectfulUpdateWorld :: World t -> IO ()
effectfulUpdateWorld world =
    effectfulUpdateAll (worldEntities world) world

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
getWholeAABB _ = Nothing

getAABBs :: GameObject t -> Maybe [AABB]
getAABBs pe@(PureEntity{}) = modelAABBs $ pentityModel pe
getAABBs (Player{}) = Just [playerAABB]
getAABBs ee@(EffectfulEntity{}) = modelAABBs $ eentityModel ee
getAABBs _ = Nothing

getPos :: GameObject t -> Vec3 GLfloat
getPos p@(Player{}) = playerPosition p
getPos pe@(PureEntity{}) = pentityPosition pe
getPos ee@(EffectfulEntity{}) = eentityPosition ee
