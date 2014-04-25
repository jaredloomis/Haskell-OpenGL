{-# LANGUAGE OverloadedStrings #-}
module Engine.Model.DatLoader (
    writeDataToFile, loadData,
    loadDatModel
) where

import Data.List (intercalate)
import Data.List.Split (splitOn)
import System.IO (openFile, IOMode(..), hPutStrLn)
import Data.Maybe (isJust)
-- In all tests so far, the strict version is a bit faster.
-- It may be necessary to switch to the lazy version
-- depending on the user's RAM and the size of the file being
-- loaded, as the strict one loads the file directly into memory.
import qualified Data.ByteString.Char8 as B
    (ByteString, lines, hGetContents, pack,
     unpack, isPrefixOf, append, split,
     words, splitWith, head, readInt,
     elemIndex, tail, length, hPutStrLn,
     hPutStr)

import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

import Engine.Model.Model (Model(..), createModel)
import Engine.Graphics.Textures (juicyLoadTexture)

writeDataToFile :: FilePath -> [[GLfloat]] -> [B.ByteString] -> IO ()
writeDataToFile datFile [verts, coords, norms, colors, tids] =
    writeVntToDat datFile (verts, norms, coords, tids) colors
writeDataToFile _ _ =
    error $ "DatLoader.writeDataToFile:" ++
            "arguments not properly formatted."

writeVntToDat :: FilePath -> ([GLfloat], [GLfloat], [GLfloat], [GLfloat])-> [GLfloat] -> [B.ByteString] -> IO ()
writeVntToDat datFile (verts, norms, texCoords, texIds) colors images =
    let vertStr = listToString verts
        normStr = listToString norms
        texcStr = listToString texCoords
        texiStr = listToString texIds
        colsStr = listToString colors
        imgsStr = listStringsToString images

    in do
        handle <- openFile datFile WriteMode
        B.hPutStr handle "v "
        hPutStrLn handle vertStr

        B.hPutStr handle "n "
        hPutStrLn handle normStr

        B.hPutStr handle "tc "
        hPutStrLn handle texcStr

        B.hPutStr handle "ti "
        hPutStrLn handle texiStr

        B.hPutStr handle "img "
        B.hPutStrLn handle imgsStr

        B.hPutStr handle "rgb "
        hPutStrLn handle colsStr

listToString :: Show a => [a] -> String
listToString (x:y:xs) =
    show x ++ "," ++ listToString (y:xs)
listToString (x:[]) =
    show x
listToString [] =
    error "DatLoader.listToString: argument is empty."


-- TODO: VERY SLOW!
listStringsToString :: [B.ByteString] -> B.ByteString
listStringsToString (x:y:xs) =
    x `B.append` "," `B.append` listStringsToString (y:xs)
listStringsToString (x:[]) =
    x
listStringsToString [] =
    error "DatLoader.listStringsToString: argument is empty."

--

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

loadData :: FilePath -> IO ([[GLfloat]], [FilePath])
loadData datFile = do
    fileContents <- openFile datFile ReadMode >>= B.hGetContents
    let fileLines = B.lines fileContents
        verts = loadVerts fileLines
        norms = loadNormals fileLines
        colors = loadColors fileLines
        texCoords = loadTexCoords fileLines
        texIds = loadTexIds fileLines
        directory = B.pack $ (intercalate "/" . init $ splitOn "/" datFile) ++ "/" 
        textures = loadTextures directory fileLines
    return ([verts, texCoords, norms, colors, texIds], map B.unpack textures)

loadVerts :: [B.ByteString] -> [GLfloat]
loadVerts =
    readDataLine . takeFirst (B.isPrefixOf "v ")

loadNormals :: [B.ByteString] -> [GLfloat]
loadNormals =
    readDataLine . takeFirst (B.isPrefixOf "n ")

loadColors :: [B.ByteString] -> [GLfloat]
loadColors =
    readDataLine . takeFirst (B.isPrefixOf "rgb ")

loadTexCoords :: [B.ByteString] -> [GLfloat]
loadTexCoords =
    readDataLine . takeFirst (B.isPrefixOf "tc ")

loadTexIds :: [B.ByteString] -> [GLfloat]
loadTexIds =
    readDataLine . takeFirst (B.isPrefixOf "ti ")

loadTextures :: B.ByteString -> [B.ByteString] -> [B.ByteString]
loadTextures prefix =
    map (prefix `B.append`) . parseDataLine . takeFirst (B.isPrefixOf "img ")

readDataLine :: B.ByteString -> [GLfloat]
readDataLine = map parseBsFloat . parseDataLine

parseDataLine :: B.ByteString -> [B.ByteString]
parseDataLine = B.split ',' . last . B.words

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

takeFirst :: (a -> Bool) -> [a] -> a
takeFirst func (x:xs)
    | func x = x
    | otherwise = takeFirst func xs
takeFirst _ _ = error "DatLoader.takeFirst: pattern not matched."
{-# INLINE takeFirst #-}
