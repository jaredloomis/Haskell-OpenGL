{-# LANGUAGE RankNTypes #-}
module Util where

import System.Exit (exitSuccess)
import Foreign
import Foreign.C.String

import qualified Graphics.UI.GLFW as GLFW
import Graphics.Rendering.OpenGL.Raw
import qualified Graphics.Rendering.OpenGL as GL

import qualified Graphics.GLUtil as GU

import Types
import Shaders
import Textures

------------------
-- OPENGL STUFF --
------------------

withNewPtr :: forall b a. Storable b => (Ptr b -> IO a) -> IO b
withNewPtr f = alloca (\p -> f p >> peek p)

fillNewBuffer :: [GLfloat] -> IO GLuint
fillNewBuffer list = do
    bufId <- withNewPtr (glGenBuffers 1)
    glBindBuffer gl_ARRAY_BUFFER bufId
    withArrayLen list $ \len ptr ->
        glBufferData gl_ARRAY_BUFFER 
            (fromIntegral (len * sizeOf (undefined :: GLfloat)))
            (ptr :: Ptr GLfloat) gl_STATIC_DRAW
    return bufId

--------------------
-- MATH FUNCTIONS --
--------------------

toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

sinDeg :: Float -> Float
sinDeg = sin . toRadians
cosDeg :: Float -> Float
cosDeg = cos . toRadians

vec3ToFloats :: Vec3 -> (Float, Float, Float)
vec3ToFloats (x, y, z) = (realToFrac x, realToFrac y, realToFrac z)

----------------------
-- WINDOW FUNCTIONS --
----------------------

createGLFWWindow :: Int -> Int -> IO GLFW.Window
createGLFWWindow width height = do
    GLFW.init
    Just win <- GLFW.createWindow width height "GLFW + Haskell" Nothing Nothing
    GLFW.setWindowPos win 100 50
    GLFW.makeContextCurrent (Just win)
    
    -- Enable VSync
    GLFW.swapInterval 1

    GLFW.setWindowCloseCallback win (Just shutdown)

    return win

shutdown :: GLFW.WindowCloseCallback
shutdown win = do
    GLFW.destroyWindow win
    GLFW.terminate
    _ <- exitSuccess
    return ()

---

createModel ::
    FilePath ->     -- ^ Vertex Shader.
    FilePath ->     -- ^ Fragment Shader.
    FilePath ->     -- ^ Image File.
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                    --   (vertices, normals, etc).
    GLint ->        -- ^ Number of vertices.
    IO Model
createModel vert frag image attrNames buffData vertCount = do
    program <- loadProgram vert frag
    attribs <- createAttribs program attrNames
    ids <- idAll buffData
    textureObj <- loadGLTextures image
    let lens = lengthAll buffData
        sAttribs = createShaderAttribs attribs ids lens
    return $ Model program sAttribs [textureObj] vertCount

--------------------
--- BUFFER UTILS ---
--------------------

createShaderAttribs :: [GLuint] -> [GLuint] -> [GLuint] -> [ShaderAttrib]
createShaderAttribs (attr:attrs) (buff:buffs) (size:sizes)=
    (attr, buff, size) : createShaderAttribs attrs buffs sizes
createShaderAttribs [] [] [] = []

idAll :: [[GLfloat]] -> IO [GLuint]
idAll (cur:others) = do
    currentId <- bufferId cur
    otherId <- idAll others
    return $ currentId:otherId
idAll [] = return []

createAttribs :: GLuint -> [String] -> IO [GLuint]
createAttribs prog (attrName:xs) = do
    curN <- withCString attrName $ glGetAttribLocation prog
    let cur = fromIntegral curN
    rest <- createAttribs prog xs
    return $ cur:rest
createAttribs _ [] = return []

makeBuffers :: [[GLfloat]] -> IO [GL.BufferObject]
makeBuffers (cur:rest) = do
    curBuffer <- GU.makeBuffer GL.ArrayBuffer cur
    restBuffer <- makeBuffers rest
    return $ curBuffer:restBuffer
makeBuffers [] = return []

bufferId :: [GLfloat] -> IO GLuint
bufferId info = do
    vertexArrayId <- withNewPtr (glGenVertexArrays 1)
    glBindVertexArray vertexArrayId
    fillNewBuffer info

lengthAll :: [[GLfloat]] -> [GLuint]
lengthAll = map (\x -> fromIntegral $ length x `div` 3)
