{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Terrain.Generator (
    Terrain(..), emptyTerrain,
    genSimplexModel,
    generateTerrain
) where

import qualified Data.DList as D
import System.Random (randomRIO)
import Control.Parallel.Strategies

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLint, GLuint)

import Engine.Core.Vec (Vec3(..))
import Engine.Terrain.Noise (Simplex(..))
import Engine.Graphics.Shaders (Shader(..), ShaderAttrib)
import Engine.Graphics.Textures (Texture)
import Engine.Model.AABB (AABB(..))
import Engine.Model.Model (Model(..))
import Engine.Graphics.Shaders
    (loadProgram, getAttrLocs, createShaderAttribs)
import Engine.Model.AABB (aabbFromPoints)
import Engine.Graphics.GraphicsUtils (createBufferIdAll)
import Engine.Object.Intersect (Intersect(..))
import Engine.Model.Model (createModel)
import Engine.Terrain.Noise
    (perm, getSimplexHeight)
import Engine.Graphics.Textures (juicyLoadTexture)

-- | A data type for a procedurally generally
--   terrain.
data Terrain = Terrain {
    terrainSimplex :: Simplex,
    terrainShader :: Shader,
    terrainShaderVars :: [ShaderAttrib],
    terrainTextures :: [Texture],
    terrainVertCount :: GLint,
    terrainWholeAABB :: AABB,
    terrainHeightFunc :: GLfloat -> GLfloat -> GLfloat
}
emptyTerrain :: Terrain
emptyTerrain = Terrain undefined
            (Shader (-1) []) [] [] 0
            (AABB 0 0)
            (\_ _ -> -10e100)

instance Intersect Terrain AABB where
    intersecting terr (AABB (Vec3 lx ly lz) _) =
        ly < terrainHeightFunc terr lx lz

instance Intersect AABB Terrain where
    intersecting (AABB (Vec3 lx ly lz) _) terr =
        ly < terrainHeightFunc terr lx lz

generateTerrain :: FilePath -> FilePath ->
    GLfloat ->          -- Width
    GLfloat ->          -- Spacing
    Int ->              -- Octaves
    GLfloat ->          -- Wavelength
    GLfloat ->          -- Waveheight / intensity
    Maybe FilePath ->   -- The texture (Maybe)
    IO Terrain
generateTerrain vert frag w spacing octaves wavelength intensity texture = do
    seed <- randomRIO (0, 2048)
    let simplex =
            Simplex seed (floor w, floor w) (0, 0) spacing octaves
            wavelength intensity (perm seed)
        vertices = D.toList $ createSimplexTerrain simplex
        normals = calculateNormals vertices `using` parChunk (floor w)

    maybe
        (loadTerrainWithTexture' simplex vert frag vertices normals undefined)
        (loadTerrainWithTexture' simplex vert frag vertices normals)
        texture

parChunk :: Int -> Strategy [a]
parChunk len = parListChunk (len `div` 4) r0

loadTerrainWithTexture' ::
    Simplex ->
    FilePath -> FilePath ->
    [GLfloat] -> [GLfloat] ->
    FilePath -> IO Terrain
loadTerrainWithTexture' simplex vert frag vertices normals texture =
    let lengthVertices = length vertices
    in do
        loadedTerrain <- createTerrain simplex vert frag
            ["position", "normal", "color", "texCoord", "textureId"]
            [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
            take (lengthVertices * 3) $ cycle [0, 0, 1, 0, 0, 1],
            replicate lengthVertices 0]
            [3, 3, 3, 2, 1]
            (fromIntegral $ lengthVertices `div` 3)
        textureData <- juicyLoadTexture texture
        return $ loadedTerrain{terrainTextures = [(textureData, 1)]}

createTerrain ::
    Simplex ->      -- Simplex info.
    FilePath ->     -- Vertex Shader.
    FilePath ->     -- Fragment Shader.
    [String] ->     -- Attribute Variable names.
    [[GLfloat]] ->  -- List containing all the lists of values.
                    --   (vertices, normals, etc).
    [GLuint] ->     -- Size of each value.
    GLint ->        -- Number of vertices.
    IO Terrain
createTerrain simplex vert frag attrNames buffData valLens vertCount = do
    program <- loadProgram vert frag
    attribs <- getAttrLocs program attrNames
    ids <- createBufferIdAll buffData

    let sAttribs = createShaderAttribs attribs ids valLens
    return $ Terrain simplex (Shader program []) sAttribs [] vertCount
            (aabbFromPoints (head buffData)) $ getSimplexHeight simplex

genSimplexModel :: FilePath -> FilePath ->
    GLfloat ->          -- Width
    GLfloat ->          -- Spacing
    Int ->              -- Octaves
    GLfloat ->          -- Wavelength
    GLfloat ->          -- Waveheight / intensity
    Maybe FilePath ->   -- The texture (Maybe)
    IO Model
genSimplexModel vert frag w spacing octaves wavelength intensity texture = do
    seed <- randomRIO (0, 2048)
    let simplex =
            Simplex seed (floor w, floor w) (0, 0) spacing
            octaves wavelength intensity (perm seed)
        vertices = D.toList $ createSimplexTerrain simplex
        normals = calculateNormals vertices

    maybe
        (loadTerrainNoTexture vert frag vertices normals)
        (loadTerrainWithTexture vert frag vertices normals)
        texture

loadTerrainWithTexture ::
    FilePath -> FilePath ->
    [GLfloat] -> [GLfloat] ->
    FilePath ->
    IO Model
loadTerrainWithTexture vert frag vertices normals texture =
    let lengthVertices = length vertices
    in do
        loadedModel <- createModel vert frag
            ["position", "normal", "color", "texCoord", "textureId"]
            [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
            take (lengthVertices * 3) $ cycle [0, 0, 1, 0, 0, 1],
            replicate lengthVertices 0]
            [3, 3, 3, 2, 1]
            (fromIntegral $ lengthVertices `div` 3)
        textureData <- juicyLoadTexture texture
        return $ loadedModel{modelTextures = [(textureData, 1)]}

loadTerrainNoTexture ::
    FilePath -> FilePath ->
    [GLfloat] -> [GLfloat] ->
    IO Model
loadTerrainNoTexture vert frag vertices normals =
    let lengthVertices = length vertices
    in createModel vert frag
            ["position", "normal", "color", "texCoord", "textureId"]
            [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
            replicate (lengthVertices * 3) 0,
            replicate lengthVertices (-1)]
            [3, 3, 3, 2, 1]
            (fromIntegral $ lengthVertices `div` 3)

createSimplexTerrain :: Simplex -> D.DList GLfloat
createSimplexTerrain simplex =
    concatMapD
        (\x -> concatMapD (makeSquare simplex x) $ allYs simplex) $
        allXs simplex

concatMapD :: (a -> D.DList b) -> D.DList a -> D.DList b
concatMapD f = D.foldr (D.append . f) D.empty

allXs :: Simplex -> D.DList GLfloat
allXs simplex =
    let first = fromIntegral $ fst $ simpStartXY simplex :: GLfloat
    in first `D.cons` allXs' simplex first 0
    where
        allXs' :: Simplex -> GLfloat -> Int -> D.DList GLfloat
        allXs' s i j
            | j < fst (simpDimensions s) =
                let cur = i + simpSpacing s
                in cur `D.cons` allXs' simplex cur (j+1)
            | otherwise = D.empty

allYs :: Simplex -> D.DList GLfloat
allYs simplex =
    let first = fromIntegral $ snd $ simpStartXY simplex :: GLfloat
    in first `D.cons` allYs' simplex first 0
    where
        allYs' :: Simplex -> GLfloat -> Int -> D.DList GLfloat
        allYs' s i j
            | j < snd (simpDimensions s) =
                let cur = i + simpSpacing s
                in cur `D.cons` allYs' simplex cur (j+1)
            | otherwise = D.empty

makeSquare :: Simplex -> GLfloat -> GLfloat -> D.DList GLfloat
makeSquare simplex x z =
    let spacing = simpSpacing simplex
    in makePointFromXY simplex x z `D.append`
        makePointFromXY simplex x (z+spacing) `D.append`
        makePointFromXY simplex (x+spacing) z `D.append`
        makePointFromXY simplex (x+spacing) z `D.append`
        makePointFromXY simplex x (z+spacing) `D.append`
        makePointFromXY simplex (x+spacing) (z+spacing)

makePointFromXY :: Simplex -> GLfloat -> GLfloat -> D.DList GLfloat
makePointFromXY simp x z = D.fromList [x, getSimplexHeight simp x z, z]

calculateNormals :: [GLfloat] -> [GLfloat]
calculateNormals (x1:y1:z1:x2:y2:z2:x3:y3:z3:rest) =
    let (ux, uy, uz) = (x2 - x1, y2 - y1, z2 - z1)
        (vx, vy, vz) = (x3 - x1, y3 - y1, z3 - z1)
        nx = (uy * vz) - (uz * vy)
        ny = (uz * vx) - (ux * vz)
        nz = (ux * vy) - (uy * vx)
        -- Repeat this normal for 6 points (3 points for this half
        -- of the square, 3 points for the other half). Drop the next
        -- 3 points (9 floats) - the next triangle.
    in repeatList 6 [nx, if ny > 0 then ny else -ny, nz] ++
            calculateNormals (drop 9 rest)
    where
        repeatList :: Int -> [a] -> [a]
        repeatList i list = take (i*3) $ cycle list 
calculateNormals _ = []
