{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Terrain.Generator (
    genSimplexModel,
    generateTerrain
) where

import Control.Applicative ((<$>), (<*>))
import Data.Default (def)
import qualified Data.DList as D
import System.Random (randomRIO)
import Data.Vec (Vec3, (:.)(..))

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Types (Entity(..))
import Engine.Mesh.Mesh (Mesh(..), createMesh)
import Engine.Terrain.Noise
    (Simplex(..), perm, getSimplexHeight)
import Engine.Graphics.Textures (juicyLoadTexture)
import Engine.Bullet.Bullet
    (Physics(..), addStaticTriangleMesh)

generateTerrain ::
    Physics ->
    FilePath -> FilePath ->
    GLfloat ->          -- Width
    GLfloat ->          -- Spacing
    Int ->              -- Octaves
    GLfloat ->          -- Wavelength
    GLfloat ->          -- Waveheight / intensity
    Maybe FilePath ->   -- The texture (Maybe)
    IO (Entity ())
generateTerrain phys vert frag w spacing octaves wavelength intensity texture = do
    seed <- randomRIO (0, 2048)
    let simplex =
            Simplex seed (floor w, floor w) (0, 0) spacing octaves
            wavelength intensity (perm seed)
        vertices = D.toList $ createSimplexTerrain simplex
--        normals = calculateNormals vertices
    undefined
{-
    mesh <- maybe
        (loadTerrainNoTexture vert frag vertices normals)
        (loadTerrainWithTexture vert frag vertices normals)
        texture

    Entity 0 0 0 return
            <$> addStaticTriangleMesh vertices def phys <*> return ()
-}

genSimplexModel :: FilePath -> FilePath ->
    GLfloat ->          -- Width
    GLfloat ->          -- Spacing
    Int ->              -- Octaves
    GLfloat ->          -- Wavelength
    GLfloat ->          -- Waveheight / intensity
    Maybe FilePath ->   -- The texture (Maybe)
    IO Mesh
genSimplexModel vert frag w spacing octaves wavelength intensity texture = do
    seed <- randomRIO (0, 2048)
    let simplex =
            Simplex seed (floor w, floor w) (0, 0) spacing
            octaves wavelength intensity (perm seed)
        vertices = D.toList $ createSimplexTerrain simplex
--        normals = calculateNormals vertices
    undefined
{-
    maybe
        (loadTerrainNoTexture vert frag vertices normals)
        (loadTerrainWithTexture vert frag vertices normals)
        texture
-}

{-
loadTerrainWithTexture ::
    FilePath -> FilePath ->
    [Vec3 GLfloat] -> [Vec3 GLfloat] ->
    FilePath ->
    IO Mesh
loadTerrainWithTexture vert frag vertices normals texture =
    let lengthVertices = length vertices
    in do
        loadedModel <- createMesh vert frag
            ["position", "normal", "color", "texCoord", "textureId"]
            [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
            take (lengthVertices * 3) $ cycle [0, 0, 1, 0, 0, 1],
            replicate lengthVertices 0]
            [3, 3, 3, 2, 1]
            (fromIntegral $ lengthVertices `div` 3)
        textureData <- juicyLoadTexture texture
        return $ loadedModel{meshTextures = [(textureData, 1)]}

loadTerrainNoTexture ::
    FilePath -> FilePath ->
    [GLfloat] -> [GLfloat] ->
    IO Mesh
loadTerrainNoTexture vert frag vertices normals =
    let lengthVertices = length vertices
    in createMesh vert frag
            ["position", "normal", "color", "texCoord", "textureId"]
            [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
            replicate (lengthVertices * 3) 0,
            replicate lengthVertices (-1)]
            [3, 3, 3, 2, 1]
            (fromIntegral $ lengthVertices `div` 3)
-}

createSimplexTerrain :: Simplex -> D.DList (Vec3 GLfloat)
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

makeSquare :: Simplex -> GLfloat -> GLfloat -> D.DList (Vec3 GLfloat)
makeSquare simplex x z =
    let spacing = simpSpacing simplex
    in makePointFromXY simplex x z `D.append`
        makePointFromXY simplex x (z+spacing) `D.append`
        makePointFromXY simplex (x+spacing) z `D.append`
        makePointFromXY simplex (x+spacing) z `D.append`
        makePointFromXY simplex x (z+spacing) `D.append`
        makePointFromXY simplex (x+spacing) (z+spacing)

makePointFromXY :: Simplex -> GLfloat -> GLfloat -> D.DList (Vec3 GLfloat)
makePointFromXY simp x z =
    D.singleton $ x :. getSimplexHeight simp x z :. z :. ()

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
