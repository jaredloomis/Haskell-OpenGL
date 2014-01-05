module TestVals where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))
import Data.IORef (newIORef)

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Types
import Util
import Player
import Loader

vertexBufferData :: [GLfloat]
vertexBufferData = [0, 0, 0,
                    1, 0, 0, 
                    0, 1, 0,
                    0, 1, 0,
                    1, 0, 0,
                    1, 1, 0]

normalBufferData :: [GLfloat]
normalBufferData = [0, 0, 1,
                    0, 0, 1, 
                    0, 0, 1,
                    0, 0, 1,
                    0, 0, 1,
                    0, 0, 1]

colorBufferData :: [GLfloat]
colorBufferData = [1, 0, 0,
                   0, 1, 0,
                   0, 0, 1,
                   0, 1, 0,
                   1, 0, 0,
                   1, 1, 0]

textureBufferData :: [GLfloat]
textureBufferData = [0, 0,
                     1, 0,
                     0, 1,
                     1, 0,
                     0, 0,
                     1, 1]

textureIdBufferData :: [GLfloat]
textureIdBufferData = [0, 0, 0, 0, 0, 0]

lightPos :: [GLfloat]
lightPos = [1, 0, 0]

vertexBufferDataWithNormals :: [GLfloat]
vertexBufferDataWithNormals = [0, 0, 0,   0, 0, 1,
                               1, 0, 0,   0, 0, 1,
                               0, 1, 0,   0, 0, 1]

mkWorld :: IO World
mkWorld = do
    obj2 <- mkObj2 >>= newIORef
    obj1 <- mkObj >>= newIORef
    --obj2 <- mkObj2 >>= newIORef
    World
        <$> newIORef mkPlayer
        <*> return [obj1, obj2]
        <*> return [("test", 1, [0.5])]

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3) <$> mkModel

mkObj2 :: IO Object
mkObj2 =
    Entity (0, 2, -3) <$> mkModel3

mkModel :: IO Model
mkModel =
    loadOBJModel ("res" </> "capsule.obj") ("shaders" </> "min.vert") ("shaders" </> "min.frag")

mkModel2 :: IO Model
mkModel2 =
    createModel 
        ("shaders" </> "min.vert")
        ("shaders" </> "min.frag")
        ["res" </> "Crate.bmp"]
        ["position", "normal", "color", "texCoord", "textId"]
        [vertexBufferData, normalBufferData, colorBufferData, textureBufferData, 
         textureIdBufferData]
        [3, 3, 3, 2, 1]
        6


mkModel3 :: IO Model
mkModel3 =
    loadOBJModel ("res" </> "cube.obj") ("shaders" </> "min.vert") ("shaders" </> "min.frag")

