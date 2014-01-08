{-# LANGUAGE RankNTypes #-}
module Util where

import System.Exit (exitSuccess)
import Foreign
import Foreign.C.String

import qualified Graphics.UI.GLFW as GLFW
import Graphics.Rendering.OpenGL.Raw

import Types
import Shaders
import Textures

------------------
-- OPENGL STUFF --
------------------

--withNewPtr :: forall b a. Storable b => (Ptr b -> IO a) -> IO b
--withNewPtr f = alloca (\p -> f p >> peek p)

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

vec3ToFloats :: Vec3 GLfloat -> (Float, Float, Float)
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
    [FilePath] ->   -- ^ Image Files.
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                    --   (vertices, normals, etc).
    [GLuint] ->     -- ^ Size of each value.
    GLint ->        -- ^ Number of vertices.
    IO Model
createModel vert frag images attrNames buffData valLens vertCount = do
    program <- loadProgram vert frag
    attribs <- createAttribs program attrNames
    ids <- idAll buffData
    textureObjs <- loadGLTexturesIds 0 images

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model program sAttribs (zip textureObjs [0..(fromIntegral $ length images)]) vertCount

-- | Simply pack the arguments together into an array of
--   ShaderAttribs.
createShaderAttribs :: [GLuint] -> [GLuint] -> [GLuint] -> [ShaderAttrib]
createShaderAttribs (attr:attrs) (buff:buffs) (size:sizes)=
    (attr, buff, size) : createShaderAttribs attrs buffs sizes
createShaderAttribs [] [] [] = []

-- | Create an id for each buffer data.
idAll :: [[GLfloat]] -> IO [GLuint]
idAll (cur:others) = do
    currentId <- bufferId cur
    otherId <- idAll others
    return $ currentId:otherId
idAll [] = return []

-- | Retrieve location of each shader attrib
--   in the given program.
createAttribs :: GLuint -> [String] -> IO [GLuint]
createAttribs prog (attrName:xs) = do
    curN <- withCString attrName $ glGetAttribLocation prog
    let cur = fromIntegral curN
    rest <- createAttribs prog xs
    return $ cur:rest
createAttribs _ [] = return []

bufferId :: [GLfloat] -> IO GLuint
bufferId info = do
    vertexArrayId <- withNewPtr (glGenVertexArrays 1)
    glBindVertexArray vertexArrayId
    fillNewBuffer info

lengthAll :: [[GLfloat]] -> [GLuint]
lengthAll = map (\x -> fromIntegral $ length x `div` 3)
