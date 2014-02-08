module Engine.Model.Model where

import Graphics.Rendering.OpenGL.Raw

import Engine.Graphics.Shaders
import Engine.Graphics.Textures
import Engine.Model.AABB
import Engine.Graphics.GraphicsUtils

data Model = Model {
    modelShader :: !GLuint,
    modelShaderVars :: ![ShaderAttrib],
    modelTextures :: ![Texture],
    modelVertCount :: !GLint,
    modelAABBs :: !(Maybe [AABB]),
    modelWholeAABB :: !(Maybe AABB)
}

createModelSplit ::
    FilePath ->     -- ^ Vertex Shader.
    FilePath ->     -- ^ Fragment Shader.
    [String] ->     -- ^ Attribute Variable names.
    [[GLfloat]] ->  -- ^ List containing all the lists of values.
                    --   (vertices, normals, etc).
    [GLuint] ->     -- ^ Size of each value.
    Int ->          -- ^ Number of splits.
    IO [Model]
createModelSplit vert frag attrNames buffData valLens splits =
    let splitUp = splitAllData (splits * 3) buffData

    in do
        print $ length buffData
        print $ length $ head buffData
        print $ length splitUp
        print $ length $ head splitUp

        let models = map (\dat -> createModel vert frag attrNames dat
                valLens (fromIntegral $ length dat `div` 3)) splitUp

        sequence models

splitAllData :: Int -> [[GLfloat]] -> [[[GLfloat]]]
splitAllData = map . splitData

splitData :: Int -> [GLfloat] -> [[GLfloat]]
splitData i xs
    | length xs >= i =
        let (cur, rest) = splitAt i xs
        in cur : splitData i rest
    | otherwise = []

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
    return $ Model program sAttribs [] vertCount
            (Just $ aabbByFace (head buffData))
            (Just $ aabbFromPoints (head buffData))

-- | Length of info. Assumes triangle faces.
lengthAll :: [[GLfloat]] -> [GLuint]
lengthAll = map $ \x -> fromIntegral $ length x `div` 3
