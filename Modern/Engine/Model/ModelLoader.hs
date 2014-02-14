{-# LANGUAGE RankNTypes, OverloadedStrings #-}
module Engine.Model.ModelLoader (
    loadObjModel,
    loadObj, loadObjModelTess
) where

import Data.Maybe (fromJust)
import Data.List
import Data.List.Split
import System.IO
import Data.IORef

import Criterion.Main

import qualified Data.ByteString.Char8 as B

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint)

import Engine.Model.Material
import Engine.Model.Model
import Engine.Core.Vec
import Engine.Core.World

-- | Completely loads a .obj file, given the current WorldState,
--   the FilePath to the .obj, and the FilePaths to the vertex
--   and fragment shaders.
loadObjModelTess ::
    IORef WorldState ->
    FilePath ->
    FilePath ->
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadObjModelTess wStateRef objFile vert frag tessC tessE =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        -- obj <- loadObj objFile
        handle <- openFile objFile ReadMode
        fLines <- getFileLinesB handle
        let (verts, norms, texs, faces) = loadByteString fLines
            obj = packObj faces verts texs norms

        (mats, lib) <- loadObjMaterials wStateRef objFile

        let objClean = negateNothing3 obj
            dat = toArrays objClean
            
            materialDiffs = fromVec3M $ map matDiffuseColor mats
            materialTexIds = map (fromIntegral . fromJustSafe . matTexId) mats

            totalData = dat ++ [materialDiffs, materialTexIds]

        tmp <- createModelTess vert frag tessC tessE
            attrNames
            totalData
            [3, 2, 3, 3, 1]
            (fromIntegral (length $ head dat) `div` 3)
        return tmp{modelTextures =
            zip (map (fromJust . matTexture) lib)
                (map (fromJust . matTexId) lib)}

-- | Completely loads a .obj file, given the current WorldState,
--   the FilePath to the .obj, and the FilePaths to the vertex
--   and fragment shaders.
loadObjModel ::
    IORef WorldState ->
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadObjModel wStateRef objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        -- obj <- loadObj objFile
        handle <- openFile objFile ReadMode
        fLines <- getFileLinesB handle
        let (verts, norms, texs, faces) = loadByteString fLines
            obj = packObj faces verts texs norms

        (mats, lib) <- loadObjMaterials wStateRef objFile

        let objClean = negateNothing3 obj
            dat = toArrays objClean
            
            materialDiffs = fromVec3M $ map matDiffuseColor mats
            materialTexIds = map (fromIntegral . fromJustSafe . matTexId) mats

            totalData = dat ++ [materialDiffs, materialTexIds]

        tmp <- createModel vert frag 
            attrNames
            totalData
            [3, 2, 3, 3, 1]
            (fromIntegral (length $ head dat) `div` 3)
        return tmp{modelTextures =
            zip (map (fromJust . matTexture) lib)
                (map (fromJust . matTexId) lib)}

packObj ::
    [Vec3 (Maybe GLuint)] -> -- ^ Face definitions
    [Vec3 GLfloat] ->  -- ^ Vertices
    [Vec2 GLfloat] ->  -- ^ Texture coordinates
    [Vec3 GLfloat] ->  -- ^ Normals
    Vec3 [Maybe GLfloat]
packObj faces vertices uvs normals =
    let faceVerts = faceVertIndices faces
        faceTexs = faceTexIndices faces
        faceNorms = faceNormIndices faces
        
        retVerts = getThem3 faceVerts vertices
        retTexs = getThem2 faceTexs uvs
        retNorms = getThem3 faceNorms normals

    in Vec3 retVerts retTexs retNorms

--------------------------------------------
----- ByteString loading begin -------------
--------------------------------------------

getFileLinesB :: Handle -> IO [B.ByteString]
getFileLinesB handle = do
    hSetBinaryMode handle True
    contents <- B.hGetContents handle
    return $ B.split '\n' contents

loadByteString :: [B.ByteString] -> 
    ([Vec3 GLfloat], [Vec3 GLfloat], [Vec2 GLfloat], [Vec3 (Maybe GLuint)])
loadByteString =
    foldr (\line -> consMine (if "v " `B.isPrefixOf` line
                    then (Just $ readObjVecLineB line, Nothing, Nothing, Nothing)
                else if "vn " `B.isPrefixOf` line
                    then (Nothing, Just $ readObjVecLineB line, Nothing, Nothing)
                else if "vt " `B.isPrefixOf` line
                    then (Nothing, Nothing, Just $ readObjTexLine $ B.unpack line, Nothing)
                else if "f " `B.isPrefixOf` line
                    then (Nothing, Nothing, Nothing,
                          Just $ readFaceGroupsB (tail $ splitSpacesB line))
                else (Nothing, Nothing, Nothing, Nothing))) ([], [], [], [])

test :: IO ()
test = defaultMain [
    bench "fact 30" $ whnf splitSpacesB "Why be gay?",
    bench "fact 40" $ whnf splitSpacesB "Hello, world, how are you???"
    ]
        
consMine :: (Maybe (Vec3 GLfloat),
            Maybe (Vec3 GLfloat),
            Maybe (Vec2 GLfloat),
            Maybe [Vec3 (Maybe GLuint)]) ->
          ([Vec3 GLfloat], [Vec3 GLfloat], [Vec2 GLfloat], [Vec3 (Maybe GLuint)])
            -> ([Vec3 GLfloat], [Vec3 GLfloat], [Vec2 GLfloat], [Vec3 (Maybe GLuint)])
consMine (Just a, _, _, _) (as, bs, cs, ds) = (a:as, bs, cs, ds)
consMine (_, Just b, _, _) (as, bs, cs, ds) = (as, b:bs, cs, ds)
consMine (_, _, Just c, _) (as, bs, cs, ds) = (as, bs, c:cs, ds)
consMine (_, _, _, Just d) (as, bs, cs, ds) = (as, bs, cs, d++ds)
consMine _ xs = xs

readFaceGroupsB :: [B.ByteString] -> [Vec3 (Maybe GLuint)]
readFaceGroupsB = foldr ((:) . readFaceGroupB) []

readFaceGroupB :: B.ByteString -> Vec3 (Maybe GLuint)
readFaceGroupB x = 
    let splittedRaw = B.splitWith (=='/') x
    in toVec3UnknownB splittedRaw

toVec3UnknownB :: [B.ByteString] -> Vec3 (Maybe GLuint)
toVec3UnknownB (x:y:zs) =
    let z = head zs
        getMaybe t = 
            if B.null t
                then Nothing
            else Just $ read (B.unpack t)
    in Vec3 (getMaybe x) (getMaybe y) (getMaybe z)
toVec3UnknownB _ =
    error $ "ModelLoader.toVec3UnknownB: given "
            ++ "list contains less than 3 ByteStrings."

splitSpacesB :: B.ByteString -> [B.ByteString]
splitSpacesB = B.split ' '

readObjVecLineB :: B.ByteString -> Vec3 GLfloat
readObjVecLineB line = 
    let nums = tail . filter (not . B.null) . splitSpacesB $ line
    in if length nums == 3
        then toVec3 $ readAll $ map B.unpack nums
    else undefined

--------------------------------------------
----- ByteString loading end   -------------
--------------------------------------------

loadObj :: FilePath -> IO (Vec3 [Maybe GLfloat])
loadObj file = do
    verts <- openFile file ReadMode >>= loadObjVertices
    norms <- openFile file ReadMode >>= loadObjNormals
    uvs <- openFile file ReadMode >>= loadObjTexs
    faces <- openFile file ReadMode >>= loadObjFaces

    return $ packObj faces verts uvs norms

loadObjFaces :: Handle -> IO [Vec3 (Maybe GLuint)]
loadObjFaces handle = do
    eof <- hIsEOF handle
    if not eof
        then do
            line <- hGetLine handle
            if "f " `isPrefixOf` line
                then do
                    let groups = tail . filter (not . null) . splitOn " " $ line
                        xs = readFaceGroups groups
                    others <- loadObjFaces handle
                    return $ xs ++ others
            else loadObjFaces handle
    else hClose handle >> return []

loadObjNormals :: Handle -> IO [Vec3 GLfloat]
loadObjNormals handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vn " `isPrefixOf` line
                then do
                    let vert = readObjVecLine line
                    others <- loadObjNormals handle
                    return $ vert : others
            else loadObjNormals handle
    else hClose handle >> return []

loadObjTexs :: Handle -> IO [Vec2 GLfloat]
loadObjTexs handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vt " `isPrefixOf` line
                then do
                    let vert = readObjTexLine line
                    others <- loadObjTexs handle
                    return $ vert : others
            else loadObjTexs handle
    else hClose handle >> return []

loadObjVertices :: Handle -> IO [Vec3 GLfloat]
loadObjVertices handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "v " `isPrefixOf` line
                then do
                    let vert = readObjVecLine line
                    others <- loadObjVertices handle
                    return $ vert : others
            else loadObjVertices handle
    else hClose handle >> return []

loadObjMaterialLib :: IORef WorldState -> Handle -> IO [Material]
loadObjMaterialLib wStateRef handle = do
    eof <- hIsEOF handle
    if not eof
        then do
            line <- hGetLine handle
            if "mtllib " `isPrefixOf` line
                then loadMtlFile wStateRef . head . rawObjLine $ line
            else loadObjMaterialLib wStateRef handle
    else hClose handle >> return []

loadObjMaterials :: IORef WorldState -> FilePath -> IO ([Material], [Material])
loadObjMaterials wStateRef file = do
    handle1 <- openFile file ReadMode
    library <- loadObjMaterialLib wStateRef handle1
    handle2 <- openFile file ReadMode
    listRet <- listOfMats handle2 library emptyMaterial
    return (listRet, library)
    

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

{-
loadObjMatsRec :: Handle -> [Material] -> Int -> IO [(Material, Int)]
loadObjMatsRec handle mats i = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "usemtl " `isPrefixOf` line
                then do
                    let name = head $ rawObjLine line
                        mat = findMaterial name mats
                    others <- loadObjMatsRec handle mats i
                    return $ (mat, i) : others
            else loadObjMatsRec handle mats $
                if "f " `isPrefixOf` line
                    then i + 1
                else i
    else hClose handle >> return []
-}
findMaterial :: String -> [Material] -> Material
findMaterial name library = head $ filter (\x -> matName x == name) library

readObjVecLine :: String -> Vec3 GLfloat
readObjVecLine line =
    let nums = tail . filter (not . null) . splitOn " " $ line
    in if length nums == 3
        then toVec3 $ readAll nums
    else undefined

readObjTexLine :: String -> Vec2 GLfloat
readObjTexLine line =
    let nums = tail . filter (not . null) . splitOn " " $ line
    in if length nums == 2
        then let Vec2 tx ty = toVec2 $ readAll nums
            in Vec2 tx (1-ty)
    else Vec2 (-1) (-1)

toVec2 :: [a] -> Vec2 a
toVec2 (x:ys) = Vec2 x (head ys)
toVec2 _ =
    error $ "ModelLoader.toVec2: given list contains"
        ++ "less than 2 elements."

readFaceGroups :: [String] -> [Vec3 (Maybe GLuint)]
readFaceGroups = foldr ((:) . readFaceGroup) []

readFaceGroup :: String -> Vec3 (Maybe GLuint)
readFaceGroup x = 
    let splittedRaw = splitOn "/" x
    in toVec3Unknown splittedRaw

toVec3Unknown :: [String] -> Vec3 (Maybe GLuint)
toVec3Unknown (x:y:zs) =
    let z = head zs
        getMaybe t = 
            if null t
                then Nothing
            else Just $ read t
    in Vec3 (getMaybe x) (getMaybe y) (getMaybe z)
toVec3Unknown _ = error $ "ModelLoader.toVec3Unknown: given "
            ++ "list contains less than 3 Strings."

toVec3 :: [a] -> Vec3 a
toVec3 xs
    | length xs == 3 = Vec3 (head xs) (xs !! 1) (xs !! 2)
    | otherwise = undefined

fromVec3M :: [Maybe (Vec3 a)] -> [a]
fromVec3M (Just (Vec3 x y z) : xs) =
    [x, y, z] ++ fromVec3M xs
fromVec3M [] = []
fromVec3M (Nothing : _) = error "fromVec3M: argument contained Nothing."

rawObjLine :: String -> [String]
rawObjLine = tail . filter (not . null) . splitOn " "

{-
readOBJLine :: String -> [GLfloat]
readOBJLine = readAll . tail . filter (not . null) . splitOn " "
-}

readAll :: Read a => [String] -> [a]
readAll = map read

getThem3 :: [Maybe GLuint] -> [Vec3 GLfloat] -> [Maybe GLfloat]
getThem3 (Just index : indices) values =
    (map Just . toArray3 $ values !! fromIntegral (index-1))
        ++ getThem3 indices values
getThem3 (Nothing : indices) values = Nothing : getThem3 indices values
getThem3 [] _ = []

getThem2 :: [Maybe GLuint] -> [Vec2 GLfloat] -> [Maybe GLfloat]
getThem2 (Just index : indices) values =
    (map Just . toArray2 $ values !! fromIntegral (index-1))
        ++ getThem2 indices values
getThem2 (Nothing : indices) values = Nothing : getThem2 indices values
getThem2 [] _ = []

{-# INLINE faceVertIndices #-}
faceVertIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceVertIndices xs = map (\(Vec3 x _ _) -> x) xs

{-# INLINE faceTexIndices #-}
faceTexIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceTexIndices xs = map (\(Vec3 _ y _) -> y) xs

{-# INLINE faceNormIndices #-}
faceNormIndices :: [Vec3 (Maybe GLuint)] -> [Maybe GLuint]
faceNormIndices xs = map (\(Vec3 _ _ z) -> z) xs

{-# INLINE fromJustSafe #-}
fromJustSafe :: Num a => Maybe a -> a
fromJustSafe (Just x) = x
fromJustSafe Nothing = 0

toArrays :: forall a. Vec3 [a] -> [[a]]
toArrays (Vec3 x y z) = [x] ++ [y] ++ [z]

negateNothing3 :: Num a => Vec3 [Maybe a] -> Vec3 [a]
negateNothing3 (Vec3 x y z) = Vec3 (negateNothing x 3) (negateNothing y 2) (negateNothing z 3)

negateNothing :: Num a => [Maybe a] -> Int -> [a]
negateNothing (Just x : rest) len = x : negateNothing rest len
negateNothing (Nothing : rest) len = replicate len (-1) ++ negateNothing rest len
negateNothing [] _ = []

{-
splitSpaces :: String -> [String]
splitSpaces = filter (not . null) . splitOn " "
-}
