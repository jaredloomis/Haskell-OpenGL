module Engine.Model.Model (
    Model(..), createModel, createModelTess
) where

import Graphics.Rendering.OpenGL.Raw

import Engine.Graphics.Shaders
import Engine.Graphics.Textures
import Engine.Model.AABB
import Engine.Graphics.GraphicsUtils

data Model = Model {
    modelShader :: !Shader,
    modelShaderVars :: ![ShaderAttrib],
    modelTextures :: ![Texture],
    modelVertCount :: !GLint,
    modelAABBs :: !(Maybe [AABB]),
    modelWholeAABB :: !(Maybe AABB)
}

createModelTess ::
    FilePath ->     -- ^ Vertex Shader.
    FilePath ->     -- ^ Fragment Shader.
    FilePath ->     -- ^ Tesselation Control Shader.
    FilePath ->     -- ^ Tesselation Eval Shader.
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                   --   (vertices, normals, etc).
    [GLuint] ->     -- ^ Size of each value.
    GLint ->        -- ^ Number of vertices.
    IO Model
createModelTess vert frag tessC tessE attrNames buffData valLens vertCount = do
    program <- loadProgramWithTess vert frag tessC tessE
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model (Shader program []) sAttribs [] vertCount
            (Just $ aabbByFace (head buffData))
            (Just $ aabbFromPoints (head buffData))

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
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model (Shader program []) sAttribs [] vertCount
            (Just $ aabbByFace (head buffData))
            (Just $ aabbFromPoints (head buffData))

-- | Length of info. Assumes triangle faces.
lengthAll :: [[GLfloat]] -> [GLuint]
lengthAll = map $ \x -> fromIntegral $ length x `div` 3
