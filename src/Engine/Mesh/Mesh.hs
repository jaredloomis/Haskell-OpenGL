module Engine.Mesh.Mesh (
    Mesh(..), createMesh, createMeshWithProgram,
    emptyMesh
) where

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, GLint)

import Engine.Mesh.AABB
    (AABB(..), AABBSet(..), aabbByFace, aabbFromPoints)
import Engine.Graphics.Shaders
    (Shader(..), ShaderAttrib, loadProgram,
     getAttrLocs, createShaderAttribs)
import Engine.Graphics.Textures (Texture)
import Engine.Graphics.GraphicsUtils (createBufferIdAll)

-- | A data type for representing a model
--   to be rendered.
data Mesh = Mesh {
    meshShader :: Shader,
    meshShaderVars :: [ShaderAttrib],
    meshTextures :: [Texture],
    meshVertCount :: GLint,
    meshAABBSet :: AABBSet
} deriving (Show, Eq)
emptyMesh :: Mesh
emptyMesh = Mesh (Shader 0 []) [] [] 0 $ AABBSet (Just $ AABB 0 0) [AABB 0 0]

createMesh ::
    FilePath ->     -- Vertex Shader.
    FilePath ->     -- Fragment Shader.
    [String] ->     -- Attribute Variable names.
    [[GLfloat]] ->  -- List containing all the lists of values.
                    -- (vertices, normals, etc).
    [GLuint] ->     -- Size of each value.
    GLint ->        -- Number of vertices.
    IO Mesh
createMesh vert frag attrNames buffData valLens vertCount = do
    program <- loadProgram vert frag
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Mesh (Shader program []) sAttribs [] vertCount $
            AABBSet
            (Just $ aabbFromPoints (head buffData))
            (aabbByFace (head buffData))

createMeshWithProgram ::
    GLuint ->       -- Program
    [String] ->     -- Attribute Variable names.
    [[GLfloat]] ->  -- List containing all the lists of values.
                    -- (vertices, normals, etc).
    [GLuint] ->     -- Size of each value.
    GLint ->        -- Number of vertices.
    IO Mesh
createMeshWithProgram program attrNames buffData valLens vertCount = do
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Mesh (Shader program []) sAttribs [] vertCount $
            AABBSet
            (Just $ aabbFromPoints (head buffData))
            (aabbByFace (head buffData))
