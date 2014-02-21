module Engine.Graphics.Framebuffer (
    renderWorldWithPostprocessing,
    makeFrameBuffer
) where

import Data.Bits ((.|.))
import Foreign.C (withCString)
import Foreign
    (alloca, peek, withArray, new)
import Data.Time (utctDayTime)

import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.GLUtil as GU

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Graphics.GraphicsUtils
import Engine.Graphics.Graphics

-- | Render world with all postprocessing shaders defined by
--   worldFramebuffer.
renderWorldWithPostprocessing :: World t -> IO (World t)
renderWorldWithPostprocessing world = do
    let effects = snd $ worldFramebuffer world
    glBindFramebuffer gl_FRAMEBUFFER $ fbufName $ fst $ worldFramebuffer world
    ret <- renderWorldMat world

    renderAllPasses ret effects
    return ret

renderAllPasses :: World t -> [GLuint] -> IO ()
renderAllPasses world (shader:otherShader:rest) = do
    -- Render to FB.
    renderPostPass (fst $ worldFramebuffer world) (worldState world) shader

    -- Make framebuffer use the new rendered image.
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MAG_FILTER)
                                  (fromIntegral gl_NEAREST)
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MIN_FILTER)
                                  (fromIntegral gl_NEAREST)

    -- Continue with other shaders.
    renderAllPasses world $ otherShader:rest

renderAllPasses world (shader:[]) =
    let fb = fst $ worldFramebuffer world
    -- If this is the last postprocessing shader,
    -- render it to the screen.
    in do
        glBindFramebuffer gl_FRAMEBUFFER 0
        uncurry (glViewport 0 0) $ fbufDimensions fb
        glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
        renderPostPass fb (worldState world) shader
        --renderFromFrameBuffer (worldState world) shader fb
renderAllPasses _ [] = return ()

renderPostPass :: Framebuffer -> WorldState -> GLuint -> IO ()
renderPostPass fb wState shader = do
    let quadVB = fbufVBO fb

    -- Activate the shader
    glUseProgram shader

    glActiveTexture gl_TEXTURE0
    glBindTexture gl_TEXTURE_2D $ fbufTexture fb
    texId <- withCString "renderedTexture" $ glGetUniformLocation shader
    glUniform1i texId 0

    let utcTime = stateTime wState
        dayTime = realToFrac $ utctDayTime utcTime

    setUniforms shader [("time", return [dayTime])]

    -- Enable the attribute buffer.
    glEnableVertexAttribArray 0
    -- Give OpenGL the information.
    glBindBuffer gl_ARRAY_BUFFER quadVB
    -- Tell OpenGL about the info.
    glVertexAttribPointer 0 3 gl_FLOAT 0 0 GU.offset0

    glDrawArrays gl_TRIANGLES 0 6

    glDisableVertexAttribArray 0

    return ()

makeFrameBuffer :: (Int, Int) -> IO Framebuffer
makeFrameBuffer (winW, winH) = do
    --let (winW, winH) = windowSize $ stateWindow wState
    -- Create framebuffer and bind it.
    fbName <- alloca (\p -> glGenFramebuffers 1 p >> peek p)
    glBindFramebuffer gl_FRAMEBUFFER fbName

    -- Create a texture id.
    fbTexPtr <- new 0
    glGenTextures 1 fbTexPtr
    fbTex <- peek fbTexPtr
    glBindTexture gl_TEXTURE_2D fbTex

    -- Create an image.
    glTexImage2D gl_TEXTURE_2D 0
        (fromIntegral gl_RGB)
        (fromIntegral winW) (fromIntegral winH) 0 gl_RGB gl_UNSIGNED_BYTE GU.offset0

    -- Give texture paramenters.
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

    glRenderbufferStorage gl_RENDERBUFFER gl_DEPTH_COMPONENT
        (fromIntegral winW) (fromIntegral winH)

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

    quadVB <- fillNewBuffer quadBufferData

    return $ FB fbName fbTex (fromIntegral winW, fromIntegral winH) quadVB depthRenderBuffer

quadBufferData :: [GLfloat]
quadBufferData =
    [-1.0, -1.0, 0.0,
     1.0, -1.0, 0.0,
     -1.0,  1.0, 0.0,
     -1.0,  1.0, 0.0,
     1.0, -1.0, 0.0,
     1.0,  1.0, 0.0]
