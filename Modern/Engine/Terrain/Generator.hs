module Engine.Terrain.Generator where

import Data.Maybe (isJust, fromJust)
import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Model.Model
import Engine.Terrain.Noise
import Engine.Graphics.Textures

{-
genHeightsSplit ::
    (Int, Int) -> (Int, Int) -> Int -> Int -> GLfloat -> GLfloat -> IO [[[GLfloat]]]
genHeightsSplit (width, height) (startx, starty) splits octaves wavelength intensity
    | max startx starty < width = do
        cur <- simplexNoiseSection (width, height) (startx, starty) octaves wavelength intensity
        rest <- genHeightsSplit (width, height)
                (startx + width, starty + width) splits octaves wavelength intensity
        return $ cur : rest
    | otherwise = return []
-}
    
genSimplexModel :: FilePath -> FilePath ->
    GLfloat ->          -- ^ Width
    GLfloat ->          -- ^ Spacing
    Int ->              -- ^ Octaves
    GLfloat ->          -- ^ Wavelength
    GLfloat ->          -- ^ Waveheight / intensity
    Maybe FilePath ->   -- ^ The texture (Maybe)
    IO Model
genSimplexModel vert frag w spacing octaves wavelength intensity texture = do
    heights <- simplexNoise (floor w) spacing octaves wavelength intensity
    let hCoords = heightsToCoords heights 0 spacing
        flat = createFlat spacing w
        vertices = applyHeights flat hCoords
        normals = calculateNormals vertices
        lengthVertices = length vertices

    if isJust texture
        then do
            loadedModel <- createModel vert frag ["position", "normal", "color", "texCoord", "textureId"]
                    [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
                    take (lengthVertices * 3) $ cycle [0, 0, 1, 0, 0, 1],
                    replicate lengthVertices 0]
                    [3, 3, 3, 2, 1]
                    (fromIntegral $ length vertices `div` 3)
            textureData <- juicyLoadTexture $ fromJust texture
            return $ loadedModel{modelTextures = [(textureData, 1)]}
    else
        createModel vert frag ["position", "normal", "color", "texCoord", "textureId"]
                    [vertices, normals, take (lengthVertices * 3) (cycle [0, 1, 0]),
                    replicate (lengthVertices * 3) 0,
                    replicate lengthVertices (-1)]
                    [3, 3, 3, 2, 1]
                    (fromIntegral $ length vertices `div` 3)

{-
genSimplexModel :: FilePath -> FilePath -> FilePath -> FilePath -> FilePath ->
    GLfloat ->          -- ^ Width
    GLfloat ->          -- ^ Spacing
    Int ->              -- ^ Octaves
    GLfloat ->          -- ^ Wavelength
    GLfloat ->          -- ^ Waveheight / intensity
    Maybe FilePath ->   -- ^ The texture (Maybe)
    IO Model
genSimplexModel vert frag tessC tessE geom w spacing octaves wavelength intensity texture = do
    program <- loadProgramComplete vert frag tessC tessE geom
    heights <- simplexNoise (floor w) spacing octaves wavelength intensity
    let hCoords = heightsToCoords heights 0 spacing
        flat = createFlat spacing w
        vertices = applyHeights flat hCoords
        --normals = calculateNormals vertices
        --lengthVertices = length vertices

    if isJust texture
        then
            createModelWithProgram program ["position"]
                    [vertices]
                    [3]
                    (fromIntegral $ length vertices `div` 3)
            --textureData <- juicyLoadTexture $ fromJust texture
            --return $ loadedModel{modelTextures = [(textureData, 1)]}
    else
        createModelWithProgram program ["position"]
                    [vertices]
                    [3]
                    (fromIntegral $ length vertices `div` 3)
-}

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

calculateNormals :: [GLfloat] -> [GLfloat]
calculateNormals (x1:y1:z1:x2:y2:z2:x3:y3:z3:rest) =
    let (ux, uy, uz) = (x2 - x1, y2 - y1, z2 - z1)
        (vx, vy, vz) = (x3 - x1, y3 - y1, z3 - z1)
        nx = (uy * vz) - (uz * vy)
        ny = (uz * vx) - (ux * vz)
        nz = (ux * vy) - (uy * vx)
    in repeatList 3 [nx, if ny > 0 then ny else -ny, nz] ++
            calculateNormals rest
calculateNormals _ = []

heightsToCoords :: [[GLfloat]] -> GLfloat -> GLfloat -> [GLfloat]
heightsToCoords (yi:restYs) z spacing =
    let completeLine (y:ys) x =
            [x, y, z] ++ completeLine ys (x + spacing)
        completeLine [] _ = []
    in completeLine yi 0 ++ heightsToCoords restYs (z + spacing) spacing
heightsToCoords [] _ _ = []

repeatList :: Int -> [a] -> [a]
repeatList i arr = concat $ replicate i arr
