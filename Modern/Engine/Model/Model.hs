module Engine.Model.Model (
    Model(..), createModel, createModelWithProgram,
    emptyModel
) where

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, GLint)

import Engine.Model.AABB (AABB(..), AABBSet(..))
import Engine.Graphics.Shaders (Shader(..), ShaderAttrib)
import Engine.Graphics.Textures (Texture)
import Engine.Graphics.Shaders
    (loadProgram, getAttrLocs, createShaderAttribs)
import Engine.Model.AABB (aabbByFace, aabbFromPoints)
import Engine.Graphics.GraphicsUtils (createBufferIdAll)

-- | A data type for representing a model
--   to be rendered.
data Model = Model {
    modelShader :: Shader,
    modelShaderVars :: [ShaderAttrib],
    modelTextures :: [Texture],
    modelVertCount :: GLint,
    modelAABBSet :: AABBSet
} deriving (Show, Eq)
emptyModel :: Model
emptyModel = Model (Shader 0 []) [] [] 0 $ AABBSet (Just $ AABB 0 0) [AABB 0 0]

createModel ::
    FilePath ->     -- Vertex Shader.
    FilePath ->     -- Fragment Shader.
    [String] ->     -- Attribute Variable names.
    [[GLfloat]] ->  -- List containing all the lists of values.
                    -- (vertices, normals, etc).
    [GLuint] ->     -- Size of each value.
    GLint ->        -- Number of vertices.
    IO Model
createModel vert frag attrNames buffData valLens vertCount = do
    program <- loadProgram vert frag
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model (Shader program []) sAttribs [] vertCount $
            AABBSet
            (Just $ aabbFromPoints (head buffData))
            (aabbByFace (head buffData))

createModelWithProgram ::
    GLuint ->       -- Program
    [String] ->     -- Attribute Variable names.
    [[GLfloat]] ->  -- List containing all the lists of values.
                    -- (vertices, normals, etc).
    [GLuint] ->     -- Size of each value.
    GLint ->        -- Number of vertices.
    IO Model
createModelWithProgram program attrNames buffData valLens vertCount = do
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Model (Shader program []) sAttribs [] vertCount $
            AABBSet
            (Just $ aabbFromPoints (head buffData))
            (aabbByFace (head buffData))
