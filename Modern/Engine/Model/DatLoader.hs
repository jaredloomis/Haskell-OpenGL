{-# LANGUAGE OverloadedStrings #-}
module Engine.Model.DatLoader (
    writeDataToFile, loadData
) where

import Data.List (intercalate)
import Data.List.Split (splitOn)
import System.IO (openFile, IOMode(..), hPutStr, hPutStrLn)
import Data.Maybe (isJust)
-- In all tests so far, the strict version is a bit faster.
-- It may be necessary to switch to the lazy version
-- depending on the user's RAM and the size of the file being
-- loaded, as the strict one loads the file directly into memory.
import qualified Data.ByteString.Char8 as B

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Vec (Vec4(..))

writeDataToFile :: FilePath -> [[GLfloat]] -> [FilePath] -> IO ()
writeDataToFile datFile [verts, coords, norms, colors, tids] =
    writeVntToDat datFile (Vec4 verts norms coords tids) colors
writeDataToFile _ _ =
    error $ "DatLoader.writeDataToFile:" ++
            "arguments not properly formatted."

writeVntToDat :: FilePath -> Vec4 [GLfloat] -> [GLfloat] -> [FilePath] -> IO ()
writeVntToDat datFile (Vec4 verts norms texCoords texIds) colors images =
    let vertStr = listToString verts
        normStr = listToString norms
        texcStr = listToString texCoords
        texiStr = listToString texIds
        colsStr = listToString colors
        imgsStr = listStringsToString images

    in do
        handle <- openFile datFile WriteMode
        hPutStr handle "v "
        hPutStrLn handle vertStr

        hPutStr handle "n "
        hPutStrLn handle normStr

        hPutStr handle "tc "
        hPutStrLn handle texcStr

        hPutStr handle "ti "
        hPutStrLn handle texiStr

        hPutStr handle "img "
        hPutStrLn handle imgsStr

        hPutStr handle "rgb "
        hPutStrLn handle colsStr

listToString :: Show a => [a] -> String
listToString (x:y:xs) =
    show x ++ "," ++ listToString (y:xs)
listToString (x:[]) =
    show x
listToString [] =
    error "DatLoader.listToString: argument is empty."

listStringsToString :: [String] -> String
listStringsToString (x:y:xs) =
    x ++ "," ++ listStringsToString (y:xs)
listStringsToString (x:[]) =
    x
listStringsToString [] =
    error "DatLoader.listStringsToString: argument is empty."

--

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
