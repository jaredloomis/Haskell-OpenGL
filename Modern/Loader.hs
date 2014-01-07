{-# LANGUAGE RankNTypes #-}
module Loader where

import Data.List
import Data.List.Split
import System.IO

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint)

import Types
import Util
import Material

loadOBJModel ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadOBJModel objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        obj <- loadOBJ objFile
        mats <- loadObjMaterials objFile

        let objClean = negateNothing3 obj
            dat = toArrays objClean
            
            materialDiffs = unTripletM $ map matDiffuseColor mats
            materialTexIds = map (fromIntegral . getVal . matTexId) mats

            totalData = dat ++ [materialDiffs, materialTexIds]

        print . length . head $ dat
        print $ length $ dat !! 1

        tmp <- createModel vert frag 
            []
            attrNames
            totalData
            [3, 2, 3, 3, 1]
            (fromIntegral (length $ head dat) `div` 3)
        return tmp{modelTextures = map (getValU . matTexture) mats}

getVal :: Num a => Maybe a -> a
getVal (Just x) = x
getVal Nothing = 0

getValU :: Maybe a -> a
getValU (Just x) = x
getValU Nothing = undefined

{-
removeIndex (x:xs) index counter =
    if counter == index
        then removeIndex xs index (counter + 1)
    else x : removeIndex xs index (counter + 1)
removeIndex [] _ _ = []
-}

toArrays :: forall a. ([a], [a], [a]) -> [[a]]
toArrays (x, y, z) = [x] ++ [y] ++ [z]

negateNothing3 :: Num a => Vec3 [Maybe a] -> Vec3 [a]
negateNothing3 (x, y, z) = (negateNothing x 3, negateNothing y 2, negateNothing z 3)

negateNothing :: Num a => [Maybe a] -> Int -> [a]
negateNothing (Just x : rest) len = x : negateNothing rest len
negateNothing (Nothing : rest) len = replicate len (-1) ++ negateNothing rest len
negateNothing [] _ = []

loadOBJ :: FilePath -> IO (Vec3 [Maybe GLfloat])
loadOBJ file = do
    h1 <- openFile file ReadMode
    verts <- loadOBJVertices h1
    h2 <- openFile file ReadMode
    norms <- loadOBJNormals h2
    h3 <- openFile file ReadMode
    uvs <- loadOBJTexs h3
    h4 <- openFile file ReadMode
    faces <- loadOBJFaces h4

    return $ packOBJ faces verts uvs norms

packOBJ ::
    [Vec3 (Maybe GLuint)] -> -- ^ Face definitions
    [Vec3 GLfloat] ->  -- ^ Vertices
    [Vec2 GLfloat] ->  -- ^ Texture coordinates
    [Vec3 GLfloat] ->  -- ^ Normals
    Vec3 [Maybe GLfloat]
packOBJ faces vertices uvs normals =
    let faceVerts = faceVertIndices faces
        faceTexs = faceTexIndices faces
        faceNorms = faceNormIndices faces
        
        retVerts = getThem3 faceVerts vertices
        retTexs = getThem2 faceTexs uvs
        retNorms = getThem3 faceNorms normals

    in (retVerts, retTexs, retNorms)

getThem3 :: [Maybe GLuint] -> [Vec3 GLfloat] -> [Maybe GLfloat]
getThem3 (Just index : indices) values =
    (toJusts . toArray3 $ values !! fromIntegral (index-1))
        ++ getThem3 indices values
getThem3 (Nothing : indices) values = Nothing : getThem3 indices values
getThem3 [] _ = []

getThem2 :: [Maybe GLuint] -> [Vec2 GLfloat] -> [Maybe GLfloat]
getThem2 (Just index : indices) values =
    (toJusts . toArray2 $ values !! fromIntegral (index-1))
        ++ getThem2 indices values
getThem2 (Nothing : indices) values = Nothing : getThem2 indices values
getThem2 [] _ = []

toJusts :: [a] -> [Maybe a]
toJusts = map Just

toArray3 :: Vec3 a -> [a]
toArray3 (x, y, z) = [x, y, z]

toArray2 :: Vec2 a -> [a]
toArray2 (x, y) = [x, y]

faceVertIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceVertIndices ((x, _, _):xs) =
    x : faceVertIndices xs
faceVertIndices [] = []

faceTexIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceTexIndices ((_, y, _):xs) =
    y : faceTexIndices xs
faceTexIndices [] = []

faceNormIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceNormIndices ((_, _, z):xs) =
    z : faceNormIndices xs
faceNormIndices [] = []

loadOBJFaces :: Handle -> IO [Vec3 (Maybe GLuint)]
loadOBJFaces handle = do
    eof <- hIsEOF handle
    if not eof
        then do
            line <- hGetLine handle
            if "f " `isPrefixOf` line
                then do
                    let groups = tail . filter (not . null) . splitOn " " $ line
                        xs = readFaceGroups groups
                    others <- loadOBJFaces handle
                    return $ xs ++ others
            else loadOBJFaces handle
    else hClose handle >> return []

loadOBJNormals :: Handle -> IO [Vec3 GLfloat]
loadOBJNormals handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vn " `isPrefixOf` line
                then do
                    let vert = readOBJVecLine line
                    others <- loadOBJNormals handle
                    return $ vert : others
            else loadOBJNormals handle
    else hClose handle >> return []

loadOBJTexs :: Handle -> IO [Vec2 GLfloat]
loadOBJTexs handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vt " `isPrefixOf` line
                then do
                    let vert = readOBJTexLine line
                    others <- loadOBJTexs handle
                    return $ vert : others
            else loadOBJTexs handle
    else hClose handle >> return []

loadOBJVertices :: Handle -> IO [Vec3 GLfloat]
loadOBJVertices handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "v " `isPrefixOf` line
                then do
                    let vert = readOBJVecLine line
                    others <- loadOBJVertices handle
                    return $ vert : others
            else loadOBJVertices handle
    else hClose handle >> return []

loadOBJMaterialLib :: Handle -> IO [Material]
loadOBJMaterialLib handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "mtllib " `isPrefixOf` line
                then loadMtlFile . head . rawObjLine $ line
            else loadOBJMaterialLib handle
    else hClose handle >> return []

loadObjMaterials :: FilePath -> IO [Material]
loadObjMaterials file = do
    handle1 <- openFile file ReadMode
    library <- loadOBJMaterialLib handle1
    handle2 <- openFile file ReadMode
    listOfMats handle2 library emptyMaterial

listOfMats :: Handle -> [Material] -> Material -> IO [Material]
listOfMats handle library currentMat = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "usemtl " `isPrefixOf` line
                then    let mat = findMaterial (head . rawObjLine $ line) library
                        in listOfMats handle library mat
            else if "f " `isPrefixOf` line
                then do
                    others <- listOfMats handle library currentMat
                    return $ replicate 3 currentMat ++ others
            else listOfMats handle library currentMat
    else hClose handle >> return []

loadOBJMatsRec :: Handle -> [Material] -> Int -> IO [(Material, Int)]
loadOBJMatsRec handle mats i = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "usemtl " `isPrefixOf` line
                then do
                    let name = head $ rawObjLine line
                        mat = findMaterial name mats
                    others <- loadOBJMatsRec handle mats i
                    return $ (mat, i) : others
            else loadOBJMatsRec handle mats $
                if "f " `isPrefixOf` line
                    then i + 1
                else i
    else hClose handle >> return []

findMaterial :: String -> [Material] -> Material
findMaterial name library = head $ filter (\x -> matName x == name) library

readOBJVecLine :: String -> Vec3 GLfloat
readOBJVecLine line =
    let nums = tail . filter (not . null) . splitOn " " $ line
    in if length nums == 3
        then toTriplet $ readAll nums
    else undefined

readOBJTexLine :: String -> Vec2 GLfloat
readOBJTexLine line =
    let nums = tail . filter (not . null) . splitOn " " $ line
    in if length nums == 2
        then let (tx, ty) = toTwin $ readAll nums
            in (tx, 1 - ty)
    else (-1, -1)

toTwin :: [a] -> (a, a)
toTwin (x:ys) = (x, head ys)

readFaceGroups :: [String] -> [Vec3 (Maybe GLuint)]
readFaceGroups = foldr ((:) . readFaceGroup) []

readFaceGroup :: String -> Vec3 (Maybe GLuint)
readFaceGroup x = 
    let splittedRaw = splitOn "/" x
    in toTripletUnknown splittedRaw

toTripletUnknown :: [String] -> Vec3 (Maybe GLuint)
toTripletUnknown (x:y:zs) =
    let z = head zs
        getMaybe t = 
            if null t
                then Nothing
            else Just $ read t
    in (getMaybe x, getMaybe y, getMaybe z)

toTriplet :: [a] -> (a, a, a)
toTriplet (x:y:zs) = (x, y, head zs)

unTripletM :: [Maybe (Vec3 GLfloat)] -> [GLfloat]
unTripletM (Just (x, y, z):xs) = [x, y, z] ++ unTripletM xs
unTripletM (Nothing : xs) = [0, 0, 0] ++ unTripletM xs
unTripletM [] = []

unTriplet :: (a, a, a) -> [a]
unTriplet (x, y, z) = [x, y, z]


rawObjLine :: String -> [String]
rawObjLine = tail . filter (not . null) . splitOn " "

readOBJLine :: String -> [GLfloat]
readOBJLine = readAll . tail . filter (not . null) . splitOn " "

readAll :: Read a => [String] -> [a]
readAll = map read
