module TestVals (
    mkWorld
) where

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
    obja <- mkObj
    objb <- mkObj2
    objc <- mkObj3
    World mkPlayer [obja, objb, objc]
        [("lightPos", return [0.0, 40.0, 0.0])] <$> mkWorldState

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState 0 t 0 False

mkWorldStateRef :: IO (IORef WorldState)
mkWorldStateRef = mkWorldState >>= newIORef

mkObj :: IO (GameObject ())
mkObj =
    PureEntity (Vec3 10 10 10) id <$> mkModel <*> return ()

mkObj2 :: IO (GameObject ())
mkObj2 =
    PureEntity (Vec3 0 0 0) id <$> mkTerrain <*> return ()

mkObj3 :: IO (GameObject ())
mkObj3 =
    PureEntity (Vec3 0 (-20) (-20)) id <$> mkModel3 <*> return ()

{-
pureMove :: GameObject t -> GameObject t
pureMove pe@(PureEntity{}) =
    pe{pentityPosition = pentityPosition pe + Vec3 0.005 0 0}
pureMove a = a
-}

mkModel :: IO Model
mkModel = do
    worldStateRef <- mkWorldStateRef
    loadObjModel worldStateRef ("res" </> "objects/wow/wow.obj")
                               ("shaders" </> "min.vert")
                               ("shaders" </> "min.frag")

mkTerrain :: IO Model
mkTerrain = genSimplexModel
            "shaders/min.vert"
            "shaders/min.frag"
            50
            1
            1
            20
            10

mkModel3 :: IO Model
mkModel3 = do
    worldStateRef <- mkWorldStateRef
    loadObjModel worldStateRef ("res" </> "objects/ibanez/ibanez.obj")
                               ("shaders" </> "min.vert")
                               ("shaders" </> "min.frag")
