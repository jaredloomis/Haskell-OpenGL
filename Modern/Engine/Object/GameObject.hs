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
objectsIntersect l r --mIntersecting (getAABB l) (getAABB r)
    | isJust (getAABB l) &&
      isJust (getAABB r) =
        let --(Just (AABB lmin lmax)) = getAABB l
            --(Just (AABB rmin rmax)) = getAABB r
            --newl = AABB (lmin + getPos l) (lmax + getPos l)
            --newr = AABB (rmin + getPos r) (rmax + getPos r)
            Just newl = calculateNewAABB l
            Just newr = calculateNewAABB r
        in intersecting newl newr
    | otherwise = False

calculateNewAABB :: GameObject t -> Maybe AABB
calculateNewAABB obj
    | isJust (getAABB obj) =
        let (Just (AABB abMin abMax)) = getAABB obj
        in Just $ AABB (abMin + getPos obj) (abMax + getPos obj)
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

getAABB :: GameObject t -> Maybe AABB
getAABB pe@(PureEntity{}) = modelAABB $ pentityModel pe
getAABB (Player{}) = Just playerAABB
getAABB ee@(EffectfulEntity{}) = modelAABB $ eentityModel ee

getPos :: GameObject t -> Vec3 GLfloat
getPos p@(Player{}) = playerPosition p
getPos pe@(PureEntity{}) = pentityPosition pe
getPos ee@(EffectfulEntity{}) = eentityPosition ee
