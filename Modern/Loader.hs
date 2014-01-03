{-# LANGUAGE RankNTypes #-}
module Loader where

import Data.List
import Data.List.Split
import System.FilePath ((</>))
import System.IO

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint)

import Types
import Util

test :: IO ()
test = do
    obj@(x, y, z) <- loadOBJ ("res" </> "cube.obj")
    
    let dat = toArrays $ negateNothing3 obj
    print $ length x
    print $ length y
    print $ length z
    print $ length $ dat !! 0
    print $ length $ dat !! 1
    print $ length $ dat !! 2
    print dat

loadOBJModel ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadOBJModel objFile vert frag =
    let attrNames = ["position", "texCoord", "normal"]
    in do
        obj <- loadOBJ objFile
        let objClean = negateNothing3 obj
            dat = toArrays objClean
        createModel vert frag 
            [("res" </> "Crate.bmp")]
            attrNames 
            dat
            [3, 2, 3]
            (fromIntegral (length $ dat !! 0) `div` 3)

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
negateNothing (Nothing : rest) len = take len (repeat (-1)) ++ negateNothing rest len
negateNothing [] _ = []

loadOBJ :: FilePath -> IO (Vec3 [Maybe GLfloat])
loadOBJ file = do
    h1 <- openFile file ReadMode
    verts <- loadOBJVerticesVec h1
    h2 <- openFile file ReadMode
    norms <- loadOBJNormalsVec h2
    h3 <- openFile file ReadMode
    faces <- loadOBJFaces h3
    h4 <- openFile file ReadMode
    uvs <- loadOBJTexsVec h4

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
    else return []

loadOBJNormalsVec :: Handle -> IO [Vec3 GLfloat]
loadOBJNormalsVec handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vn " `isPrefixOf` line
                then do
                    let vert = readOBJVecLine line
                    others <- loadOBJNormalsVec handle
                    return $ vert : others
            else loadOBJNormalsVec handle
    else return []

loadOBJTexsVec :: Handle -> IO [Vec2 GLfloat]
loadOBJTexsVec handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "vt " `isPrefixOf` line
                then do
                    let vert = readOBJTexLine line
                    others <- loadOBJTexsVec handle
                    return $ vert : others
            else loadOBJTexsVec handle
    else return []


loadOBJVerticesVec :: Handle -> IO [Vec3 GLfloat]
loadOBJVerticesVec handle = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            if "v " `isPrefixOf` line
                then do
                    let vert = readOBJVecLine line
                    others <- loadOBJVerticesVec handle
                    return $ vert : others
            else loadOBJVerticesVec handle
    else return []

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
        then toTwin $ readAll nums
    else undefined

toTwin :: [a] -> (a, a)
toTwin (x:ys) = (x, head ys)

readFaceGroups :: [String] -> [Vec3 (Maybe GLuint)]
readFaceGroups = foldr ((:) . readFaceGroup) []

readFaceGroup :: String -> Vec3 (Maybe GLuint)
readFaceGroup x = 
    let splittedRaw = splitOn "/" x
    in toTripletUnknown splittedRaw

toTripletsUnknown :: [String] -> [Vec3 (Maybe GLuint)]
toTripletsUnknown (x:y:z:xs) =
    toTripletUnknown [x, y, z] : toTripletsUnknown xs
toTripletsUnknown [] = []

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

readOBJLine :: String -> [GLfloat]
readOBJLine = readAll . tail . filter (not . null) . splitOn " "

readAll :: Read a => [String] -> [a]
readAll = map read

--type Vec3 a = (a, a, a)
--type Vec2 a = (a, a)
