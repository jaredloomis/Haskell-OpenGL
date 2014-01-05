module Material where

import System.IO
import Data.List
import Data.Maybe
import Data.List.Split
import Control.Monad

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

import Types
import Textures

test :: IO ()
test = loadMtlFile "res/Ibanez.mtl" >>= print

loadMtlFile :: FilePath -> IO [Material]
loadMtlFile file =
    openFile file ReadMode >>= loadMtlMaterials

loadMtlMaterials :: Handle -> IO [Material]
loadMtlMaterials handle =
    liftM tail $ loadMtlMaterialsRec 0 handle emptyMaterial

-- | Apply defualt values to attributes set to
--   Nothing according to spec at
--   http://people.sc.fsu.edu/~jburkardt/data/mtl/mtl.html
applyDefualtMtl :: Material -> Material
applyDefualtMtl mat@(Material _ amb diff spec _ _) =
    let newAmb = if isNothing amb
                    then Just (0.2, 0.2, 0.2)
                else amb
        newDiff = if isNothing diff
                    then Just (0.8, 0.8, 0.8)
                else diff
        newSpec = if isNothing spec
                    then Just (1.0, 1.0, 1.0)
                else spec
    in mat{matAmbientColor = newAmb,
           matDiffuseColor = newDiff,
           matSpecularColor = newSpec}

-- | UNSAFE!! Use loadMtlMaterials instead.
loadMtlMaterialsRec :: GLuint -> Handle -> Material -> IO [Material]
loadMtlMaterialsRec textureCount handle start = do
    eof <- hIsEOF handle
    if not eof
        then do 
            line <- hGetLine handle
            -- If there is a declaration of a new Material,
            -- "add the current mat to the list" and start
            -- on a new Material.
            if "newmtl " `isPrefixOf` line
                then do
                    let name = head $ rawMtlLine line
                    rest <- loadMtlMaterialsRec textureCount handle
                                (Material name Nothing Nothing Nothing Nothing Nothing)
                    return $ start : rest
            else if not $ null line
                -- Call executeCommand on current line and Material
                -- and then continue adding attributes to that Material.
                then
                    let origTex = matTexture start
                    in do
                        newMat <- executeCommand line start textureCount
                        if matTexture newMat == origTex
                            then loadMtlMaterialsRec textureCount handle newMat
                        else loadMtlMaterialsRec (textureCount+1) handle newMat
            else loadMtlMaterialsRec textureCount handle start
    -- If it is End Of File, close the file and
    -- return the last Material.
    else hClose handle >> return [start]

executeCommand :: String -> Material -> GLuint -> IO Material
executeCommand command mat textureCount
    | "Ka " `isPrefixOf` command =
        return mat{matAmbientColor = Just $ readMtlLineTriplet command}
    | "Kd " `isPrefixOf` command =
        return mat{matDiffuseColor = Just $ readMtlLineTriplet command}
    | "Ks " `isPrefixOf` command =
        return mat{matSpecularColor = Just $ readMtlLineTriplet command}
    | "map_Kd " `isPrefixOf` command = do
        texture <- loadGLTextureId textureCount $ head $ rawMtlLine command
        return mat{matTexture = Just texture, matTexId = Just textureCount}
    | otherwise = return mat

readMtlLineTriplet :: String -> Vec3 GLfloat
readMtlLineTriplet = toTripletMtl . readMtlLine

readMtlLine :: String -> [GLfloat]
readMtlLine = map read . tail . filter (not . null) . splitOn " "

rawMtlLine :: String -> [String]
rawMtlLine = tail . filter (not . null) . splitOn " "

toTripletMtl :: [a] -> Vec3 a
toTripletMtl (x:y:zs) = (x, y, head zs)

emptyMaterial :: Material
emptyMaterial = Material "" Nothing Nothing Nothing Nothing Nothing

data Material = Material {
    matName :: String,
    matAmbientColor :: Maybe (Vec3 GLfloat),
    matDiffuseColor :: Maybe (Vec3 GLfloat),
    matSpecularColor :: Maybe (Vec3 GLfloat),
    matTexture :: Maybe GL.TextureObject,
    matTexId :: Maybe GLuint
} deriving (Show)
