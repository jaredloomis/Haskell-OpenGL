module Engine.Model.Model (
    Model(..), createModel, createModelWithProgram
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

createModelWithProgram ::
    GLuint ->       -- ^ Program
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                   --   (vertices, normals, etc).
    [GLuint] ->     -- ^ Size of each value.
    GLint ->        -- ^ Number of vertices.
    IO Model
createModelWithProgram program attrNames buffData valLens vertCount = do
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model (Shader program []) sAttribs [] vertCount
            (Just $ aabbByFace (head buffData))
            (Just $ aabbFromPoints (head buffData))
