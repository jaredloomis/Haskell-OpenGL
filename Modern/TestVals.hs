module TestVals (
    mkWorld, mkWorldState, mkWorldFast
) where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))

import Graphics.Rendering.OpenGL.Raw

import Engine.Object.Player
import Engine.Model.ModelLoader
import Engine.Terrain.Generator
import Engine.Core.Vec
import Engine.Core.World
import Engine.Model.Model
import Engine.Graphics.Window
import Engine.Graphics.Shaders
import Engine.Graphics.Framebuffer

mkWorldFast :: IO (World ())
mkWorldFast = do
    state <- mkWorldState
{-
    passShader <- loadProgram
        "shaders/postprocessing/passthrough/passthrough.vert"
        "shaders/postprocessing/passthrough/passthrough.frag"
-}
    fishShader <- loadProgram
        "shaders/postprocessing/fisheye/fisheye.vert"
        "shaders/postprocessing/fisheye/fisheye.frag"
{-
    sobelShader <- loadProgram
        "shaders/postprocessing/sobel/sobel.vert"
        "shaders/postprocessing/sobel/sobel.frag"
-}
    posterShader <- loadProgram
        "shaders/postprocessing/poster/poster.vert"
        "shaders/postprocessing/poster/poster.frag"

    pixelateShader <- loadProgram
        "shaders/postprocessing/pixelate/pixelate.vert"
        "shaders/postprocessing/pixelate/pixelate.frag"

{-
    invertShader <- loadProgram
        "shaders/postprocessing/invert/invert.vert"
        "shaders/postprocessing/invert/invert.frag"
-}

    let winDimensions = windowSize $ stateWindow state

    fb <- makeFrameBuffer winDimensions
    mkWorld fb [pixelateShader, fishShader]

mkWorld :: Framebuffer -> [GLuint] -> IO (World ())
mkWorld fb shaders = do
    state <- mkWorldState
    obja <- mkObj
    objb <- mkObj2
    objc <- mkObj3
    return $ World mkPlayer [obja, objb, objc]
             [("lightPos", return [0.0, 40.0, 0.0])] (fb, shaders) state

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState t 0 False defaultWindow

mkObj :: IO (GameObject ())
mkObj =
    PureEntity (Vec3 10 3 10) id <$> mkModel <*> return ()

mkObj2 :: IO (GameObject ())
mkObj2 =
    PureEntity (Vec3 0 0 0) id <$> mkTerrain <*> return ()

mkObj3 :: IO (GameObject ())
mkObj3 =
    PureEntity (Vec3 (-80) (-25) (-30)) id <$> mkModel3 <*> return ()
    --return (PureEntity (Vec3 0 5 3) id model (), state)

{-
eMove :: World t -> GameObject t -> GameObject t
eMove world ee@(EffectfulEntity{}) =
    moveObjectSlide world ee (Vec3 0.005 0 0)
eMove _ a = a
-}

mkModel :: IO Model
mkModel =
    loadObjModel ("res" </> "objects/wow/wow.obj")
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

mkModel3 :: IO Model
mkModel3 = 
    loadObjModel ("res" </> "objects/ibanez/ibanez.obj")
                               mainVertShader
                               mainFragShader

mainVertShader :: String
mainVertShader = "shaders" </> "min.vert"

mainFragShader :: String
mainFragShader = "shaders" </> "min.frag"

{-
mainTessCShader :: String
mainTessCShader = "shaders" </> "tesselation" </> "test_ts.glsl"

mainTessEShader :: String
mainTessEShader = "shaders" </> "tesselation" </> "test_te.glsl"
-}
