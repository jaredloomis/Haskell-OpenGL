{-# LANGUAGE OverloadedStrings #-}
module Engine.Model.ObjLoader (
    loadObjModel, loadObjFile,
    loadObjObject
) where

import System.IO
    (openFile, IOMode(..), hClose)
import Data.List (intercalate)
import Data.List.Split (splitOn)
import Data.Maybe (isJust, fromJust)
import Control.Monad (liftM)
import System.Directory (doesFileExist)
import Control.DeepSeq (deepseq)

import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Storable as V
    (Vector, fromList, splitAt, toList,
     take)
import qualified Data.DList as D
    (DList, toList, fromList, append,
     replicate, empty, concat, map,
     tail)

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

import Engine.Model.Material
    (Material(..), emptyMaterial, loadMtlFile)
import Engine.Model.Model
    (Model(..), createModel)
import Engine.Core.Vec (Vec3(..))
import Engine.Core.Types (GameObject(..))
import Engine.Model.DatLoader
    (writeDataToFile, loadDatModel)

loadObjObject ::
    FilePath ->
    FilePath ->
    t ->
    FilePath ->
    IO (GameObject t)
loadObjObject vert frag t obj = do
    model <- loadObjModel obj vert frag
    return $ Entity 0 0 0 return model t

loadObjModel ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO Model
loadObjModel objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        hasDatFile <- doesFileExist $ objFile ++ ".dat"
        if hasDatFile
            then loadDatModel (objFile ++ ".dat") vert frag
        else do
            fileContents <- getContentsSafe objFile
            let directory = directoryOfFile objFile

            (mats, lib) <- loadObjMaterials directory fileContents

            let total = totalObjData fileContents mats
                images = concatMap matTexturePaths lib

            writeDataToFile (objFile ++ ".dat") total images

            let (totalData, mTextures) =
                    (total, map (fromJust . matTexture) $
                    filter (isJust . matTexture) lib)

            tmp <- createModel vert frag
                attrNames
                totalData
                [3, 2, 3, 3, 1]
                (fromIntegral (length . head $ totalData) `div` 3)

            let mTexIds = replicate (length mTextures) 0 :: [GLint]
            return tmp{modelTextures =
                zip mTextures
                    mTexIds}

totalObjData :: B.ByteString -> [Material] -> [[GLfloat]]
totalObjData contents mats =
    let obj = loadObj contents
        dat = toArrays obj
        materialDiffs = fromVec3M $ map matDiffuseColor mats
        materialTexIds = map (fromIntegral . fromJustSafe . matTexId) mats
    in dat ++ [materialDiffs, materialTexIds] 

getContentsSafe :: FilePath -> IO B.ByteString
getContentsSafe f = do
    handle <- openFile f ReadMode
    fileContents <- B.hGetContents handle
    fileContents `deepseq` hClose handle
    return fileContents

directoryOfFile :: FilePath -> FilePath
directoryOfFile = (++"/") . intercalate "/" . init . splitOn "/"

-- | Parse an .obj file and return 3 [GLfloat]s
--   containing the vertices, texture coordinates,
--   and normals, in that order.
loadObjFile :: FilePath -> IO ([GLfloat], [GLfloat], [GLfloat])
loadObjFile file = do
    handle <- openFile file ReadMode
    objData <- liftM loadObj $! B.hGetContents handle
    hClose handle
    return objData

-- | Parse a string containing the specification
--   for an .obj model and return a Vec3 [GLfloat]
--   containing the vertices, texture coordinates,
--   and normals, in that order.
loadObj :: B.ByteString -> ([GLfloat], [GLfloat], [GLfloat])
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
    D.DList GLfloat ->      -- Vertices
    D.DList GLfloat ->      -- Normals
    D.DList GLfloat ->      -- Texture coords
    D.DList (Maybe Int) ->  -- Face Definitions
    ([GLfloat], [GLfloat], [GLfloat])
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
    in (realVerts, realTexs, realNorms)

-- | Given a List of indices to read and the
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
    | otherwise =
        D.replicate vecType (-1.0) `D.append` getIndicesD haystack xs vecType
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

parseFaces :: B.ByteString -> D.DList (Maybe Int)
parseFaces = D.concat . map faceLineCheck . B.lines
    where
    faceLineCheck line =
        if "f " `B.isPrefixOf` line
            then parseFaceLine line
        else D.empty

parseFaceLine :: B.ByteString -> D.DList (Maybe Int)
parseFaceLine =
    D.concat . map parseFaceGroup . tail . B.words
{-# INLINE parseFaceLine #-}

parseFaceGroup :: B.ByteString -> D.DList (Maybe Int)
parseFaceGroup =
    D.fromList . map retrieveData . B.split '/'
    where
    retrieveData text =
        if B.null text
            then Nothing
        else Just $ (floor . parseBsFloat) text
{-# INLINE parseFaceGroup #-}

parseVertices :: B.ByteString -> D.DList GLfloat
parseVertices = parsePrefix "v "
parseNormals :: B.ByteString -> D.DList GLfloat
parseNormals = parsePrefix "vn "
parseTextures :: B.ByteString -> D.DList GLfloat
parseTextures =
    D.concat . map lineCheck . B.lines
    where
    lineCheck :: B.ByteString -> D.DList GLfloat
    lineCheck line =
        if "vt " `B.isPrefixOf` line
            then
                let [x, y] = D.toList $ parseLine line
                in D.fromList [x, 1-y]
        else D.empty

-- | Call parseLine on all lines with the given prefix
--   in given String.
parsePrefix :: B.ByteString -> B.ByteString -> D.DList GLfloat
parsePrefix prefix =
    D.concat . map lineCheck . B.lines
    where
    lineCheck line =
        if prefix `B.isPrefixOf` line
            then parseLine line
        else D.empty
    {-# INLINE lineCheck #-}

parseLine :: B.ByteString -> D.DList GLfloat
parseLine = D.map parseBsFloat . D.tail . D.fromList . B.words
{-# INLINE parseLine #-}

loadObjMaterials :: String -> B.ByteString -> IO ([Material], [Material])
loadObjMaterials directory contents = do
    library <- loadObjMaterialLib directory contents

    let listRet = listOfMats contents library emptyMaterial

    return (listRet, library)

loadObjMaterialLib :: String -> B.ByteString -> IO [Material]
loadObjMaterialLib directory =
    liftM concat .
        mapM (\x -> loadMtlFile (directory++B.unpack x)) . parseMtlLibs
{-# INLINE loadObjMaterialLib #-}

parseMtlLibs :: B.ByteString -> [B.ByteString]
parseMtlLibs = getMaterialLibs . B.lines

getMaterialLibs :: [B.ByteString] -> [B.ByteString]
getMaterialLibs (line:rest) =
    if "mtllib " `B.isPrefixOf` line
        then (last . B.words $ line) :
                getMaterialLibs rest
    else getMaterialLibs rest
getMaterialLibs _ = []

listOfMats :: B.ByteString -> [Material] -> Material -> [Material]
listOfMats contents =
    lineAction (B.lines contents)
    where
    lineAction :: [B.ByteString] -> [Material] -> Material -> [Material]
    lineAction (line:rest) library currentMat
        | "usemtl " `B.isPrefixOf` line =
            let mat = findMaterial (last . B.words $ line) library
            in lineAction rest library mat
        | "f " `B.isPrefixOf` line =
            replicate 3 currentMat ++
                lineAction rest library currentMat
        | otherwise = lineAction rest library currentMat
    lineAction _ _ _ = []

findMaterial :: B.ByteString -> [Material] -> Material
findMaterial name library = head $ filter (\x -> matName x == name) library
{-# INLINE findMaterial #-}

toArrays :: ([a], [a], [a]) -> [[a]]
toArrays (x, y, z) = [x, y, z]
{-# INLINE toArrays #-}

fromVec3M :: [Maybe Vec3] -> [GLfloat]
fromVec3M (Just (Vec3 x y z) : xs) =
    [x, y, z] ++ fromVec3M xs
fromVec3M [] = []
fromVec3M (Nothing : _) = error "fromVec3M: argument contained Nothing."

fromJustSafe :: Num a => Maybe a -> a
fromJustSafe (Just x) = x
fromJustSafe Nothing = 0
{-# INLINE fromJustSafe #-}

parseBsFloat :: B.ByteString -> GLfloat
parseBsFloat = fst . parseBsFloat'

parseBsFloat' :: B.ByteString -> (GLfloat, B.ByteString)
parseBsFloat' bs
    | isJust ('e' `B.elemIndex` bs) =
        let [baseBs, expBs] = B.splitWith (=='e') bs
            (base, _) = parseBsFloat' baseBs
            (expon, rest) = parseBsFloat' expBs
        in (base * (10.0 ** expon), rest)

    | isJust ('.' `B.elemIndex` bs) =
        let negative = B.head bs == '-'
            Just (whole, decimalBS) = B.readInt $
                if negative
                    then B.tail bs
                else bs
            Just (decimal, rest) = B.readInt $ B.tail decimalBS
        in if negative
                then (negate $ fromIntegral whole +
                    (fromIntegral decimal / 10 ^ (B.length decimalBS - 1)), rest)
            else (fromIntegral whole +
                (fromIntegral decimal / 10 ^ (B.length decimalBS - 1)), rest)

    | otherwise =
        let Just (val, rest) = B.readInt bs
        in (fromIntegral val, rest)

-- TODO: Rewrite with attoparsec.
{-

-- ATTOPARSEC --

type V3 a = (a, a, a)

data ObjLine =
    LineVert Vec3
  | LineNorm Vec3
  | LineTex  Vec2
  | LineFace (V3 (V3 Int))
  | Invalid B.ByteString
    deriving (Show, Eq)

-- PROCESSING



-- PARSING

parseObj :: Parser [ObjLine]
parseObj = many $ parseObjLine <* endOfLine

parseObjLine :: Parser ObjLine
parseObjLine =
    parseVertLine <|> parseInvalid

parseVertLine :: Parser ObjLine
parseVertLine =
    char 'v' *> skipSpace *> (LineVert <$> parseVec3)

parseNormLine :: Parser ObjLine
parseNormLine =
    string "vn" *> skipSpace *> (LineNorm <$> parseVec3) 

parseTexLine :: Parser ObjLine
parseTexLine =
    string "vt" *> skipSpace *> (LineTex <$> parseVec2)

parseFaceLine' :: Parser ObjLine
parseFaceLine' = do
    string "f" *> skipSpace *> (LineFace <$> parseFaceDat)

parseFaceDat :: Parser (V3 (V3 Int))
parseFaceDat = do
    v1 <- decimal  <|> return (-1)
    _ <- char '/'  <|> return ' '
    vt1 <- decimal <|> return (-1)
    _ <- char '/'  <|> return ' '
    vn1 <- decimal <|> return (-1)
    _ <- skipSpace

    v2 <- decimal  <|> return (-1)
    _ <- char '/'  <|> return ' '
    vt2 <- decimal <|> return (-1)
    _ <- char '/'  <|> return ' '
    vn2 <- decimal <|> return (-1)
    _ <- skipSpace

    v3 <- decimal  <|> return (-1)
    _ <- char '/'  <|> return ' '
    vt3 <- decimal <|> return (-1)
    _ <- char '/'  <|> return ' '
    vn3 <- decimal <|> return (-1)
    return ((v1, vt1, vn1),
            (v2, vt2, vn2),
            (v3, vt3, vn3))

parseVec3 :: Parser Vec3
parseVec3 = do
    x <- realToFrac <$> double
    skipSpace
    y <- realToFrac <$> double
    skipSpace
    z <- realToFrac <$> double
    return $ Vec3 x y z

parseVec2 :: Parser Vec2
parseVec2 = do
    x <- realToFrac <$> double
    skipSpace
    y <- realToFrac <$> double
    return $ Vec2 x y

parseInvalid :: Parser ObjLine
parseInvalid =
    Invalid <$> A.takeWhile (/='\n')

skipSpace' :: Parser ()
skipSpace' = do
    _ <- many space
    return ()
-}
