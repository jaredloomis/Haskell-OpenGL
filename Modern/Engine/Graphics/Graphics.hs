module Engine.Graphics.Graphics (
    initGL, resizeScene,
    cleanupObjects, renderWorldMat,
    cleanupWorld, renderObjectsMat
) where

import Data.Time (utctDayTime)
import Foreign.Marshal (with)
import Data.Bits ((.|.))
import Data.Maybe (fromJust)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw
import qualified Graphics.Rendering.OpenGL as GL

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Core.Vec
import Engine.Object.GameObject
import Engine.Model.Model
import Engine.Matrix.Matrix
import Engine.Graphics.Window

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
    bindTextures (modelTextures model) $ shaderId newShader

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
    let fb = fst $ worldPostProcessors world
        shaders = snd $ worldPostProcessors world
    with (fbufName fb) $ glDeleteFramebuffers 1
    with (fbufTexture fb) $ glDeleteTextures 1
    with (fbufVBO fb) $ glDeleteVertexArrays 1
    mapM_ glDeleteProgram shaders
    with (fbufRenderBuffer fb) $ glDeleteRenderbuffers 1

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
