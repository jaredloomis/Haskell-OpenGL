module Textures where

import Control.Monad
import Foreign hiding (unsafePerformIO)
import System.IO (IOMode(ReadMode), openBinaryFile, hSeek, 
                   SeekMode(RelativeSeek), Handle, hGetBuf)
import System.IO.Unsafe (unsafePerformIO)


--import Data.Vector.Storable (unsafeWith)

--import qualified Codec.Picture as Juicy
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL (PixelData(..), PixelFormat(..), Size(..), 
                                   DataType(..), ($=))

import Types


data Endian = LittleEndian | BigEndian
              deriving (Eq, Ord, Show)

loadGLTextures :: [FilePath] -> IO [GL.TextureObject]
loadGLTextures (file:others) = do --loadGLTexturesIndex files 0
    cur <- loadGLTexture file
    rest <- loadGLTextures others
    return $ cur : rest
loadGLTextures [] = return []

-- | TODO: This loads the files with ids starting at 0,
--   without accounting for previously loaded images.
{-
loadGLTexturesIndex :: [FilePath] -> Integer -> IO [GL.TextureObject]
loadGLTexturesIndex (file:others) i = do
    (Image (Size w h) pd) <- bitmapLoad file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy (fromIntegral i) GL.RGB' (GL.TextureSize2D w h) 0 pd
    
    texNames <- loadGLTexturesIndex others (i+1)
    return $ texName:texNames
loadGLTexturesIndex [] _ = return []
-}

-- | TODO: This loads the files with an id of 0,
--   without accounting for previously loaded images.
loadGLTexture :: FilePath -> IO GL.TextureObject
loadGLTexture file = do
    (Image (Size w h) pd) <- bitmapLoad file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy 0 GL.RGB' (GL.TextureSize2D w h) 0 pd
    return texName

{-
loadGLTexture :: FilePath -> IO GL.TextureObject
loadGLTexture file = do
    (Image (Size w h) pd) <- bitmapLoad file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy 0 GL.RGB' (GL.TextureSize2D w h) 0 pd
    return texName
-}

bitmapLoad :: String -> IO Image
bitmapLoad f = do
    handle <- openBinaryFile f ReadMode
    hSeek handle RelativeSeek 18
    width <- readInt handle
    putStrLn $ "Width of "++f++": "++show width
    height <- readInt handle
    putStrLn $ "Height of "++f++": "++show height
    planes <- readShort handle
    bpp <- readShort handle
    let size = width*height*(fromIntegral bpp `div` 8)
    hSeek handle RelativeSeek 24
    putStrLn $ "Planes = " ++ show planes
    bgrBytes <- (readBytes handle (fromIntegral size) :: IO (Ptr Word8))
    rgbBytes <- bgr2rgb bgrBytes (fromIntegral size)
    return $ Image (Size (fromIntegral width) $ fromIntegral height) $
            PixelData RGB UnsignedByte rgbBytes

endian :: Endian
endian = 
    let r = unsafePerformIO $
            allocaBytes 4 (\p -> do 
                pokeElemOff p 0 (0::Word8)
                pokeElemOff p 1 (1::Word8)
                pokeElemOff p 2 (2::Word8)
                pokeElemOff p 3 (3::Word8)
                peek (castPtr p) :: IO Int32)
         in case r of 50462976 -> LittleEndian
                      66051    -> BigEndian
                      _        -> undefined

bgr2rgb :: Ptr Word8 -> Int -> IO (Ptr Word8)
bgr2rgb p n = mapM_ 
    (\i -> do
        b <- peekElemOff p (i+0)
        g <- peekElemOff p (i+1)
        r <- peekElemOff p (i+2)
        pokeElemOff p (i+0) r
        pokeElemOff p (i+1) g
        pokeElemOff p (i+2) b) 
    [0,3..n-3]
    >> return p
                  
-- This is only needed if you're on PowerPC instead of x86
-- if you are on x86 use the following:
-- reverseBytes p _ = return p
reverseBytes :: Ptr Word8 -> Int -> IO (Ptr Word8)
reverseBytes p n | endian == BigEndian = 
                   do p' <- mallocBytes n
                      mapM_ (\i -> peekElemOff p i >>= pokeElemOff p' (n-i-1)) 
                            [0..n-1]
                      return p'
                 | endian == LittleEndian = do p' <- mallocBytes n
                                               copyBytes p' p n
                                               return p'
reverseBytes _ _ = undefined
                            
readBytes :: Storable a => Handle -> Int -> IO (Ptr a)
readBytes h n = do p <- mallocBytes n
                   _ <- hGetBuf h p n
                   return p

readShort :: Handle -> IO Word16
readShort h = do p <- readBytes h 2 :: IO (Ptr Word8)
                 p' <- reverseBytes (castPtr p) 2
                 free p
                 r <- peek (castPtr p')
                 free p'
                 return r

readInt :: Handle -> IO Int32
readInt h = do p <- readBytes h 4 :: IO (Ptr Word8)
               p' <- reverseBytes (castPtr p) 4
               free p
               r <- peek (castPtr p')
               free p'
               return r

