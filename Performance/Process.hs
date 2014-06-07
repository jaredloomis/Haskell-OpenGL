module Main where

import Control.Applicative
import System.IO
import Data.List
import Debug.Trace

data Top = Top {
    pid :: Int,
    user :: String,
    pr :: Int,
    ni :: Int,
    virt :: Double,
    res :: Double,
    shr :: Double,
    s :: Char,
    cpu :: Double,
    mem :: Double,
    time :: String
} deriving (Show, Read)

main :: IO ()
main = do
    handle <- openFile "processed_data_lazy.txt" ReadMode

    tops <- map read . lines <$> hGetContents handle

--    let x = average cpu tops
--    let x = averageHalves cpu tops
    let x = shr . last $ tops
    print x

    hClose handle

average :: (Top -> Double) -> [Top] -> Double
average f xs =
    (/ fromIntegral (length xs)) . sum . map f $ xs

averageHalves :: (Top -> Double) -> [Top] -> (Double, Double)
averageHalves f xs =
    let len = length xs
        firstH = take (len `div` 2) xs
        secondH = drop (len `div` 2) xs
    in (average f firstH, average f secondH)

{-
main :: IO ()
main = do
    handle1 <- openFile "top_data.txt" ReadMode

    tops <- parse <$> hGetContents handle1
    let stringedData = concatMap (\x -> show x ++ "\n") tops
    putStr stringedData

    hClose handle1
-}

parse :: String -> [Top]
parse = map parseLine . filter (not . null) . tail . lines

parseLine :: String -> Top
parseLine =
    parseWords . map (\w -> if "[" `isPrefixOf` w then "0" else w) . words

parseWords :: [String] -> Top
parseWords w =
    Top (read' $ w !! 0) (w !! 1) (read' $ w !! 2)
        (read' $ w !! 3) (read' $ w !! 4) (read' $ w !! 5)
        (read' $ w !! 6) (head $ w !! 7) (read' $ w !! 8)
        (read' $ w !! 9) (w !! 10)

read' :: Read a => String -> a
read' x = trace x $ read x
