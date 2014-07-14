{-# LANGUAGE OverloadedStrings #-}
module Engine.Mesh.ObjLoader (
    loadObjModel,
    loadObjObject
) where

import Control.Applicative
import Data.List (intercalate)
import Data.List.Split (splitOn)
import Data.Maybe (isJust, fromJust)
import Data.Default (def)
import System.Directory (doesFileExist)
import qualified Data.ByteString.Char8 as B
import Data.Vec ((:.)(..), Vec3, Vec2)

import qualified Data.Sequence as S (empty, index)
import Data.Sequence (Seq, (|>))

import Data.Attoparsec.ByteString.Char8
import qualified Data.Attoparsec.ByteString.Char8 as A (takeWhile)

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

import Engine.Mesh.Material
    (Material(..), emptyMaterial, loadMtlFile)
import Engine.Mesh.Mesh
    (Mesh(..), createMesh)
import Engine.Core.Types (Entity(..))
import Engine.Mesh.DatLoader
    (writeDataToFile, loadDatModel,
     loadDatModelKeepVerts)
import Engine.Bullet.Bullet
    (Physics(..), addStaticTriangleMesh)

-- | Load an .obj into a "Model" and
--   put that into a "GameObject".
loadObjObject ::
    Physics ->
    FilePath ->
    FilePath ->
    t ->
    FilePath ->
    IO (Entity t)
loadObjObject phys vert frag t obj = do
    (model, verts) <- loadObjModelKeepVerts obj vert frag
    -- TODO: Make it possible to make non-static mesh.
    Entity 0 0 0 return model <$> addStaticTriangleMesh verts def phys <*> return t
    --let AABBSet _ aabbs = meshAABBSet model
    --Entity 0 0 0 return model <$> addAABBs aabbs def phys <*> return t
    

-- | Parse an .obj file and return the "Model"
--   containing the data needed to render it.
loadObjModel ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO Mesh
loadObjModel objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        hasDatFile <- doesFileExist $ objFile ++ ".dat"
        if hasDatFile
            then loadDatModel (objFile ++ ".dat") vert frag
        else do
            fileContents <- B.readFile objFile
            let directory = directoryOfFile objFile

            (mats, lib) <- loadObjMaterials directory fileContents

            let total = totalObjData fileContents mats
                images = concatMap matTexturePaths lib

            writeDataToFile (objFile ++ ".dat") total images

            let (totalData, mTextures) =
                    (total, map (fromJust . matTexture) $
                    filter (isJust . matTexture) lib)

            tmp <- createMesh vert frag
                attrNames
                totalData
                [3, 2, 3, 3, 1]
                (fromIntegral (length . head $ totalData) `div` 3)

            let mTexIds = replicate (length mTextures) 0 :: [GLint]
            return tmp{meshTextures =
                zip mTextures
                    mTexIds}
  where
    directoryOfFile :: FilePath -> FilePath
    directoryOfFile = (++"/") . intercalate "/" . init . splitOn "/"

-- | Parse an .obj file and return the "Model"
--   containing the data needed to render it.
loadObjModelKeepVerts ::
    FilePath ->
    FilePath ->
    FilePath ->
    IO (Mesh, [GLfloat])
loadObjModelKeepVerts objFile vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        hasDatFile <- doesFileExist $ objFile ++ ".dat"
        if hasDatFile
            then loadDatModelKeepVerts (objFile ++ ".dat") vert frag
        else do
            fileContents <- B.readFile objFile
            let directory = directoryOfFile objFile

            (mats, lib) <- loadObjMaterials directory fileContents

            let total = totalObjData fileContents mats
                images = concatMap matTexturePaths lib

            writeDataToFile (objFile ++ ".dat") total images

            let (totalData, mTextures) =
                    (total, map (fromJust . matTexture) $
                    filter (isJust . matTexture) lib)

            tmp <- createMesh vert frag
                attrNames
                totalData
                [3, 2, 3, 3, 1]
                (fromIntegral (length . head $ totalData) `div` 3)

            let mTexIds = replicate (length mTextures) 0 :: [GLint]
            return (tmp{meshTextures =
                zip mTextures
                    mTexIds}, head totalData)
  where
    directoryOfFile :: FilePath -> FilePath
    directoryOfFile = (++"/") . intercalate "/" . init . splitOn "/"

-- | Parse the contents of an .obj, for the
--   vertices, texture coordinates, and normals
--   in that order.
totalObjData :: B.ByteString -> [Material] -> [[GLfloat]]
totalObjData contents mats =
    let dat = parseObjData contents
        materialDiffs = fromVec3M $ map matDiffuseColor mats
        materialTexIds = map (fromIntegral . fromJustSafe . matTexId) mats
    in dat ++ [materialDiffs, materialTexIds]

loadObjMaterials :: String -> B.ByteString -> IO ([Material], [Material])
loadObjMaterials directory contents = do
    library <- loadObjMaterialLib directory contents

    let listRet = listOfMats contents library emptyMaterial

    return (listRet, library)

loadObjMaterialLib :: String -> B.ByteString -> IO [Material]
loadObjMaterialLib directory =
    (<$>) concat .
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

-- ATTOPARSEC --

data V3 a = V3 a a a
    deriving (Show, Eq)
--type V3 a = (a, a, a)

data ObjLine =
    LineVert (Vec3 GLfloat)
  | LineNorm (Vec3 GLfloat)
  | LineTex  (Vec2 GLfloat)
  | LineFace (V3 (V3 Int))
  | Invalid B.ByteString
    deriving (Show, Eq)

----------------
-- PROCESSING --
----------------

parseObjData :: B.ByteString -> [[GLfloat]]
parseObjData = pieceTogether . runObjParser

pieceTogether :: [ObjLine] -> [[GLfloat]]
pieceTogether objLines = pieceTogether' objLines (S.empty, S.empty, S.empty)

pieceTogether' :: [ObjLine] ->
                  (Seq (Vec3 GLfloat),
                   Seq (Vec2 GLfloat),
                   Seq (Vec3 GLfloat)) ->
                  [[GLfloat]]
pieceTogether' (LineVert vert : objLines) (vaccum, taccum, naccum) =
    pieceTogether' objLines (vaccum |> vert, taccum, naccum)
pieceTogether' (LineNorm norm : objLines) (vaccum, taccum, naccum) =
    pieceTogether' objLines (vaccum, taccum, naccum |> norm)
pieceTogether' (LineTex tex : objLines) (vaccum, taccum, naccum) =
    pieceTogether' objLines (vaccum, taccum |> tex, naccum)
pieceTogether' (LineFace (V3 (V3 v1 vt1 vn1) (V3 v2 vt2 vn2) (V3 v3 vt3 vn3)) : objLines)
              (vaccum, taccum, naccum) =
    let vert1 = vaccum `S.index` (v1-1)
        tex1  = taccum `S.index` (vt1-1)
        norm1 = naccum `S.index` (vn1-1)

        vert2 = vaccum `S.index` (v2-1)
        tex2  = taccum `S.index` (vt2-1)
        norm2 = naccum `S.index` (vn2-1)

        vert3 = vaccum `S.index` (v3-1)
        tex3  = taccum `S.index` (vt3-1)
        norm3 = naccum `S.index` (vn3-1)

        [restV, restT, restN] = pieceTogether' objLines (vaccum, taccum, naccum)

    in [unpackVec3 vert1++unpackVec3 vert2++unpackVec3 vert3++restV,
        unpackVec2 tex1 ++unpackVec2 tex2 ++unpackVec2 tex3 ++restT,
        unpackVec3 norm1++unpackVec3 norm2++unpackVec3 norm3++restN]
  where
    unpackVec3 (x :. y :. z :. ()) = [x,y,z]
    unpackVec2 (x :. y :. ()) = [x,y]
pieceTogether' (Invalid _ : objLines) accum =
    pieceTogether' objLines accum
pieceTogether' [] _ = [[],[],[]]

-------------
-- PARSING --
-------------

runObjParser :: B.ByteString -> [ObjLine]
runObjParser contents =
    let Right results = parseOnly parseObj contents
    in results

parseObj :: Parser [ObjLine]
parseObj = many $ parseObjLine <* endOfLine
{-# INLINE parseObj #-}

parseObjLine :: Parser ObjLine
parseObjLine =
        parseVertLine
    <|> parseNormLine
    <|> parseTexLine
    <|> parseFaceLine
    <|> parseInvalid
{-# INLINE parseObjLine #-}

parseVertLine :: Parser ObjLine
parseVertLine =
    char 'v' *> skipSpace *> (LineVert <$> parseVec3)
{-# INLINE parseVertLine #-}

parseNormLine :: Parser ObjLine
parseNormLine =
    "vn" *> skipSpace *> (LineNorm <$> parseVec3)
{-# INLINE parseNormLine #-}

parseTexLine :: Parser ObjLine
parseTexLine =
    "vt" *> skipSpace *> (LineTex . texCoordToGLFormat <$> parseVec2)
{-# INLINE parseTexLine #-}

-- | .obj files store texture coordinates in a
--   way that OpenGL doesn't understand. This
--   puts it in the right format.
texCoordToGLFormat :: Vec2 GLfloat -> Vec2 GLfloat
texCoordToGLFormat (x :. y :. ()) = x :. (1-y) :. ()
{-# INLINE texCoordToGLFormat #-}

parseFaceLine :: Parser ObjLine
parseFaceLine = do
    char 'f' *> skipSpace *> (LineFace <$> parseFaceDat)
{-# INLINE parseFaceLine #-}

parseFaceDat :: Parser (V3 (V3 Int))
parseFaceDat =
    toV3 <$> timesSep 3 parseFaceGroup skipSpace
  where
    toV3 :: [V3 Int] -> V3 (V3 Int)
    toV3 [x, y, z] = V3 x y z
    toV3 _ = error ("Engine.Model.ObjLoader." ++
                    "parseFaceDat.toV3 - Bad list length!")

-- | This MUST be NOINLINE'd if -O2 is used,
--   otherwise it crashes, due to a GHC 7.8.2
--   bug.
timesSep :: Int -> Parser a -> Parser b -> Parser [a]
timesSep = times' 0
  where
    times' i total parser sep
        | i+1 < total =
            liftA2 (:) (parser <* sep) (times' (i+1) total parser sep)
        | i+1 == total =
            liftA2 (:) parser (times' (i+1) total parser sep)
        | otherwise = return []
{-# NOINLINE timesSep #-}

parseFaceGroup :: Parser (V3 Int)
parseFaceGroup = do
    v <- decimal
    _ <- char '/'
    vt <- decimal <|> return (-1)
    _ <- char '/'
    vn <- decimal <|> return (-1)
    return $ V3 v vt vn

parseVec3 :: Parser (Vec3 GLfloat)
parseVec3 = do
    x :. y :. () <- parseVec2
    skipSpace
    z <- realToFrac <$> double
    return $ x :. y :. z :. ()

parseVec2 :: Parser (Vec2 GLfloat)
parseVec2= do
    x <- realToFrac <$> double
    skipSpace
    y <- realToFrac <$> double
    return $ x :. y :. ()

parseInvalid :: Parser ObjLine
parseInvalid =
    Invalid <$> A.takeWhile (/='\n')
{-# INLINE parseInvalid #-}

fromVec3M :: [Maybe (Vec3 GLfloat)] -> [GLfloat]
fromVec3M (Just (x :. y :. z :. ()) : xs) =
    [x, y, z] ++ fromVec3M xs
fromVec3M [] = []
fromVec3M (Nothing : _) = error "fromVec3 GLfloatM: argument contained Nothing."

fromJustSafe :: Num a => Maybe a -> a
fromJustSafe (Just x) = x
fromJustSafe Nothing = 0
{-# INLINE fromJustSafe #-}
