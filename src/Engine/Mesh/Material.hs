{-# LANGUAGE OverloadedStrings #-}
module Engine.Mesh.Material (
    Material(..), loadMtlFile, emptyMaterial
) where

import System.IO (IOMode (ReadMode), Handle,
                  openFile, hIsEOF, hClose)
import Data.List (intercalate)
import Data.Maybe (isNothing, isJust)
import Data.List.Split (splitOn)
import Control.Monad (liftM)
--import Control.DeepSeq (NFData(..), deepseq)
import Data.Vec ((:.)(..), Vec3)

import qualified Data.ByteString.Char8 as B

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLuint, GLint)

import Engine.Graphics.Textures (juicyLoadTexture)

data Material = Material {
    matName :: B.ByteString,
    matAmbientColor :: Maybe (Vec3 GLfloat),
    matDiffuseColor :: Maybe (Vec3 GLfloat),
    matSpecularColor :: Maybe (Vec3 GLfloat),
    matTexture :: Maybe GLuint,
    matTexId :: Maybe GLint,
    matTexturePaths :: [B.ByteString]
} deriving (Show)

{-
instance NFData Material where
    rnf (Material n ac dc sc t ti tps) =
        n `deepseq` ac `deepseq` dc
        `deepseq` sc `deepseq` t `seq` ti `seq` tps `deepseq` ()
-}

loadMtlFile :: FilePath -> IO [Material]
loadMtlFile file = do
    let directory = (intercalate "/" . init $ splitOn "/" file) ++ "/"
    openFile file ReadMode >>= loadMtlMaterials directory

loadMtlMaterials :: FilePath -> Handle -> IO [Material]
loadMtlMaterials directory handle =
    liftM (map applyDefualtMtl . tail)
          (loadMtlMaterialsRec directory 0 handle emptyMaterial)

-- | Apply defualt values to attributes set to
--   Nothing according to spec at
--   http://people.sc.fsu.edu/~jburkardt/data/mtl/mtl.html
applyDefualtMtl :: Material -> Material
applyDefualtMtl mat@(Material _ amb diff spec _ texId _) =
    let newAmb = if isNothing amb
                    then Just $ 0.2 :. 0.2 :. 0.2 :. ()
                else amb
        newDiff = if isNothing diff
                    then Just $ 0.8 :. 0.8 :. 0.8 :. ()
                else diff
        newSpec = if isNothing spec
                    then Just $ 1.0 :. 1.0 :. 1.0 :. ()
                else spec
        newTexId = if isNothing texId
                    then Just (-1)
                else texId
    in mat{matAmbientColor = newAmb,
           matDiffuseColor = newDiff,
           matSpecularColor = newSpec,
           matTexId = newTexId}

-- | UNSAFE!! Use loadMtlMaterials instead.
loadMtlMaterialsRec :: FilePath -> GLuint -> Handle -> Material -> IO [Material]
loadMtlMaterialsRec directory textureCount handle start = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- B.hGetLine handle
            -- If there is a declaration of a new Material,
            -- "add the current mat to the list" and start
            -- on a new Material.
            if "newmtl " `B.isPrefixOf` line
                then do
                    let name = head $ rawMtlLine line
                    rest <- loadMtlMaterialsRec directory textureCount handle
                                (Material name Nothing Nothing Nothing Nothing Nothing [])
                    return $ start : rest
            else if not $ B.null line
                -- Call executeCommand on current line and Material
                -- and then continue adding attributes to that Material.
                then
                    let origTex = matTexture start
                    in do
                        newMat <- executeCommand directory line start textureCount
                        if matTexture newMat == origTex
                            then loadMtlMaterialsRec directory textureCount handle newMat
                        else loadMtlMaterialsRec directory (textureCount+1) handle newMat
            else loadMtlMaterialsRec directory textureCount handle start
    -- If it is End Of File, close the file and
    -- return the last Material.
    else hClose handle >> return [start]

executeCommand :: FilePath -> B.ByteString -> Material -> GLuint -> IO Material
executeCommand directory command mat textureCount
    | "Ka " `B.isPrefixOf` command =
        return mat{matAmbientColor = Just $ readMtlLineTriplet command}
    | "Kd " `B.isPrefixOf` command =
        return mat{matDiffuseColor = Just $ readMtlLineTriplet command}
    | "Ks " `B.isPrefixOf` command =
        return mat{matSpecularColor = Just $ readMtlLineTriplet command}
    | "map_Kd " `B.isPrefixOf` command = do
        texture <- juicyLoadTexture $ directory ++ B.unpack (head $ rawMtlLine command)
        return mat{matTexture = Just texture,
                   matTexId = Just $ fromIntegral textureCount,
                   matTexturePaths = head (rawMtlLine command) : matTexturePaths mat}
    | otherwise = return mat

{-
allImagesInFile :: String -> [FilePath]
allImagesInFile =
    map (last . filter (not . null) . splitOn " ") . filter (isPrefixOf "map_Kd ") . lines
-}

readMtlLineTriplet :: B.ByteString -> Vec3 GLfloat
readMtlLineTriplet = toTripletMtl . readMtlLine

readMtlLine :: B.ByteString -> [GLfloat]
readMtlLine = map parseBsFloat . tail . filter (not . B.null) . B.split ' '

rawMtlLine :: B.ByteString -> [B.ByteString]
rawMtlLine = tail . filter (not . B.null) . B.split ' '

toTripletMtl :: [GLfloat] -> Vec3 GLfloat
toTripletMtl xs
    | length xs == 3 = head xs :. (xs !! 1) :. (xs !! 2) :. ()
    | otherwise = error "Material.toTripletMtl"

emptyMaterial :: Material
emptyMaterial = Material "" Nothing Nothing Nothing Nothing Nothing []

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
