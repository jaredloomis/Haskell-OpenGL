module Engine.Model.ObjLoader (
    loadObjModel, loadObjFile
) where

import System.IO
    (openFile, IOMode(..), hGetContents, hClose)
import Data.List (isPrefixOf, intercalate)
import Data.List.Split (splitOn)
import Data.Maybe (isJust, fromJust)
import Control.Monad (liftM)
import System.Directory (doesFileExist)

import qualified Data.Vector.Storable as V
import qualified Data.DList as D

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

import Engine.Model.Material
    (Material(..), emptyMaterial, loadMtlFile, allImagesInFile)
import Engine.Model.Model
    (Model(..), createModel)
import Engine.Core.Vec (Vec3(..))
import Engine.Model.DatLoader
import Engine.Graphics.Textures (juicyLoadTexture)

loadObjModel ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadObjModel objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
    hasDatFile <- doesFileExist $ objFile ++ ".dat"
    (totalData, mTextures) <-
        if hasDatFile
            then do
                (totalDat, images) <- loadData (objFile ++ ".dat")
                textures <- mapM juicyLoadTexture images
                return (totalDat, textures)
        else do
            handle <- openFile objFile ReadMode
            fileContents <- hGetContents handle
            let directory = (intercalate "/" . init $ splitOn "/" objFile) ++ "/"
            (mats, lib) <- loadObjMaterials directory $! fileContents
            hClose handle
            let obj = loadObj fileContents

                dat = toArrays obj
                materialDiffs = fromVec3M $ map matDiffuseColor mats
                materialTexIds = map (fromIntegral . fromJustSafe . matTexId) mats
                total = dat ++ [materialDiffs, materialTexIds]

            images <- liftM concat $
                mapM (\f -> liftM allImagesInFile (openFile (directory ++ f) ReadMode >>= hGetContents)) $ allMtlsInObj fileContents

            writeDataToFile (objFile ++ ".dat") total images

            return (total, map (fromJust . matTexture) $ filter (isJust . matTexture) lib)

    tmp <- createModel vert frag
        attrNames
        totalData
        [3, 2, 3, 3, 1]
        (fromIntegral (length . head $ totalData) `div` 3)

    let mTexIds = replicate (length mTextures) 0 :: [GLint]
    return tmp{modelTextures =
        zip mTextures
            mTexIds}

-- | Parse an .obj file and return a Vec3 [GLfloat]
--   containing the vertices, texture coordinates,
--   and normals, in that order.
loadObjFile :: FilePath -> IO (Vec3 [GLfloat])
loadObjFile file = do
    handle <- openFile file ReadMode
    objData <- liftM loadObj $! hGetContents handle
    hClose handle
    return objData

-- | Parse a string containing the specification
--   for an .obj model and return a Vec3 [GLfloat]
--   containing the vertices, texture coordinates,
--   and normals, in that order.
loadObj :: String -> Vec3 [GLfloat]
loadObj text =
    let verts = parseVertices text
        norms = parseNormals text
        texs = parseTextures text
        faces = parseFaces text
    in packObj verts norms texs faces

-- | Given DLists containg raw information read from a
--   .obj file, put together a Vec3 [GLfloat] of the
--   vertices, texture coordinates, and normals,
--   in that order, formatted to be sent to OpenGL.
packObj ::
    D.DList GLfloat ->      -- ^ Vertices
    D.DList GLfloat ->      -- ^ Normals
    D.DList GLfloat ->      -- ^ Texture coords
    D.DList (Maybe Int) ->  -- ^ Face Definitions
    Vec3 [GLfloat]
packObj verts norms texs faces =
    let lFaces = D.toList faces
        lVerts = V.fromList $ D.toList verts
        lNorms = V.fromList $ D.toList norms
        lTexs = V.fromList $ D.toList texs

        faceVerts = takeEvery3 1 lFaces
        faceTexs = takeEvery3 2 lFaces
        faceNorms = takeEvery3 3 lFaces

        realVerts = D.toList $ getIndicesD lVerts faceVerts 3
        realNorms = D.toList $ getIndicesD lNorms faceNorms 3
        realTexs = D.toList $ getIndicesD lTexs faceTexs 2
    in Vec3 realVerts realTexs realNorms

-- | Given a List of () indices to read and the
--   Vector to read from, read given indices for all
--   Just values, and use -1.0 as a default value for
--   Nothings. Returns a DList of GLfloats.
getIndicesD :: V.Vector GLfloat -> [Maybe Int] -> Int -> D.DList GLfloat
getIndicesD haystack (x:xs) vecType
    | isJust x =
            -- Get the section of the vector that is needed.
        let index = vecType * (fromJust x - 1)
            splitList = snd $ V.splitAt index haystack
            -- Switch to dlist for its O(1) appending.
            ret = D.fromList $ V.toList $ V.take vecType splitList
        in ret `D.append` getIndicesD haystack xs vecType
    | otherwise = D.replicate vecType (-1.0) `D.append` getIndicesD haystack xs vecType
getIndicesD _ _ _ = D.empty

takeEvery3 :: Int -> [a] -> [a]
takeEvery3 offset (x:y:z:rest)
    | offset == 1 = x : takeEvery3 offset rest
    | offset == 2 = y : takeEvery3 offset rest
    | offset == 3 = z : takeEvery3 offset rest
    | otherwise = error $ "ObjLoader.takeEvery 3: arg"
                        ++ "must be 1, 2, or 3"
takeEvery3 _ _ = []
{-# INLINE takeEvery3 #-}

parseFaces :: String -> D.DList (Maybe Int)
parseFaces = D.concat . map faceLineCheck . lines
    where
    faceLineCheck line =
        if "f " `isPrefixOf` line
            then parseFaceLine line
        else D.empty

parseFaceLine :: String -> D.DList (Maybe Int)
parseFaceLine =
    D.concat . map parseFaceGroup . tail . words
{-# INLINE parseFaceLine #-}

parseFaceGroup :: String -> D.DList (Maybe Int)
parseFaceGroup =
    D.fromList . map retrieveData . splitOn "/"
    where
    retrieveData text =
        if null text
            then Nothing
        else Just $ read text
{-# INLINE parseFaceGroup #-}

parseVertices :: String -> D.DList GLfloat
parseVertices = parsePrefix "v "
parseNormals :: String -> D.DList GLfloat
parseNormals = parsePrefix "vn "
parseTextures :: String -> D.DList GLfloat
parseTextures =
    D.concat . map lineCheck . lines
    where
    lineCheck line =
        if "vt " `isPrefixOf` line
            then
                let [x, y] = D.toList $ parseLine line
                in D.fromList [x, 1-y]
        else D.empty

-- | Call parseLine on all lines with the given prefix
--   in given String.
parsePrefix :: Read a => String -> String -> D.DList a
parsePrefix prefix =
    D.concat . map lineCheck . lines
    where
    lineCheck line =
        if prefix `isPrefixOf` line
            then parseLine line
        else D.empty
    {-# INLINE lineCheck #-}

parseLine :: Read a => String -> D.DList a
parseLine = D.map read . D.tail . D.fromList . words
{-# INLINE parseLine #-}

loadObjMaterials :: String -> String -> IO ([Material], [Material])
loadObjMaterials directory contents = do
    library <- loadObjMaterialLib directory contents

    let listRet = listOfMats contents library emptyMaterial

    return (listRet, library)

loadObjMaterialLib :: String -> String -> IO [Material]
loadObjMaterialLib directory =
    liftM concat . mapM (\x -> loadMtlFile (directory++x)) . parseMtlLibs
{-# INLINE loadObjMaterialLib #-}

parseMtlLibs :: String -> [FilePath]
parseMtlLibs = getMaterialLibs . lines

getMaterialLibs :: [String] -> [FilePath]
getMaterialLibs (line:rest) =
    if "mtllib " `isPrefixOf` line
        then (last . words $ line) :
                getMaterialLibs rest
    else getMaterialLibs rest
getMaterialLibs _ = []
--{-# INLINE getMaterialLibs #-}

listOfMats :: String -> [Material] -> Material -> [Material]
listOfMats contents =
    lineAction (lines contents)
    where
    lineAction :: [String] -> [Material] -> Material -> [Material]
    lineAction (line:rest) library currentMat
        | "usemtl " `isPrefixOf` line =
            let mat = findMaterial (last . words $ line) library
            in lineAction rest library mat
        | "f " `isPrefixOf` line =
            replicate 3 currentMat ++
                lineAction rest library currentMat
        | otherwise = lineAction rest library currentMat
    lineAction _ _ _ = []

allMtlsInObj :: String -> [FilePath]
allMtlsInObj =
    map (last . filter (not . null) . splitOn " ") . filter (isPrefixOf "mtllib ") . lines

findMaterial :: String -> [Material] -> Material
findMaterial name library = head $ filter (\x -> matName x == name) library
{-# INLINE findMaterial #-}

toArrays :: Vec3 [a] -> [[a]]
toArrays (Vec3 x y z) = [x, y, z]

fromVec3M :: [Maybe (Vec3 a)] -> [a]
fromVec3M (Just (Vec3 x y z) : xs) =
    [x, y, z] ++ fromVec3M xs
fromVec3M [] = []
fromVec3M (Nothing : _) = error "fromVec3M: argument contained Nothing."

fromJustSafe :: Num a => Maybe a -> a
fromJustSafe (Just x) = x
fromJustSafe Nothing = 0
{-# INLINE fromJustSafe #-}
