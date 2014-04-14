{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Graphics.GraphicsState where

import Data.Bits ((.|.))
import Control.Monad.State

import Graphics.Rendering.OpenGL.Raw
    (GLint, glUseProgram, glDrawArrays, gl_TRIANGLES,
     glClear, gl_COLOR_BUFFER_BIT, gl_DEPTH_BUFFER_BIT,
     glBindFramebuffer, gl_FRAMEBUFFER)

import Engine.Core.Types
    (World(..), WorldState(..), Framebuffer(..),
     Shader(..), GameObject(..), Model(..),
     HasPosition(..), HasRotation(..), Graphics(..),
     Game(..))
import Engine.Core.World (setWorldUniforms)
import Engine.Core.Vec (Vec3(..))
import Engine.Graphics.Shaders
    (emptyShader, setShaderAttribs, disableShaderAttribs,
     bindTextures)
import Engine.Object.GameObject (getModel)
import Engine.Matrix.Matrix
    (WorldMatrices(..), emptyMatrices, gtranslationMatrix,
     grotationMatrix, setMatrixUniforms, calculateMatricesFromPlayer)
import Engine.Graphics.Window (Window(..))
import Engine.Graphics.Framebuffer (renderAllPasses)

data RenderInfo = RenderInfo {
    renderInfoShader :: Shader,
    renderInfoMatrices :: WorldMatrices
}

emptyInfo :: RenderInfo
emptyInfo = RenderInfo emptyShader emptyMatrices

-- | A class for things that can be rendered to
--   the screen &| Framebuffers.
--   Contains 3 functions:
--      Bind:
--          This is usually where shaders are set,
--          or the currently bound shader is
--          modified.
--      Draw:
--          This is the draw action. A Framebuffer
--          is bound before calling this, so there is
--          no need to bind your own.
--      Cleanup:
--          Any cleanup necessary.
class Renderable t g where
   --State (World t) a 
    renderBind :: t -> StateT g IO t
    renderBind = return
    renderDraw :: t -> StateT g IO t
    renderDraw = return
    renderCleanup :: t -> StateT g IO t
    renderCleanup = return
    defaultGlobal :: t -> StateT g IO t

instance Renderable (GameObject t) RenderInfo where
    renderBind obj =
        let shader = modelShader $ getModel obj
        in do
            info <- get
            liftIO $ glUseProgram $ shaderId shader
            put info{renderInfoShader = shader}
            return info

    renderDraw object info = do
        let model = getModel object
            Vec3 objx objy objz = getPos object
            Vec3 objrx objry objrz = getRot object
            mShader = renderInfoShader info

            -- Move Object
            modelMat = gtranslationMatrix [objx, objy, objz] *
                       grotationMatrix [objrx, objry, objrz]

            newMatrices = (renderInfoMatrices info){matrixModel = modelMat}
        -- Set uniforms. (World uniforms and Matrices).
        newShader <-
            setMatrixUniforms mShader newMatrices

        -- Bind buffers to variable names in shader.
        setShaderAttribs $ modelShaderVars model
        bindTextures (modelTextures model) $ shaderId newShader

        glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

        return $ RenderInfo newShader newMatrices

    renderCleanup object _ = do
        let model = getModel object
        -- Necessary?
        disableShaderAttribs $ modelShaderVars model
        -- Disable the object's shader.
        glUseProgram 0
        return emptyInfo
    defaultGlobal _ = emptyInfo

instance Renderable (World t) RenderInfo where
    renderBind world info = do
        let (winW, winH) = windowSize $ stateWindow $ worldState world
            worldMats = calculateMatricesFromPlayer
                        (worldPlayer world) (fromIntegral winW, fromIntegral winH)
        newShader <-
            setWorldUniforms world (renderInfoShader info)
        return info{renderInfoShader = newShader,
                    renderInfoMatrices = worldMats}
    defaultGlobal _ = emptyInfo
        

totalRender :: Renderable t g => t -> g -> IO g
totalRender r s =
    renderBind r s >>=
    renderDraw r >>=
    renderCleanup r


renderToFramebuffer :: Renderable t g => Framebuffer -> t -> IO g
renderToFramebuffer fbuf rend =
    withFramebuffer fbuf $ totalRender rend (defaultGlobal rend)

renderAllToFramebuffer :: Renderable t g => Framebuffer -> [t] -> IO g
renderAllToFramebuffer fbuf xs =
    withFramebuffer fbuf $
        renderAll xs (defaultGlobal $ head xs)
    where
        renderAll :: Renderable t g => [t] -> g -> IO g
        renderAll (x:xs') info =
            totalRender x info >>= renderAll xs'
        renderAll [] info = return info

renderAllWithGlobal :: (Renderable t1 g, Renderable t2 g) =>
                        Framebuffer -> t1 -> [t2] -> IO g
renderAllWithGlobal fbuf g =
    renderAllWithGlobal' (defaultGlobal g) fbuf g

renderAllWithGlobal' :: (Renderable t1 g, Renderable t2 g) =>
                        g -> Framebuffer -> t1 -> [t2] -> IO g
renderAllWithGlobal' info fbuf global (x:xs) = do
    bindFrameBuffer fbuf

    newinfo <-
        renderBind x info >>=
        renderBind global >>=
        renderDraw global >>=
        renderDraw x >>=
        renderCleanup x >>=
        renderCleanup global

    unbindFrameBuffer

    renderAllWithGlobal' newinfo fbuf global xs
renderAllWithGlobal' info _ _ _ = return info


renderWorldNew :: World t -> IO (World t)
renderWorldNew world = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
    let (width, height) = windowSize $ stateWindow $ worldState world
    _ <- renderAllWithGlobal (screenFramebuffer (fromIntegral width, fromIntegral height))
                        world (worldEntities world) :: IO RenderInfo
    return world

renderWorldNewWithFramebuffer :: World t -> Framebuffer -> IO (World t)
renderWorldNewWithFramebuffer world fbuf = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
    _ <- renderAllWithGlobal fbuf world (worldEntities world) :: IO RenderInfo
    return world
    

-- | Render world with all postprocessing shaders defined by
--   worldFramebuffer.
renderWorldNewPost :: World t -> IO (World t)
renderWorldNewPost world = do
    let effects = snd $ graphicsPostProcessors $ worldGraphics world
        fb = fst $ graphicsPostProcessors $ worldGraphics world 
    glBindFramebuffer gl_FRAMEBUFFER $
        fbufName fb
    ret <- renderWorldNewWithFramebuffer world fb
    bindFrameBuffer fb

    renderAllPasses ret effects
    return ret


screenFramebuffer :: (GLint, GLint) -> Framebuffer
screenFramebuffer dimensions =
    FB 0 0 dimensions 0 0

withFramebuffer :: Framebuffer -> IO a -> IO a
withFramebuffer fbuf func = do
    bindFrameBuffer fbuf
    ret <- func
    unbindFrameBuffer
    return ret

bindFrameBuffer :: Framebuffer -> IO ()
bindFrameBuffer = glBindFramebuffer gl_FRAMEBUFFER . fbufName

unbindFrameBuffer :: IO ()
unbindFrameBuffer = glBindFramebuffer gl_FRAMEBUFFER 0
