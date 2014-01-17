{-# LANGUAGE RankNTypes #-}
module Engine.Object.GameObject where

import Data.IORef (IORef, modifyIORef', readIORef, writeIORef)

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Core.Vec

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

getPos :: GameObject t -> Vec3 GLfloat
getPos p@(Player{}) = playerPosition p
getPos pe@(PureEntity{}) = pentityPosition pe
getPos ee@(EffectfulEntity{}) = eentityPosition ee
