module Engine.Graphics.Textures (
    juicyLoadImageRaw, juicyLoadTexture,
    Image(..), Texture
) where

import Control.Monad (liftM)
import Data.Vector.Storable (unsafeWith)
import Foreign (Word8)

import qualified Codec.Picture as Juicy
import qualified Codec.Picture.Types as JTypes

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw
import Graphics.Rendering.OpenGL
    (DataType(..), ($=), Size(..))

data Image = Image GL.Size (GL.PixelData Word8)
    deriving (Show)

type Texture = (GL.TextureObject, GLint)

-- | Load an image and turn it into something OpenGL can use.
juicyLoadTexture :: FilePath -> IO GL.TextureObject
juicyLoadTexture file = do
    (Image (Size w h) pd) <- juicyLoadImageRaw file
    texName <- liftM head (GL.genObjectNames 1)
    GL.textureBinding GL.Texture2D $= Just texName
    GL.textureFilter GL.Texture2D $= ((GL.Nearest, Nothing), GL.Nearest)
    GL.texImage2D GL.Texture2D GL.NoProxy
        0
        GL.RGB' (GL.TextureSize2D w h) 0 pd
    return texName

-- TODO: add support for all (most) colorspaces / formats.
juicyLoadImageRaw :: FilePath -> IO Image
juicyLoadImageRaw file = do
    image <- Juicy.readImage file

    case image of
        Left err -> error err
        Right (Juicy.ImageRGB8 (Juicy.Image w h dat)) ->
            unsafeWith dat $ \ptr ->
            return $ Image (GL.Size (fromIntegral w) (fromIntegral h))
                            (GL.PixelData GL.RGB UnsignedByte ptr)
        Right (Juicy.ImageYCbCr8 img) ->
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in unsafeWith dat $ \ptr ->
                return $ Image (GL.Size (fromIntegral w) (fromIntegral h))
                            (GL.PixelData GL.RGB UnsignedByte ptr)
        _ -> error $
            "Engine.Graphics.Texture.juicyLoadImage:"
                ++ "bad image colorspace or format."
