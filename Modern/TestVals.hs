module TestVals (
    mkWorld, mkWorldState, mkWorldFast
) where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))

import Engine.Object.Player
import Engine.Model.ModelLoader
import Engine.Terrain.Generator
import Engine.Core.Vec
import Engine.Core.World
import Engine.Model.Model
import Engine.Graphics.Window

mkWorldFast :: IO (World ())
mkWorldFast = mkWorldState >>= mkWorld

mkWorld :: WorldState -> IO (World ())
mkWorld wState = do
    (obja, wState') <- mkObj wState
    objb <- mkObj2
    (objc, wState'') <- mkObj3 wState'
    return $ World mkPlayer [obja, objb, objc]
             [("lightPos", return [0.0, 40.0, 0.0])] [] wState''

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState 0 t 0 False defaultWindow

--mkWorldStateRef :: IO (IORef WorldState)
--mkWorldStateRef = mkWorldState >>= newIORef


mkObj :: WorldState -> IO (GameObject (), WorldState)
mkObj ws = do
    (model, state) <- mkModel ws
    return (PureEntity (Vec3 10 3 10) id model (), state)

mkObj2 :: IO (GameObject ())
mkObj2 =
    PureEntity (Vec3 0 0 0) id <$> mkTerrain <*> return ()

mkObj3 :: WorldState -> IO (GameObject (), WorldState)
mkObj3 ws = do
    (model, state) <- mkModel3 ws
    return (PureEntity (Vec3 0 (-20) (-20)) id model (), state)
{-
pureMove :: GameObject t -> GameObject t
pureMove pe@(PureEntity{}) =
    pe{pentityPosition = pentityPosition pe + Vec3 0.005 0 0}
pureMove a = a
-}

mkModel :: WorldState -> IO (Model, WorldState)
mkModel ws = do
    loadObjModel ws ("res" </> "objects/wow/wow.obj")
                               mainVertShader
                               mainFragShader

mkTerrain :: IO Model
mkTerrain = genSimplexModel
            mainVertShader
            mainFragShader
            50
            1
            1
            20
            10

mkModel3 :: WorldState -> IO (Model, WorldState)
mkModel3 ws = 
    loadObjModel ws ("res" </> "objects/ibanez/ibanez.obj")
                               mainVertShader
                               mainFragShader

mainVertShader :: String
mainVertShader = "shaders" </> "min.vert"

mainFragShader :: String
mainFragShader = "shaders" </> "min.frag"

mainTessCShader :: String
mainTessCShader = "shaders" </> "tesselation" </> "test_ts.glsl"

mainTessEShader :: String
mainTessEShader = "shaders" </> "tesselation" </> "test_te.glsl"
