module TestVals (
    mkWorld, mkWorldState, mkWorldFast
) where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))

import Graphics.Rendering.OpenGL.Raw (GLuint)

import Engine.Core.Types
    (World(..), WorldState(..),
     Framebuffer(..), Octree(..), AABB(..),
     Graphics(..), GameObject(..),
     Game(..), Model(..))
import Engine.Object.Player (mkPlayer)
import Engine.Model.ObjLoader (loadObjModel)
import Engine.Terrain.Generator (genSimplexModel)
import Engine.Core.Vec (Vec3(..))
import Engine.Core.World (getWorldTime)
import Engine.Graphics.Window (Window(..), defaultWindow)
import Engine.Graphics.Shaders (loadProgram)
import Engine.Graphics.Framebuffer (makeFrameBuffer)
import Engine.Graphics.Shadows (makeShadowFrameBuffer)
import Engine.Object.Octree (createOctreeFromAABBs)

mkWorldFast :: IO (World ())
mkWorldFast = do
    state <- mkWorldState
{-
    passShader <- loadProgram
        "shaders/postprocessing/passthrough/passthrough.vert"
        "shaders/postprocessing/passthrough/passthrough.frag"
    fishShader <- loadProgram
        "shaders/postprocessing/fisheye/fisheye.vert"
        "shaders/postprocessing/fisheye/fisheye.frag"
-}
    dofShader <- loadProgram
        ("shaders" </> "postprocessing" </> "dof" </> "dof.vert")
        ("shaders" </> "postprocessing" </> "dof" </> "dof.frag")
    fxaaShader <- loadProgram
        "shaders/postprocessing/fxaa/fxaa.vert"
        "shaders/postprocessing/fxaa/fxaa.frag"

{-
    sobelShader <- loadProgram
        "shaders/postprocessing/sobel/sobel.vert"
        "shaders/postprocessing/sobel/sobel.frag"
-}
{-
    posterShader <- loadProgram
        "shaders/postprocessing/poster/poster.vert"
        "shaders/postprocessing/poster/poster.frag"
-}
{-
    pixelateShader <- loadProgram
        "shaders/postprocessing/pixelate/pixelate.vert"
        "shaders/postprocessing/pixelate/pixelate.frag"
-}
{-
    invertShader <- loadProgram
        "shaders/postprocessing/invert/invert.vert"
        "shaders/postprocessing/invert/invert.frag"
-}
    let winDimensions = windowSize $ stateWindow state

    fb <- makeFrameBuffer winDimensions

    sfb <- makeShadowFrameBuffer winDimensions

    shadowShader <- loadProgram
            "shaders/shadow/shadow.vert"
            "shaders/shadow/shadow.frag"

    mkWorld fb sfb shadowShader [dofShader, fxaaShader]

mkWorld :: Framebuffer -> Framebuffer -> GLuint -> [GLuint] -> IO (World ())
mkWorld fb shadowFb shadowShader shaders = do
    state <- mkWorldState
    obja <- mkObj
    objb <- mkObj2
    objc <- mkObj3
    let octree = mkOctree [obja, objb, objc]

    --print octree

    return $ World mkPlayer [obja, objb, objc] octree
            (mkGraphics fb shadowFb shadowShader shaders)
            state

mkOctree :: [GameObject t] -> Octree AABB
mkOctree = createOctreeFromAABBs (AABB (-5) 200)

mkGraphics :: Framebuffer -> Framebuffer -> GLuint -> [GLuint] -> Graphics t
mkGraphics fb shadowFb shadowShader shaders =
    Graphics [("lightPos", return [0.0, 10.0, 0.0])] (fb, shaders)
             (shadowFb, shadowShader)

mkWorldState :: IO WorldState
mkWorldState = do
    t <- getWorldTime
    return $ WorldState t 0 False defaultWindow

mkObj :: IO (GameObject ())
mkObj =
    Entity (Vec3 10 3 10) (Vec3 0 0 0) idUpdate <$> mkModel <*> return ()

mkObj2 :: IO (GameObject ())
mkObj2 =
    Entity (Vec3 0 0 0) (Vec3 0 0 0) idUpdate <$> mkTerrain <*> return ()

mkObj3 :: IO (GameObject ())
mkObj3 =
    Entity (Vec3 0 (-20) 0) (Vec3 0 0 0) idUpdate <$> mkModel3 <*> return ()
    --Entity (Vec3 (-700) (-480) 1016) id <$> mkModel3 <*> return ()


--eMove :: GameObject t -> Game t (GameObject t)
--eMove obj = return $ moveObject obj (Vec3 0.005 0 0)

idUpdate :: GameObject t -> Game t (GameObject t)
idUpdate = return


mkModel :: IO Model
mkModel =
    loadObjModel ("res" </> "objects" </> "wow" </> "wow.obj")
                               mainVertShader
                               mainFragShader

mkTerrain :: IO Model
mkTerrain = genSimplexModel
            mainVertShader
            mainFragShader
            200
            1
            1
            20
            10
            (Just "res/textures/grass.jpg")
{-
mkModel3 :: IO Model
mkModel3 = 
    loadObjModel ("res" </> "objects" </> "space" </> "space.obj")
                               mainVertShader
                               mainFragShader
-}
mkModel3 :: IO Model
mkModel3 = 
    loadObjModel ("res" </> "objects" </> "ibanez" </> "ibanez.obj")
                               mainVertShader
                               mainFragShader

mainVertShader :: String
mainVertShader = "shaders" </> "correct.vert"
--mainVertShader = "shaders" </> "shadow" </> "shadow2.vert"

mainFragShader :: String
mainFragShader = "shaders" </> "correct.frag"
--mainFragShader = "shaders" </> "shadow" </> "shadow2.frag"
