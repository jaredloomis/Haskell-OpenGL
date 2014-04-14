module Engine.Graphics.Textures (
    juicyLoadImageRaw, juicyLoadTexture
) where

import Foreign
import qualified Data.Vector.Storable as V

import qualified Codec.Picture as Juicy
import qualified Codec.Picture.Types as JTypes

import Graphics.Rendering.OpenGL.Raw
    (GLuint,
     glTexParameteri, gl_TEXTURE_2D,
     gl_TEXTURE_MIN_FILTER, gl_NEAREST,
     gl_TEXTURE_MAG_FILTER,
     glBindTexture, glGenTextures,
     glTexImage2D, gl_RGB, gl_UNSIGNED_BYTE)

import Engine.Core.Types (Image(..))

-- | Load an image and turn it into something OpenGL can use.
juicyLoadTexture :: FilePath -> IO GLuint
juicyLoadTexture file = do
    (Image (w, h) pd) <- juicyLoadImageRaw file
    texName <- alloca $ \buf -> do
        glGenTextures 1 buf
        peek buf

    glBindTexture gl_TEXTURE_2D texName

    glTexParameteri gl_TEXTURE_2D
        gl_TEXTURE_MIN_FILTER (fromIntegral gl_NEAREST)
    glTexParameteri gl_TEXTURE_2D
        gl_TEXTURE_MAG_FILTER (fromIntegral gl_NEAREST)

    glTexImage2D gl_TEXTURE_2D 0 (fromIntegral gl_RGB)
                 w h 0 (fromIntegral gl_RGB) gl_UNSIGNED_BYTE pd

    return texName

-- TODO: add support for all (most) colorspaces / formats.
juicyLoadImageRaw :: FilePath -> IO Image
juicyLoadImageRaw file = do
    image <- Juicy.readImage file

    case image of
        Left err -> error err

        Right (Juicy.ImageRGB8 (Juicy.Image w h dat)) ->
            V.unsafeWith dat $ \ptr ->
            return $ Image (fromIntegral w, fromIntegral h) ptr
        Right (Juicy.ImageYCbCr8 img) ->
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in V.unsafeWith dat $ \ptr ->
                return $ Image (fromIntegral w, fromIntegral h) ptr
        Right (Juicy.ImageCMYK8 img) ->
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in V.unsafeWith dat $ \ptr ->
                return $ Image (fromIntegral w, fromIntegral h) ptr 
        _ -> error $
            "Engine.Graphics.Texture.juicyLoadImage:"
                ++ "bad image colorspace or format."
