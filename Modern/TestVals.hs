module TestVals where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

import Types
import Util
import Player
import Textures

vertexBufferData :: [GLfloat]
vertexBufferData = [0, 0, 0,
                    1, 0, 0, 
                    0, 1, 0]

normalBufferData :: [GLfloat]
normalBufferData = [0, 0, 1,
                    0, 0, 1, 
                    0, 0, 1]

colorBufferData :: [GLfloat]
colorBufferData = [1, 0, 0,
                   0, 1, 0,
                   0, 0, 1]

textureBufferData :: [GLfloat]
textureBufferData = [0, 0,
                     1, 0,
                     0, 1]

textureIdBufferData :: [GLfloat]
textureIdBufferData = [0, 0, 0]

lightPos :: [GLfloat]
lightPos = [1, 0, 0]

vertexBufferDataWithNormals :: [GLfloat]
vertexBufferDataWithNormals = [0, 0, 0,   0, 0, 1,
                               1, 0, 0,   0, 0, 1,
                               0, 1, 0,   0, 0, 1]

mkWorld :: IO World
mkWorld = do
    obj1 <- mkObj >>= newIORef
    obj2 <- mkObj2 >>= newIORef
    World
        <$> newIORef mkPlayer
        <*> return [obj1, obj2]
        <*> return ["color2"]
        <*> (bufferId colorBufferData >>= \x -> return [x])
        <*> return [("test", 1, [0.5])]

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3) <$> mkModel

mkObj2 :: IO Object
mkObj2 =
    Entity (0, 2, -3) <$> mkModel2

mkModel :: IO Model
mkModel =
    createModel 
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ("res" </> "cube.bmp")
        ["position", "normal", "color", "texCoord", "textId"]
        [vertexBufferData, normalBufferData, colorBufferData, textureBufferData, 
         textureIdBufferData]
        3

mkModel2 :: IO Model
mkModel2 =
    createModel 
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ("res" </> "Crate.bmp")
        ["position", "normal", "color", "texCoord", "textId"]
        [vertexBufferData, normalBufferData, colorBufferData, textureBufferData, 
         textureIdBufferData]
        3


testTexture :: IO GL.TextureObject
testTexture = loadGLTextures $ "res" </> "Crate.bmp"
