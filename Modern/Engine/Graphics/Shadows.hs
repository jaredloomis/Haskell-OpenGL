module Engine.Graphics.Shadows where

import Data.Bits ((.|.))

import Graphics.Rendering.OpenGL.Raw
import Foreign (alloca, peek, withArray)

import qualified Graphics.GLUtil as GU

import Engine.Matrix.Matrix
import Engine.Core.Vec
import Engine.Object.GameObject
import Engine.Model.Model
import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Graphics.Framebuffer

makeShadowFrameBuffer :: IO Framebuffer
makeShadowFrameBuffer = do
    fbName <- alloca (\p -> glGenFramebuffers 1 p >> peek p)
    glBindFramebuffer gl_FRAMEBUFFER fbName

    depthTexture <- alloca (\p -> glGenTextures 1 p >> peek p)
    glBindTexture gl_TEXTURE_2D depthTexture

    glTexImage2D gl_TEXTURE_2D 0
        (fromIntegral gl_DEPTH_COMPONENT16)
        800 600
        0 gl_DEPTH_COMPONENT gl_FLOAT GU.offset0

    -- Give texture paramenters.
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MAG_FILTER)
                                  (fromIntegral gl_LINEAR)
    glTexParameteri gl_TEXTURE_2D (fromIntegral gl_TEXTURE_MIN_FILTER)
                                  (fromIntegral gl_LINEAR)
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_S
        $ fromIntegral gl_CLAMP_TO_EDGE
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_WRAP_T
        $ fromIntegral gl_CLAMP_TO_EDGE
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_COMPARE_FUNC
        $ fromIntegral gl_LEQUAL
    glTexParameteri gl_TEXTURE_2D gl_TEXTURE_COMPARE_MODE
        $ fromIntegral gl_COMPARE_R_TO_TEXTURE

    glFramebufferTexture gl_FRAMEBUFFER gl_DEPTH_ATTACHMENT depthTexture 0

    glDrawBuffer gl_NONE

    glCheckFramebufferStatus gl_FRAMEBUFFER >>=
        (\x -> putStrLn $ if x == gl_FRAMEBUFFER_COMPLETE
            then "Framebuffer successfully created"
            else "Framebuffer error")

    return $ FB fbName depthTexture
            (800, 600)
            (-1)
            (-1)

renderWorldWithShadows :: World t -> IO (World t)
renderWorldWithShadows world = do
    let fbuf = fst $ worldShadowInfo world
        depthShader = snd $ worldShadowInfo world
        (w, h) = fbufDimensions fbuf
    glBindFramebuffer gl_FRAMEBUFFER $ fbufName fbuf
    glViewport 0 0 w h

    glEnable gl_CULL_FACE
    glCullFace gl_FRONT

    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT

    glUseProgram depthShader

    let lightInvDir = Vec3 0.5 2.0 2.0
        depthProjMat = gorthoMatrix (-50) 50 (-50) 50 (-50) 100
        depthViewMat = glookAtMatrix lightInvDir (Vec3 0 0 0) (Vec3 0 1 0)
        depthModelMat = gidentityMatrix

        worldMats =
            WorldMatrices depthModelMat depthViewMat depthProjMat

    mvpMatrix <- quickGetUniform depthShader "mvpMatrix"

    let depthMVP = depthProjMat * depthViewMat * depthModelMat

    renderInitialShadows (worldEntities world)
        worldMats
        mvpMatrix

    glBindFramebuffer gl_FRAMEBUFFER (fbufName . fst . worldPostProcessors $ world)
    glViewport 0 0 800 600

    glEnable gl_CULL_FACE
    glCullFace gl_BACK

    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT

    renderObjectsWithShadows world
        (calculateMatricesFromPlayer (worldPlayer world) (800, 600))
        depthMVP
        fbuf
        (worldEntities world)

    let newDepthUniform = ("depthTexture", return [20])
        newWorldUniforms =  newDepthUniform : worldUniforms world
    renderAllPasses world{worldUniforms = newWorldUniforms} (snd $ worldPostProcessors world)


    return world

renderObjectsWithShadows :: World t -> WorldMatrices -> Matrix4x4 -> Framebuffer -> [GameObject t] -> IO ()
renderObjectsWithShadows world wm depthMVP fbuf (cur : rest) = do
    let curModel = getModel cur
        mShader = modelShader curModel
        Vec3 ox oy oz = getPos cur
        modelMat = gtranslationMatrix [ox, oy, oz]
    glUseProgram $ shaderId mShader

    setMatrixUniformsBias mShader wm{matrixModel = modelMat} depthMVP

    setWorldUniforms world mShader

    bindTextures (modelTextures curModel) $ shaderId mShader
    
    let textureOffset = 20
    glActiveTexture $ gl_TEXTURE0 + textureOffset
    glBindTexture gl_TEXTURE_2D $ fbufTexture fbuf
    quickGetUniform (shaderId mShader) "shadowMap" >>=
        (`glUniform1i` fromIntegral textureOffset)

    setShaderAttribs $ modelShaderVars curModel
    glDrawArrays gl_TRIANGLES 0 (modelVertCount curModel)

    renderObjectsWithShadows world wm depthMVP fbuf rest
renderObjectsWithShadows _ _ _ _ _ = return ()

renderInitialShadows :: [GameObject t] -> WorldMatrices -> GLint -> IO ()
renderInitialShadows (cur : rest) wm mvpUniform = do
    setShaderAttribs $ modelShaderVars $ getModel cur

    let Vec3 ox oy oz = getPos cur
        modelMat = gtranslationMatrix [ox, oy, oz]

        mvp = matrixProjection wm * matrixView wm * modelMat

    withArray
        (toGLFormat mvp)
        $ glUniformMatrix4fv mvpUniform 1 (fromIntegral gl_FALSE)

    glDrawArrays gl_TRIANGLES 0
        (modelVertCount $ getModel cur)
    glDisableVertexAttribArray 0
    renderInitialShadows rest wm mvpUniform
renderInitialShadows _ _ _ = return ()

-- TODO: Make this function cause the shader to remember
--       uniform locations.
setMatrixUniformsBias :: Shader -> WorldMatrices -> Matrix4x4 -> IO Shader
setMatrixUniformsBias shader wm depthMVP = do
    (shader', modelMatrix) <- findUniformLocationAndRemember shader "modelMatrix"
    withArray (toGLFormat $ matrixModel wm)
        $ glUniformMatrix4fv modelMatrix 1 (fromIntegral gl_FALSE)

    (shader'', projectionMatrix) <- findUniformLocationAndRemember shader'
                                    "projectionMatrix"
    withArray (toGLFormat $ matrixProjection wm)
        $ glUniformMatrix4fv projectionMatrix 1 (fromIntegral gl_FALSE)

    (shader''', viewMatrix) <- findUniformLocationAndRemember shader'' "viewMatrix"
    withArray (toGLFormat $ matrixView wm)
        $ glUniformMatrix4fv viewMatrix 1 (fromIntegral gl_FALSE)

    (shader'''', mvpMatrix) <- findUniformLocationAndRemember shader''' "mvpMatrix"
    withArray
        (toGLFormat $ matrixProjection wm * matrixView wm * matrixModel wm)
        $ glUniformMatrix4fv mvpMatrix 1 (fromIntegral gl_FALSE)

    let biasMatrix = [[0.5, 0.0, 0.0, 0.0],
                      [0.0, 0.5, 0.0, 0.0],
                      [0.0, 0.0, 0.5, 0.0],
                      [0.5, 0.5, 0.5, 1.0]] :: Matrix4x4

    (shader''''', mvpBiasMatrix) <- findUniformLocationAndRemember shader'''' "mvpBiasMatrix"
    withArray
        (toGLFormat $ biasMatrix * depthMVP)
        $ glUniformMatrix4fv mvpBiasMatrix 1 (fromIntegral gl_FALSE)

    return shader'''''
