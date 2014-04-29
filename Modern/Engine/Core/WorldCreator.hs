module Engine.Core.WorldCreator (
    CreationSettings(..),
    defaultWorld, createWorld,
    defaultSettings
) where

import Control.Applicative ((<$>))
import Data.Maybe (isJust, fromJust)
import System.FilePath ((</>))

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types
    (World(..), WorldState(..), Graphics(..),
     Terrain, Octree(..),
     AABB(..), Simplex(..), emptyGraphics, emptyWorldState)
import Engine.Graphics.Window (Window(..), defaultWindow)
import Engine.Object.Player (mkPlayer)
import Engine.Object.Octree (createOctreeFromAABBs)
import Engine.Core.World (getWorldTime)
import Engine.Model.ObjLoader (loadObjObject)
import Engine.Terrain.Generator (generateTerrain)
import Engine.Graphics.Framebuffer (makeFrameBuffer)
import Engine.Graphics.Shaders (loadProgram)
import Engine.Graphics.Shadows (makeShadowFrameBuffer)

data CreationSettings = CreationSettings {
    settingsSimplex :: Maybe Simplex,
    settingsTerrainTexture :: Maybe FilePath,
    settingsObjs :: [FilePath],
    settingsShaders :: (FilePath, FilePath),
    settingsWholeAABB :: AABB,
    settingsWindow :: Window,
    settingsPostShaders :: [(FilePath, FilePath)],
    settingsShadowShader :: (FilePath, FilePath),
    settingsShaderAttribs :: [(String, IO [GLfloat])]
}
defaultSettings :: CreationSettings
defaultSettings =
    CreationSettings
        (Just $ Simplex 0 (200, 200) (0, 0) 1 1 20 10 undefined)
        (Just $ "res" </> "textures" </> "grass.jpg")
        ["res" </> "objects" </> "wow" </> "wow.obj",
         "res" </> "objects" </> "ibanez" </> "ibanez.obj"]
        ("shaders" </> "correct.vert", "shaders" </> "correct.frag")
        (AABB (-30) 200)
        defaultWindow
        [("shaders" </> "postprocessing" </> "dof"  </> "dof.vert",
          "shaders" </> "postprocessing" </> "dof"  </> "dof.frag"),
         ("shaders" </> "postprocessing" </> "fxaa" </> "fxaa.vert",
          "shaders" </> "postprocessing" </> "fxaa" </> "fxaa.frag")]
         ("shaders" </> "shadow" </> "shadow.vert",
          "shaders" </> "shadow" </> "shadow.frag")
        [("lightPos", return [0.0, 10.0, 0.0])]

defaultWorld :: World t
defaultWorld =
    World mkPlayer []
          Nothing (OLeaf (AABB 0 0) [] 0)
          emptyGraphics
          emptyWorldState

createWorld :: CreationSettings -> IO (World ())
createWorld settings = do
    let (vert, frag) = settingsShaders settings
        objFiles = settingsObjs settings
    objects <- mapM (loadObjObject vert frag ()) objFiles

    terrain <- createTerrain settings

    let octree = createOctreeFromAABBs
                (settingsWholeAABB settings)
                objects

    fb <- makeFrameBuffer $ windowSize $ settingsWindow settings
    postShaders <- mapM (uncurry loadProgram) $ settingsPostShaders settings

    sfb <- makeShadowFrameBuffer $ windowSize $ settingsWindow settings
    let (shV, shF) = settingsShadowShader settings
    shadowShader <- loadProgram shV shF

    let graphics = Graphics
            (settingsShaderAttribs settings)
            (fb, postShaders)
            (sfb, shadowShader)

    t <- getWorldTime
    let state = WorldState t 0 False defaultWindow

    return defaultWorld{
            worldEntities = objects,
            worldTerrain = terrain,
            worldOctree = octree,
            worldGraphics = graphics,
            worldState = state
        }

createTerrain :: CreationSettings -> IO (Maybe Terrain)
createTerrain settings =
    let msimplex = settingsSimplex settings
        (vert, frag) = settingsShaders settings
    in if isJust msimplex
        then
            let simplex = fromJust msimplex
                (w, _) = simpDimensions simplex
            in Just <$>
                generateTerrain vert frag
                    (fromIntegral w) (simpSpacing simplex)
                    (simpOctaves simplex)
                    (simpWavelength simplex)
                    (simpIntensity simplex)
                    (settingsTerrainTexture settings)
        else return Nothing
