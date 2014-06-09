{-# LANGUAGE OverloadedStrings #-}
module Engine.Model.DatLoader (
    writeDataToFile, loadData,
    loadDatModel
) where

import Debug.Trace (trace)
import Control.Applicative ((<$>))
import Control.Monad (forM)
import Data.List (intercalate)
import Data.List.Split (splitOn)

import Data.Binary
import Data.Binary.Put
import Data.Binary.Get

import qualified Data.ByteString.Char8 as B
    (length, ByteString)

import qualified Data.ByteString.Lazy as BL
    (writeFile, readFile)

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

import Engine.Model.Model (Model(..), createModel)
import Engine.Graphics.Textures (juicyLoadTexture)

loadDatModel :: FilePath -> FilePath -> FilePath -> IO Model
loadDatModel f vert frag =
    let attrNames = ["position", "texCoord", "normal", "color", "textureId"]
    in do
        (totalDat, images) <- loadData f
        textures <- mapM juicyLoadTexture images

        tmp <- createModel vert frag
            attrNames
            totalDat
            [3, 2, 3, 3, 1]
            (fromIntegral (length . head $ totalDat) `div` 3)

        let mTexIds = replicate (length textures) 0 :: [GLint]
        return tmp{modelTextures =
            zip textures mTexIds}

writeDataToFile :: FilePath -> [[GLfloat]] -> [B.ByteString] -> IO ()
writeDataToFile datFile [verts, coords, norms, colors, tids] images =
    BL.writeFile datFile . runPut $
        putBinaryFromInfo (verts, norms, coords, tids) colors images
writeDataToFile _ _ _ =
    error $ "DatLoader.writeDataToFile:" ++
            "arguments not properly formatted."

putBinaryFromInfo ::
    ([GLfloat], [GLfloat], [GLfloat], [GLfloat]) ->
    [GLfloat] -> [B.ByteString] -> Put
putBinaryFromInfo (verts, norms, texCoords, texIds) colors images = do
    put $ length verts
    writeBinaryDat verts
    put $ length norms
    writeBinaryDat norms
    put $ length texCoords
    writeBinaryDat texCoords
    put $ length texIds
    writeBinaryDat texIds
    put $ length colors
    writeBinaryDat colors
    mapM_ (\i -> put (B.length i) >> putByteString i) images

loadData :: FilePath -> IO ([[GLfloat]], [FilePath])
loadData f = do
    let directory = (intercalate "/" . init $ splitOn "/" f) ++ "/"
    (dat, images) <- runGet getBinaryFromInfo <$> BL.readFile f
    print images
    return (dat, map ((directory++) . bsToString) images)

bsToString :: B.ByteString -> String
bsToString = init . tail . show

getBinaryFromInfo :: Get ([[GLfloat]], [B.ByteString])
getBinaryFromInfo = do
    lenV <- get
    verts <- getBinaryDat lenV
    lenN <- get
    norms <- getBinaryDat lenN
    lenTC <- get
    texCoords <- getBinaryDat lenTC
    lenTI <- get
    texIds <- getBinaryDat lenTI
    lenC <- get
    colors <- getBinaryDat lenC
    images <- getImages
    return ([verts, texCoords, norms, colors, texIds], images)

getImages :: Get [B.ByteString]
getImages = do
    done <- isEmpty
    if not done
        then do
            len <- get
            img <- trace (show len) $ getByteString len
            (img:) <$> getImages
    else return []

writeBinaryDat :: [GLfloat] -> Put
writeBinaryDat verts = do
    mapM_ (put . toFloat) verts

getBinaryDat :: Int -> Get [GLfloat]
getBinaryDat i = do
    fmap (map toGL) <$> forM [1..i] $ const (get :: Get Float)

toFloat :: GLfloat -> Float
toFloat = realToFrac

toGL :: Float -> GLfloat
toGL = realToFrac
