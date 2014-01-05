module Generator where

import System.Random

import Graphics.Rendering.OpenGL.Raw

test = genHeights 0 10 0 >>= printNeat

printNeat :: [[GLfloat]] -> IO ()
printNeat = foldr (\x -> (>>) (print x >> putStrLn "")) (return ())

genHeights :: GLfloat -> Int -> Int -> IO [[GLfloat]]
genHeights startHeight tileSize i
    | i < tileSize = do
        x <- genLine startHeight tileSize
        xs <- genHeights (head x) tileSize (i+1)
        return $ x:xs
    | otherwise = return []

genLine :: GLfloat -> Int -> IO [GLfloat]
genLine startHeight size = genLineRaw startHeight size 0

genLineRaw :: GLfloat -> Int -> Int -> IO [GLfloat]
genLineRaw startHeight size i
    | i < size = do
        deltaHeight <- randomRIO (-2 :: GLfloat, 2 :: GLfloat)
        let newHeight = startHeight + deltaHeight
        restDeltaHs <- genLineRaw newHeight size (i+1)
        return $ newHeight : restDeltaHs
    | otherwise = return []

--getTime = getCurrentTime
