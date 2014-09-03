{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}
module Engine.Core.WorldCreator (
    Proto(..),
    fromObj, modify,
    createFromProto,
    defaultWorld, createWorld,
    defaultSettings
) where

import Control.Monad.State hiding (modify)
import System.FilePath ((</>))
import Data.Vec ((:.)(..))

import Unsafe.Coerce (unsafeCoerce)

import Physics.Bullet.Raw.Types
    (Vec3(..), Transform(..), idmtx)

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Types
    (World(..), WorldState(..),
     Entity(..), GameIO(..), io,
     emptyWorldState,
     lWorldShaderUniverse, (%=))
import Engine.Object.Player (mkPlayer)
import Engine.Core.World (getWorldTime)
import Engine.Mesh.ObjLoader (loadObjObject)
import Engine.Terrain.Noise (Simplex(..))
import Engine.Mesh.AABB (AABB(..))
import Engine.Bullet.Bullet
    (AttrOp(..), mkPhysics, set, worldTransform)
import Engine.Graphics.Primitive

data family Proto a

data instance Proto (World t) =
    ProtoWorld {
        settingsSimplex :: Maybe Simplex,
        settingsTerrainShaders :: (FilePath, FilePath),
        settingsTerrainTexture :: Maybe FilePath,
        settingsObjs :: [Proto (Entity t)],
        settingsWholeAABB :: AABB,
        settingsWindow :: GLFW.Window,
        settingsPostShaders :: [(FilePath, FilePath)],
        settingsShadowShader :: (FilePath, FilePath),
        settingsShaderAttribs :: [(String, IO [GLfloat])]
    }

data instance Proto (Entity t) =
    FromObj FilePath [Entity t -> Entity t] t

-- | Create a "ProtoObject" that contains
--   instructions to parse a file and create
--   a "GameObject".
fromObj :: FilePath -> t -> Proto (Entity t)
fromObj file attr = FromObj file [] attr

-- | Add a function that will modify the
--   GameObject after it is loaded.
modify :: (Entity t -> Entity t) ->
          Proto (Entity t) ->
          Proto (Entity t)
modify f (FromObj file mods attr) =
    FromObj file (f:mods) attr

createFromProto :: Proto (Entity t) -> GameIO t (Entity t)
createFromProto (FromObj file mods attr) = do
    ent <- loadObjObject attr file

    let (prog, entity) = (\(prg, obj) -> (prg, foldr (\f o -> f o) obj mods)) ent
    world <- get

    let shaderGalaxy = PureGalaxy prog id (world, entity)
    lWorldShaderUniverse %= (`addGalaxy` shaderGalaxy)

    let x :. y :. z :. () = entityPosition entity
        pos = Vec3 (uC x) (uC y) (uC z)
        trans = Transform idmtx pos
    io . void $ set (entityRigidBody entity) [worldTransform := trans]
    return entity
  where
    uC = unsafeCoerce

defaultSettings :: GLFW.Window -> Proto (World ())
defaultSettings win =
    ProtoWorld
        (Just $ Simplex 0 (200, 200) (0, 0) 1 1 20 10 undefined)
        (".." </> "res" </> "shaders" </> "correct_v.glsl",
         ".." </> "res" </> "shaders" </> "correct_f.glsl")
        (Just $ ".." </> "res" </> "textures" </> "grass.jpg")
        [
        {-fromObj (".." </> "res" </> "objects" </> "wow" </> "wow.obj")
         (".." </> "res" </> "shaders" </> "correct_v.glsl")
         (".." </> "res" </> "shaders" </> "correct_f.glsl") (),-}
         modify (\x -> x{entityPosition = (-20) :. (-20) :. (-5) :. ()}) $
         fromObj (".." </> "res" </> "objects" </> "ibanez" </> "ibanez.obj")
         ()]
        (AABB (-100) 200)
        (win)
        {-[(".." </> "res" </> "shaders" </> "postprocessing"
          </> "passthrough" </> "passthrough_v.glsl",
          ".." </> "res" </> "shaders" </> "postprocessing"
          </> "passthrough" </> "passthrough_f.glsl")]-}
        [(".." </> "res" </> "shaders" </> "postprocessing" </> "dof"  </> "dof_v.glsl",
          ".." </> "res" </> "shaders" </> "postprocessing" </> "dof"  </> "dof_f.glsl"),
         (".." </> "res" </> "shaders" </> "postprocessing" </> "fxaa" </> "fxaa_v.glsl",
          ".." </> "res" </> "shaders" </> "postprocessing" </> "fxaa" </> "fxaa_f.glsl")]
         (".." </> "res" </> "shaders" </> "shadow" </> "shadow_v.glsl",
          ".." </> "res" </> "shaders" </> "shadow" </> "shadow_f.glsl")
        [("lightPos", return [0.0, 10.0, 0.0])]

defaultWorld :: World t
defaultWorld =
    World undefined
          ([] -|> [])
          undefined
          emptyWorldState

createWorld :: (GLFW.Window -> Proto (World ())) -> IO (World ())
createWorld settings' = do
    window <- openWindow
    initGL window

    let settings = settings' window

    physics <- mkPhysics

    player <- mkPlayer physics
    t <- getWorldTime

    let wstate = WorldState t 0 False window
    let world = defaultWorld{
            worldPhysics = physics,
            worldPlayer = player,
            worldState = wstate}

    world' <- createAllObjects world $ settingsObjs settings

    return world'

createAllObjects :: World t -> [Proto (Entity t)] -> IO (World t)
createAllObjects world (x:xs) = do
    world' <- execStateT (gameIoState $ createFromProto x) world
    createAllObjects world' xs
createAllObjects world [] = return world

{-
createTerrain :: Physics -> Proto (World t) -> IO (Maybe (Entity ()))
createTerrain phys settings =
    let msimplex = settingsSimplex settings
        (vert, frag) = settingsTerrainShaders settings
    in if isJust msimplex
        then
            let simplex = fromJust msimplex
                (w, _) = simpDimensions simplex
            in Just <$>
                generateTerrain phys vert frag
                    (fromIntegral w) (simpSpacing simplex)
                    (simpOctaves simplex)
                    (simpWavelength simplex)
                    (simpIntensity simplex)
                    (settingsTerrainTexture settings)
        else return Nothing
-}
