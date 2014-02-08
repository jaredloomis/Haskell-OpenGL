{-# LANGUAGE RankNTypes #-}
module Engine.Graphics.GraphicsUtils (
    createBufferIdAll, createBufferId,
    fillNewBuffer, withNewPtr, withNewPtrArray,
    useNewPtr
) where

import Foreign
    (Ptr, Storable, withArrayLen, sizeOf,
     alloca, peek, peekArray)

import Graphics.Rendering.OpenGL.Raw
    (GLfloat, GLuint, glBindBuffer, gl_ARRAY_BUFFER,
     glBufferData, glGenBuffers, gl_STATIC_DRAW,
     glBindVertexArray, glGenVertexArrays)

-- | Create an id for each buffer data.
createBufferIdAll :: [[GLfloat]] -> IO [GLuint]
createBufferIdAll (cur:others) = do
    currentId <- createBufferId cur
    otherId <- createBufferIdAll others
    return $ currentId:otherId
createBufferIdAll [] = return []

-- | Create a buffer id for the information.
createBufferId :: [GLfloat] -> IO GLuint
createBufferId info = do
    vertexArrayId <- withNewPtr (glGenVertexArrays 1)
    glBindVertexArray vertexArrayId
    fillNewBuffer info

-- | Fill buffer with data.
fillNewBuffer :: [GLfloat] -> IO GLuint
fillNewBuffer list = do
    bufId <- withNewPtr (glGenBuffers 1)
    glBindBuffer gl_ARRAY_BUFFER bufId
    withArrayLen list $ \len ptr ->
        glBufferData gl_ARRAY_BUFFER 
            (fromIntegral (len * sizeOf (undefined :: GLfloat)))
            (ptr :: Ptr GLfloat) gl_STATIC_DRAW
    return bufId

-- | Perform IO action with a new pointer, returning the
--   value in the pointer.
withNewPtr :: forall b a. Storable b => (Ptr b -> IO a) -> IO b
withNewPtr f = alloca (\p -> f p >> peek p)

-- | Perform IO action with a new pointer array, returning the
--   value in the pointer.
withNewPtrArray :: forall b a. Storable b => (Ptr b -> IO a) -> Int -> IO [b]
withNewPtrArray f size = alloca (\p -> f p >> peekArray size p)

-- | Perform IO action with a new pointer, returning the
--   pointer itself.
useNewPtr :: forall a a1. Storable a => (Ptr a -> IO a1) -> IO (Ptr a)
useNewPtr f = alloca (\p -> f p >> return p)
