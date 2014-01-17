{-# LANGUAGE RankNTypes #-}
module Engine.Core.Util where

import Foreign (withArrayLen, sizeOf, Ptr)

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, glBindBuffer, gl_ARRAY_BUFFER, glGenBuffers,
     glBufferData, gl_STATIC_DRAW)

import Engine.Graphics.Shaders

------------------
-- OPENGL STUFF --
------------------

fillNewBuffer :: [GLfloat] -> IO GLuint
fillNewBuffer list = do
    bufId <- withNewPtr (glGenBuffers 1)
    glBindBuffer gl_ARRAY_BUFFER bufId
    withArrayLen list $ \len ptr ->
        glBufferData gl_ARRAY_BUFFER 
            (fromIntegral (len * sizeOf (undefined :: GLfloat)))
            (ptr :: Ptr GLfloat) gl_STATIC_DRAW
    return bufId

--------------------
-- MATH FUNCTIONS --
--------------------

toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

sinDeg :: Float -> Float
sinDeg = sin . toRadians
cosDeg :: Float -> Float
cosDeg = cos . toRadians
