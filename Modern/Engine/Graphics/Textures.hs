module Engine.Graphics.Textures where

import Data.Vector.Storable (unsafeWith)
import Data.Word (Word8)

import qualified Codec.Picture as Juicy
import qualified Codec.Picture.Types as JTypes

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (GLint)
import Graphics.Rendering.OpenGL (DataType(..))

data Image = Image GL.Size (GL.PixelData Word8) deriving (Show)

type Texture = (GL.TextureObject, GLint)

-- TODO: add support for all (most) colorspaces / formats.
juicyLoadImage :: FilePath -> IO Image
juicyLoadImage file = do
    image <- Juicy.readImage file

    case image of
        Left err -> error err
        Right (Juicy.ImageRGB8 (Juicy.Image w h dat)) ->
            unsafeWith dat $ \ptr ->
            return $ Image (GL.Size (fromIntegral w) (fromIntegral h))
                            (GL.PixelData GL.RGB UnsignedByte ptr)
        Right (Juicy.ImageYCbCr8 img) ->
            let (Juicy.Image w h dat) = JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in unsafeWith dat $ \ptr ->
                return $ Image (GL.Size (fromIntegral w) (fromIntegral h))
                            (GL.PixelData GL.RGB UnsignedByte ptr)
        _ -> error "Engine.Graphics.Texture.juicyLoadImage: bad image colorspace or format."
