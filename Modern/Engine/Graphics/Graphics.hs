module Engine.Graphics.Graphics (
    initGL, resizeScene,
    cleanupObjects, renderWorldMat,
    cleanupWorld, renderObjectsMat,
    renderAllPasses, makeFrameBuffer
) where

import Foreign (alloca, peek, new, withArray)
import Foreign.Marshal (with)
import Foreign.C (withCString)
import Data.Bits ((.|.))
import Data.Maybe (fromJust)
import Data.Time (utctDayTime)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Types
    (World(..), WorldState(..), GameObject(..),
     Graphics(..),
     WorldMatrices(..))
import Engine.Graphics.Shaders
    (Shader(..), ShaderAttrib(..), setShaderAttribs, bindTextures, disableShaderAttribs,
     setUniforms)
import Engine.Graphics.Framebuffer (Framebuffer(..))
import Engine.Graphics.GraphicsUtils (offset0, fillNewBuffer)
import Engine.Core.HasPosition (HasPosition(..), HasRotation(..))
import Engine.Core.Vec (Vec3(..))
import Engine.Object.GameObject (getModel)
import Engine.Matrix.Matrix
    (calculateMatricesFromPlayer,
     gtranslationMatrix, grotationMatrix, setMatrixUniforms)
import Engine.Graphics.Window (Window(..))
import Engine.Model.Model (Model(..))

renderWorldMat :: World t -> IO (World t)
renderWorldMat world = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT

    -- Get window dimensions from GLFW
    dimensions <- GLFW.getWindowSize
                (fromJust $ windowInner $ stateWindow $ worldState world)

    -- Update matrices.
    let worldMats = calculateMatricesFromPlayer
                        (worldPlayer world) dimensions

    -- Render world with matrices.
    newEntites <- renderObjectsMat world worldMats (worldEntities world)
    return world{worldEntities = newEntites}

renderObjectsMat :: World t -> WorldMatrices -> [GameObject t] -> IO [GameObject t]
renderObjectsMat world wm (object:rest) = do
    let model = getModel object
        Vec3 objx objy objz = getPos object
        Vec3 objrx objry objrz = getRot object
        mShader = modelShader model

        -- Move Object
        modelMat = gtranslationMatrix [objx, objy, objz] *
                   grotationMatrix [objrx, objry, objrz]

    -- Use object's shader
    glUseProgram $ shaderId mShader

    -- Set uniforms. (World uniforms and Matrices).
    newShader <-
        setMatrixUniforms mShader wm{matrixModel = modelMat}

    -- Bind buffers to variable names in shader.
    setShaderAttribs $ modelShaderVars model
    bindTextures (modelTextures model) $ shaderId newShader

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    -- TODO: Remove if not necessary.
    -- Disable textures.
    --unBindTextures (fromIntegral . length . modelTextures $ model)

    -- Turn off VBO/VAO
    disableShaderAttribs $ modelShaderVars model

    -- Disable the object's shader.
    glUseProgram 0

    -- Update the object's shader
    let newObject = object{entityModel =
                    (entityModel object){modelShader = newShader}}

    restObjects <- renderObjectsMat world wm rest

    return $ newObject : restObjects
renderObjectsMat _ _ [] = return []

-------------------------------
-- UTILITY / SETUP FUNCTIONS --
-------------------------------

initGL :: GLFW.Window -> IO ()
initGL win = do
    -- Enables smooth color shading.
    --glShadeModel gl_SMOOTH

    -- Set "background color" to black
    glClearColor 0 0 0 0

    -- Enables clearing of the depth buffer
    glClearDepth 1
    -- Allow depth testing (3D)
    glEnable gl_DEPTH_TEST
    -- Tells OpenGL how to deal with overlapping shapes
    glDepthFunc gl_LESS
    --glDepthFunc gl_LEQUAL

    -- Tell OpenGL to use the nicest perspective correction.
    -- The other choices are gl_FASTEST and gl_DONT_CARE.
    glHint gl_PERSPECTIVE_CORRECTION_HINT gl_NICEST

    -- Enable culling of faces.
    glEnable gl_CULL_FACE
    -- Do not render the backs of faces. Increases performance.
    glCullFace gl_BACK

    -- Enable textures.
    --glEnable gl_TEXTURE
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_MAG_FILTER
        (fromIntegral gl_LINEAR)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_MIN_FILTER
        (fromIntegral gl_LINEAR_MIPMAP_LINEAR)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_S
        (fromIntegral gl_CLAMP_TO_EDGE)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_T
        (fromIntegral gl_CLAMP_TO_EDGE)

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h 

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width height =
    -- Make viewport the same size as the window.
    glViewport 0 0 (fromIntegral width) (fromIntegral height)

cleanupWorld :: World t -> IO ()
cleanupWorld world = do
    let fb = fst $ graphicsPostProcessors $ worldGraphics world
        shaders = snd $ graphicsPostProcessors $ worldGraphics world
    with (fbufName fb) $ glDeleteFramebuffers 1
    with (fbufTexture fb) $ glDeleteTextures 1
    with (fbufVBO fb) $ glDeleteVertexArrays 1
    mapM_ glDeleteProgram shaders
    with (fbufRenderBuffer fb) $ glDeleteRenderbuffers 1

cleanupObjects :: [GameObject t] -> IO ()
cleanupObjects (object:rest) = do
    -- Delete buffers.
    let shaderVarAttrIds = map (\(ShaderAttrib attrId _ _) -> attrId)
                              (modelShaderVars $ getModel object)
        shaderVarBufIds = map (\(ShaderAttrib _ bufId _) -> bufId)
                              (modelShaderVars $ getModel object)
    mapM_ (\x -> with x $ glDeleteBuffers 1) shaderVarBufIds

    -- Delete shader.
    glDeleteProgram (shaderId $ modelShader $ getModel object)

    -- Delete textures.
    let model = getModel object
        textures = map fst $ modelTextures model
    mapM_ (\x -> with x $ glDeleteTextures 1) textures

    -- Delete vertex arrays.
    mapM_ (\x -> with x $ glDeleteVertexArrays 1) shaderVarAttrIds

    print "cleanup"

    cleanupObjects rest
cleanupObjects [] = return ()

-- = Framebuffer

-- | Render world with all postprocessing shaders defined by
--   worldFramebuffer.
renderWorldWithPostprocessing :: World t -> IO (World t)
renderWorldWithPostprocessing world = do
    let effects = snd $ graphicsPostProcessors $ worldGraphics world 
    glBindFramebuffer gl_FRAMEBUFFER $
        fbufName $ fst $ graphicsPostProcessors $ worldGraphics world 
    ret <- renderWorldMat world

    renderAllPasses ret effects
    return ret

renderAllPasses :: World t -> [GLuint] -> IO ()
renderAllPasses world (shader:otherShader:rest) = do
    -- Render to FB.
    renderPostPass (fst $ graphicsPostProcessors $ worldGraphics world)
                   (worldState world) shader

    -- Make framebuffer use the new rendered image.
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MAG_FILTER)
                                  (fromIntegral gl_NEAREST)
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MIN_FILTER)
                                  (fromIntegral gl_NEAREST)

    -- Continue with other shaders.
    renderAllPasses world $ otherShader:rest

renderAllPasses world (shader:[]) =
    let fb = fst $ graphicsPostProcessors $ worldGraphics world 
    -- If this is the last postprocessing shader,
    -- render it to the screen.
    in do
        glBindFramebuffer gl_FRAMEBUFFER 0
        uncurry (glViewport 0 0) $ fbufDimensions fb
        glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
        renderPostPass fb (worldState world) shader
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
    glVertexAttribPointer 0 3 gl_FLOAT 0 0 offset0

    glDrawArrays gl_TRIANGLES 0 6

    glDisableVertexAttribArray 0

makeFrameBuffer :: (GLint, GLint) -> IO Framebuffer
makeFrameBuffer (winW, winH) = do
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
        winW winH
        0 gl_RGB gl_UNSIGNED_BYTE offset0

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
        winW winH

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

    return $ FB fbName fbTex (winW, winH)
                quadVB depthRenderBuffer

quadBufferData :: [GLfloat]
quadBufferData =
    [-1.0, -1.0, 0.0,
     1.0, -1.0, 0.0,
     -1.0,  1.0, 0.0,
     -1.0,  1.0, 0.0,
     1.0, -1.0, 0.0,
     1.0,  1.0, 0.0]
{-# INLINE quadBufferData #-}
