module TestVals where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import Graphics.Rendering.OpenGL.Raw

import Types
import Util
import Player

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

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3) <$> mkModel

mkModel :: IO Model
mkModel =
    createModel 
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ["position", "normal", "color"]
        [vertexBufferData, normalBufferData, colorBufferData]
        3

--mkWorld :: IO World
{-
mkWorld = World
            <$> newIORef mkPlayer
            <*> ((mkObj >>= newIORef) >>= \x -> return [x])
            <*> 
-}
