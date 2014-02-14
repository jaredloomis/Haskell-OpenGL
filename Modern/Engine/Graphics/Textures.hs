{-# LANGUAGE RankNTypes #-}
module Engine.Graphics.Textures (
    juicyLoadImage, FrameBuffer(..),
    Image(..), Texture, makeFrameBuffer,
    fillNewBuffer', quadBufferData
) where

import Data.Time (getCurrentTime, utctDayTime)
import Data.Vector.Storable (unsafeWith)
import Foreign
    (Word8, alloca, peek, wordPtrToPtr,
     withArrayLen, sizeOf, Ptr, Storable,
     with, withArray, new)
import Foreign.C.String (withCString)
import Data.Bits ((.|.))

import qualified Codec.Picture as Juicy
import qualified Codec.Picture.Types as JTypes

import qualified Graphics.GLUtil as GU

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw
import Graphics.Rendering.OpenGL (DataType(..))

import Engine.Graphics.GraphicsUtils

data Image = Image GL.Size (GL.PixelData Word8)
    deriving (Show)

data FrameBuffer = FB {
    fbufName :: GLuint,
    fbufTexture :: GLuint
}

type Texture = (GL.TextureObject, GLint)
--type Texture = (GLuint, GLint)

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
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in unsafeWith dat $ \ptr ->
                return $ Image (GL.Size (fromIntegral w) (fromIntegral h))
                            (GL.PixelData GL.RGB UnsignedByte ptr)
        _ -> error $
            "Engine.Graphics.Texture.juicyLoadImage:"
                ++ "bad image colorspace or format."

makeFrameBuffer :: IO FrameBuffer
makeFrameBuffer = do
    fbName <- alloca (\p -> glGenFramebuffers 1 p >> peek p)
    glBindFramebuffer gl_FRAMEBUFFER fbName

    fbTexPtr <- new 0
    glGenTextures 1 fbTexPtr

    --fbTexPtr <- alloca (\p -> glGenTextures 1 p >> return p)
    --glGenTextures 1 fbTexPtr
    
    fbTex <- peek fbTexPtr

    glBindTexture gl_TEXTURE_2D fbTex
    glTexImage2D gl_TEXTURE_2D 0 (fromIntegral gl_RGB)
        800 600 0 gl_RGB gl_UNSIGNED_BYTE GU.offset0

    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MAG_FILTER)
                                  (fromIntegral gl_NEAREST)
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MIN_FILTER)
                                  (fromIntegral gl_NEAREST)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_S
        $ fromIntegral gl_CLAMP_TO_EDGE
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_T
        $ fromIntegral gl_CLAMP_TO_EDGE

    depthRenderBuffer <- alloca (\p -> glGenRenderbuffers 1 p >> peek p)

    glBindRenderbuffer gl_RENDERBUFFER depthRenderBuffer

    glRenderbufferStorage gl_RENDERBUFFER gl_DEPTH_COMPONENT 800 600

    glFramebufferRenderbuffer gl_FRAMEBUFFER gl_DEPTH_ATTACHMENT
        gl_RENDERBUFFER depthRenderBuffer

    glFramebufferTexture gl_FRAMEBUFFER
       gl_COLOR_ATTACHMENT0 fbTex 0

    withArray [gl_COLOR_ATTACHMENT0] $ glDrawBuffers 1

    glCheckFramebufferStatus gl_FRAMEBUFFER >>=
        (\x -> putStrLn $ if x == gl_FRAMEBUFFER_COMPLETE
            then "Framebuffer successfully created"
            else "Framebuffer error")

    glBindFramebuffer gl_FRAMEBUFFER 0

    return $ FB fbName fbTex

quadBufferData :: [GLfloat]
quadBufferData =
    [-1.0, -1.0, 0.0,
     1.0, -1.0, 0.0,
     -1.0,  1.0, 0.0,
     -1.0,  1.0, 0.0,
     1.0, -1.0, 0.0,
     1.0,  1.0, 0.0]

fillNewBuffer' :: [GLfloat] -> IO GLuint
fillNewBuffer' list = do
    bufId <- withNewPtr (glGenBuffers 1)
    glBindBuffer gl_ARRAY_BUFFER bufId
    withArrayLen list $ \len ptr ->
        glBufferData gl_ARRAY_BUFFER 
            (fromIntegral (len * sizeOf (undefined :: GLfloat)))
            (ptr :: Ptr GLfloat) gl_STATIC_DRAW
    return bufId

--withNewPtr2 :: forall b a. Storable b => (Ptr b -> IO a) -> IO b
--withNewPtr2 f = alloca (\p -> f p >> peek p)
