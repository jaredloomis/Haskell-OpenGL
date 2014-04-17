module Engine.Model.Model (
    Model(..), createModel, createModelWithProgram
) where

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, GLint)

import Engine.Core.Types
    (Model(..), Shader(..))
import Engine.Graphics.Shaders
    (loadProgram, getAttrLocs, createShaderAttribs)
import Engine.Model.AABB (aabbByFace, aabbFromPoints)
import Engine.Graphics.GraphicsUtils (createBufferIdAll)

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
