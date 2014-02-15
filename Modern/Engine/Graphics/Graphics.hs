module Engine.Graphics.Graphics (
    initGL, resizeScene,
    cleanupObjects, renderWorldMat,
    renderWorldFB, makeFrameBuffer
) where

import Data.Time (utctDayTime)
import Foreign.Marshal (with)
import Foreign.C (withCString)
import Data.Bits ((.|.))
import Data.Maybe (fromJust)
import Foreign (peek, alloca, new, withArray)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw
import qualified Graphics.Rendering.OpenGL as GL

import qualified Graphics.GLUtil as GU

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Core.Vec
import Engine.Object.GameObject
import Engine.Model.Model
import Engine.Matrix.Matrix
import Engine.Graphics.Window
import Engine.Graphics.Textures

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
    let model = pentityModel object
        Vec3 objx objy objz = getPos object
        mShader = modelShader model

        -- Move Object
        modelMat = gtranslationMatrix [objx, objy, objz]

    -- Use object's shader
    glUseProgram $ shaderId mShader

    let wState = worldState world
        utcTime = stateTime wState
        dayTime = realToFrac $ utctDayTime utcTime

    -- Set uniforms. (World uniforms and Matrices).
    newShader <-
        setMatrixUniforms mShader wm{matrixModel = modelMat} >>=
            setWorldUniforms world >>=
            (\sh -> setUniformsAndRemember sh [("time", return [dayTime])])

    -- Bind buffers to variable names in shader.
    setShaderAttribs $ modelShaderVars model
    bindTextures (modelTextures model) $ shaderId mShader

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    -- TODO: Remove if not necessary.
    -- Disable textures.
    unBindTextures (fromIntegral . length . modelTextures $ model)

    -- Turn off VBO/VAO
    disableShaderAttribs $ modelShaderVars model

    -- Disable the object's shader.
    glUseProgram 0

    let newObject = case object of
            PureEntity{} ->
                object{pentityModel =
                    (pentityModel object){modelShader = newShader}}
            EffectfulEntity{} ->
                object{eentityModel =
                    (eentityModel object){modelShader = newShader}}
            _ -> undefined

    restObjects <- renderObjectsMat world wm rest

    return $ newObject : restObjects
renderObjectsMat _ _ [] = return []

renderWorldFB ::
    FrameBuffer -> World t -> GLuint -> IO (World t)
renderWorldFB fb@(FB name _) world shader = do
    -- Render to FB.
    glBindFramebuffer gl_FRAMEBUFFER name
    ret <- renderWorldMat world

    -- Render to screen.
    glBindFramebuffer gl_FRAMEBUFFER 0
    glViewport 0 0 800 600
    renderFromFrameBuffer (worldState world) shader fb
    return ret

renderFromFrameBuffer :: WorldState -> GLuint -> FrameBuffer -> IO ()
renderFromFrameBuffer ws shader (FB _ tex) = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT

    glUseProgram shader

    glActiveTexture gl_TEXTURE0
    glBindTexture gl_TEXTURE_2D tex
    texId <- withCString "renderedTexture" $ glGetUniformLocation shader
    glUniform1f texId 0

    let utcTime = stateTime ws
        dayTime = realToFrac $ utctDayTime utcTime

    setUniforms shader [("time", return [dayTime])]

    quadVB <- fillNewBuffer' quadBufferData

    -- Enable the attribute buffer.
    glEnableVertexAttribArray 0
    -- Give OpenGL the information.
    glBindBuffer gl_ARRAY_BUFFER quadVB
    -- Tell OpenGL about the info.
    glVertexAttribPointer 0 3 gl_FLOAT 0 0 GU.offset0

    glDrawArrays gl_TRIANGLES 0 6

    glDisableVertexAttribArray 0

makeFrameBuffer :: WorldState -> IO FrameBuffer
makeFrameBuffer wState = do
    let (winW, winH) = windowSize $ stateWindow wState
    -- Create framebuffer and bind it.
    fbName <- alloca (\p -> glGenFramebuffers 1 p >> peek p)
    glBindFramebuffer gl_FRAMEBUFFER fbName

    -- Create a texture id.
    fbTexPtr <- new 0
    glGenTextures 1 fbTexPtr
    fbTex <- peek fbTexPtr
    glBindTexture gl_TEXTURE_2D fbTex

    let textureCount = fromIntegral $ stateTextureCount wState

    glTexImage2D gl_TEXTURE_2D textureCount
        --(fromIntegral gl_DEPTH_COMPONENT24)
        (fromIntegral gl_RGB)
        (fromIntegral winW) (fromIntegral winH) 0 gl_RGB gl_UNSIGNED_BYTE GU.offset0

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

    return $ FB fbName fbTex

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
    glDepthFunc gl_LEQUAL

    -- Tell OpenGL to use the nicest perspective correction.
    -- The other choices are gl_FASTEST and gl_DONT_CARE.
    glHint gl_PERSPECTIVE_CORRECTION_HINT gl_NICEST

    -- Enable culling of faces.
    glEnable gl_CULL_FACE
    -- Do not render the backs of faces. Increases performance.
    glCullFace gl_BACK

    -- Enable textures.
    glEnable gl_TEXTURE
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_MAG_FILTER
        (fromIntegral gl_LINEAR)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_MIN_FILTER
        (fromIntegral gl_LINEAR_MIPMAP_LINEAR)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_S
        (fromIntegral gl_CLAMP_TO_EDGE)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_T
        (fromIntegral gl_CLAMP_TO_EDGE)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_MAX_ANISOTROPY 16

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h 

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width height =
    -- Make viewport the same size as the window.
    glViewport 0 0 (fromIntegral width) (fromIntegral height)

cleanupObjects :: [GameObject t] -> IO ()
cleanupObjects (object:rest) = do
    -- Delete buffers.
    let shaderVarAttrIds = map (\(Vec3 attrId _ _) -> attrId)
                              (modelShaderVars $ getModel object)
        shaderVarBufIds = map (\(Vec3 _ bufId _) -> bufId)
                              (modelShaderVars $ getModel object)
    mapM_ (\x -> with x $ glDeleteBuffers 1) shaderVarBufIds

    -- Delete shader.
    glDeleteProgram (shaderId $ modelShader $ getModel object)

    -- Delete textures.
    let model = getModel object
        textures = map (\(GL.TextureObject tid, _) -> tid) $ modelTextures model
    mapM_ (\x -> with x $ glDeleteTextures 1) textures

    -- Delete vertex arrays.
    mapM_ (\x -> with x $ glDeleteVertexArrays 1) shaderVarAttrIds

    print "cleanup"

    cleanupObjects rest
cleanupObjects [] = return ()
