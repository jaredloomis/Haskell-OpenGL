module Engine.Terrain.Generator (
    genSimplexModel
) where

import qualified Data.DList as D
import System.Random (randomRIO)
import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Model.Model
    (Model(..), createModel)
import Engine.Terrain.Noise
    (Simplex(..), perm, getSimplexHeight)
import Engine.Graphics.Textures (juicyLoadTexture)

genSimplexModel :: FilePath -> FilePath ->
    GLfloat ->          -- ^ Width
    GLfloat ->          -- ^ Spacing
    Int ->              -- ^ Octaves
    GLfloat ->          -- ^ Wavelength
    GLfloat ->          -- ^ Waveheight / intensity
    Maybe FilePath ->   -- ^ The texture (Maybe)
    IO Model
genSimplexModel vert frag w spacing octaves wavelength intensity texture = do
    seed <- randomRIO (0, 2048)
    let simplex = Simplex seed (floor w, floor w) (0, 0) spacing octaves wavelength intensity (perm seed)
        vertices = D.toList $ createSimplexTerrain simplex
        normals = calculateNormals vertices

    maybe
        (loadTerrainNoTexture vert frag vertices normals)
        (loadTerrainWithTexture vert frag vertices normals)
        texture

loadTerrainWithTexture :: FilePath -> FilePath -> [GLfloat] -> [GLfloat] -> FilePath -> IO Model
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

loadTerrainNoTexture :: FilePath -> FilePath -> [GLfloat] -> [GLfloat] -> IO Model
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
    concatMapD (\x -> concatMapD (makeSquare simplex x) $ allYs simplex) $ allXs simplex

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

{-
createStripSimplex :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> [GLfloat]
createStripSimplex spacing len x i
    | i < len =
        [x, 0, i,
         x, 0, i+spacing,
         x+spacing, 0, i,
         x+spacing, 0, i,
         x, 0, i+spacing,
         x+spacing, 0, i+spacing] ++ createStripSimplex spacing len x (i+spacing)
    | otherwise = []

createFlat :: GLfloat -> GLfloat -> [GLfloat]
createFlat spacing width =
    createFlatRaw spacing width 0

    where
        createFlatRaw s w x =
            createStrip s w x 0 ++
                if x < w 
                    then createFlatRaw s w (x+spacing)
                else []

createStrip :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> [GLfloat]
createStrip spacing len x i
    | i < len =
        [x, 0, i,
         x, 0, i+spacing,
         x+spacing, 0, i,
         x+spacing, 0, i,
         x, 0, i+spacing,
         x+spacing, 0, i+spacing] ++ createStrip spacing len x (i+spacing)
    | otherwise = []

applyHeights :: [GLfloat] -> [GLfloat] -> [GLfloat]
applyHeights (x:y:z:coords) ref =
    let foundY = findY x z ref
    in x : (if foundY == -3.1415
        then y
    else foundY) : z : applyHeights coords ref
applyHeights _ _ = []

findY :: GLfloat -> GLfloat -> [GLfloat] -> GLfloat
findY xf zf (xl:yl:zl:heights)
    | xf == xl && zf == zl = yl
    | otherwise = findY xf zf heights
findY _ _ _ = -3.1415
-}

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

{-
heightsToCoords :: [[GLfloat]] -> GLfloat -> GLfloat -> [GLfloat]
heightsToCoords (yi:restYs) z spacing =
    let completeLine (y:ys) x =
            [x, y, z] ++ completeLine ys (x + spacing)
        completeLine [] _ = []
    in completeLine yi 0 ++ heightsToCoords restYs (z + spacing) spacing
heightsToCoords [] _ _ = []
-}
