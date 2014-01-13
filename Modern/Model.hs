module Model where

import Foreign.C.String

import Graphics.Rendering.OpenGL.Raw

import Types
import Shaders
import Util (fillNewBuffer)

createModel ::
    FilePath ->     -- ^ Vertex Shader.
    FilePath ->     -- ^ Fragment Shader.
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                    --   (vertices, normals, etc).
    [GLuint] ->     -- ^ Size of each value.
    GLint ->        -- ^ Number of vertices.
    IO Model
createModel vert frag attrNames buffData valLens vertCount = do
    program <- loadProgram vert frag
    attribs <- createAttribs program attrNames
    ids <- idAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model program sAttribs [] vertCount

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

-- | Create a buffer id for the information.
bufferId :: [GLfloat] -> IO GLuint
bufferId info = do
    vertexArrayId <- withNewPtr (glGenVertexArrays 1)
    glBindVertexArray vertexArrayId
    fillNewBuffer info

-- | Length of info. Assumes triangle faces.
lengthAll :: [[GLfloat]] -> [GLuint]
lengthAll = map (\x -> fromIntegral $ length x `div` 3)
