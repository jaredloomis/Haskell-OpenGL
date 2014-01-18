module TestVals where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))
import Data.IORef (IORef, newIORef)

import Engine.Object.Player
import Engine.Model.ModelLoader
import Engine.Terrain.Generator
import Engine.Core.Vec
import Engine.Core.World
import Engine.Model.Model

mkWorld :: IO (World ())
mkWorld = do
    obj1 <- mkObj >>= newIORef
    obj2 <- mkObj2 >>= newIORef
    World
        <$> newIORef mkPlayer
        <*> return [obj1, obj2]
        <*> return [("lightPos", [2.0, 2.0, 0.0])]
        <*> mkWorldStateRef

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState 0 t 0

mkWorldStateRef :: IO (IORef WorldState)
mkWorldStateRef = mkWorldState >>= newIORef

mkObj :: IO (GameObject ())
mkObj =
    PureEntity (Vec3 10 10 10) id <$> mkModel <*> return ()

mkObj2 :: IO (GameObject ())
mkObj2 =
    PureEntity (Vec3 0 0 0) id <$> mkTerrain <*> return ()

pureMove :: GameObject t -> GameObject t
pureMove pe@(PureEntity{}) =
    pe{pentityPosition = pentityPosition pe + Vec3 0.005 0 0}

mkModel :: IO Model
mkModel = do
    worldStateRef <- mkWorldStateRef
    loadObjModel worldStateRef ("res" </> "objects/wow/wow.obj")
                               ("shaders" </> "min.vert")
                               ("shaders" </> "min.frag")
    --return loaded--{modelAABB = Just (createAABB (Vec3 100 100 100))}

mkTerrain :: IO Model
mkTerrain = genModel
            "shaders/max.vert"
            "shaders/max.frag"
            50

mkModel3 :: IO Model
mkModel3 = do
    worldStateRef <- mkWorldStateRef
    loadObjModel worldStateRef ("res" </> "objects/ibanez/ibanez.obj")
                               ("shaders" </> "min.vert")
                               ("shaders" </> "min.frag")
