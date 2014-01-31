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
    obja <- mkObj
    objb <- mkObj2
    World mkPlayer [obja, objb] [("lightPos", return [2.0, 2.0, 0.0])] <$> mkWorldState

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState 0 t 0

mkWorldStateRef :: IO (IORef WorldState)
mkWorldStateRef = mkWorldState >>= newIORef

mkObjWithModel :: Model -> IO (GameObject ())
mkObjWithModel model =
    PureEntity (Vec3 0 0 0) id model <$> return ()

mkObj :: IO (GameObject ())
mkObj =
    PureEntity (Vec3 10 10 10) id <$> mkModel <*> return ()

mkObj2 :: IO (GameObject ())
mkObj2 =
    PureEntity (Vec3 0 0 0) id <$> mkTerrain <*> return ()

pureMove :: GameObject t -> GameObject t
pureMove pe@(PureEntity{}) =
    pe{pentityPosition = pentityPosition pe + Vec3 0.005 0 0}
pureMove a = a

mkModel :: IO Model
mkModel = do
    worldStateRef <- mkWorldStateRef
    loadObjModel worldStateRef ("res" </> "objects/wow/wow.obj")
                               ("shaders" </> "min.vert")
                               ("shaders" </> "min.frag")

mkTerrain :: IO Model
mkTerrain = genSimplexModel
            "shaders/max.vert"
            "shaders/max.frag"
            70
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
