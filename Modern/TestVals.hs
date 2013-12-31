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


lightPos :: [GLfloat]
lightPos = [1, 0, 0]


vertexBufferDataWithNormals :: [GLfloat]
vertexBufferDataWithNormals = [0, 0, 0,   0, 0, 1,
                               1, 0, 0,   0, 0, 1,
                               0, 1, 0,   0, 0, 1]

mkWorld :: IO World
mkWorld =
    World
        <$> newIORef mkPlayer
        <*> (mkObj >>= newIORef >>= \x -> return [x])
        <*> return ["color2"]
        <*> (bufferId colorBufferData >>= \x -> return [x])
        <*> return [("test", 1, [0.5])]

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3) <$> mkModel

mkModel :: IO Model
mkModel =
    createModel 
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ("res" </> "Crate.bmp")
        ["position", "normal", "color", "texCoord"]
        [vertexBufferData, normalBufferData, colorBufferData, textureBufferData]
        3

testTexture :: IO GL.TextureObject
testTexture = loadGLTextures $ "res" </> "Crate.bmp"
