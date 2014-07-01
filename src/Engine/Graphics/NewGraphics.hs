{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Graphics.NewGraphics (
    RenderInfo(..), emptyInfo, Renderable(..),
    totalRender, renderToFramebuffer, renderAllToFramebuffer,
    renderWorldNewPost, renderWorldNew, withFramebuffer,
    screenFramebuffer, bindFramebuffer, unbindFrameBuffer
) where

import Data.Bits ((.|.))
import Data.Maybe (isJust, fromJust)
import Data.Vec hiding (head)

import Graphics.Rendering.OpenGL.Raw
    (GLint, glUseProgram, glDrawArrays, gl_TRIANGLES,
     glClear, gl_COLOR_BUFFER_BIT, gl_DEPTH_BUFFER_BIT,
     glBindFramebuffer, gl_FRAMEBUFFER)

import Engine.Core.Types
    (World(..), WorldState(..),
     Entity(..),
     Graphics(..))
import Engine.Core.World (setWorldUniforms)
import Engine.Graphics.Shaders
    (setShaderAttribs, disableShaderAttribs,
     bindTextures)
import Engine.Object.GameObject (getModel)
import Engine.Matrix.Matrix
    (WorldMatrices(..), emptyMatrices,
     setMatrixUniforms, calculateMatricesFromPlayer,
     calculateModelMatrix)
import Engine.Graphics.Window (Window(..))
import Engine.Graphics.Shaders (Shader(..))
import Engine.Terrain.Generator (Terrain(..))
import Engine.Graphics.Framebuffer (Framebuffer(..))
import Engine.Graphics.Graphics (renderAllPasses)
import Engine.Mesh.Mesh (Mesh(..))

-- | The data passed around through the stages of
--   rendering.
data RenderInfo = RenderInfo {
    renderInfoShader :: Shader,
    renderInfoMatrices :: WorldMatrices
} deriving (Show, Eq)
emptyInfo :: RenderInfo
emptyInfo = RenderInfo (Shader (-1) []) emptyMatrices

-- | A class for things that can be rendered to
--   the screen &| Framebuffers.
--   Contains 3 functions:
--
--      * Bind: This is usually where
--        shaders are set, or the currently
--        bound shader is modified.
--      * Draw: This is the draw action. A Framebuffer
--        is bound before calling this, so there is
--        no need to bind your own.
--      * Cleanup: Any cleanup necessary.
class Renderable t g where
    renderBind :: t -> g -> IO g
    renderBind _ = return
    renderDraw :: t -> g -> IO g
    renderDraw _ = return
    renderCleanup :: t -> g -> IO g
    renderCleanup _ = return
    defaultGlobal :: t -> g

instance Renderable (Entity t) RenderInfo where
    renderBind obj info =
        let shader = meshShader $ getModel obj
        in do
            glUseProgram $ shaderId shader
            return info{renderInfoShader = shader}

    renderDraw object info = do
        let model = getModel object
            mShader = renderInfoShader info

            -- Move Object
            modelMat = calculateModelMatrix object

            newMatrices = (renderInfoMatrices info){matrixModel = modelMat}
        -- Set uniforms. (World uniforms and Matrices).
        newShader <-
            setMatrixUniforms mShader newMatrices

        -- Bind buffers to variable names in shader.
        setShaderAttribs $ meshShaderVars model
        bindTextures (meshTextures model) $ shaderId newShader

        glDrawArrays gl_TRIANGLES 0 (meshVertCount model)

        return $ RenderInfo newShader newMatrices

    renderCleanup object _ = do
        let model = getModel object
        -- Necessary?
        disableShaderAttribs $ meshShaderVars model
        -- Disable the object's shader.
        glUseProgram 0
        return emptyInfo
    defaultGlobal _ = emptyInfo

instance Renderable Terrain RenderInfo where
    renderBind obj info =
        let shader = terrainShader obj
        in do
            glUseProgram $ shaderId shader
            return info{renderInfoShader = shader}

    renderDraw object info = do
        let mShader = renderInfoShader info

            -- Move Object
            modelMat = identity
            newMatrices = (renderInfoMatrices info){matrixModel = modelMat}

        -- Set uniforms. (World uniforms and Matrices).
        newShader <-
            setMatrixUniforms mShader newMatrices

        -- Bind buffers to variable names in shader.
        setShaderAttribs $ terrainShaderVars object
        bindTextures (terrainTextures object) $ shaderId newShader

        glDrawArrays gl_TRIANGLES 0 (terrainVertCount object)

        return $ RenderInfo newShader newMatrices

    renderCleanup object _ = do
        -- Necessary?
        disableShaderAttribs $ terrainShaderVars object
        -- Disable the object's shader.
        glUseProgram 0
        return emptyInfo
    defaultGlobal _ = emptyInfo
        

instance Renderable (World t) RenderInfo where
    renderBind world info = do
        let (winW, winH) = windowSize $ stateWindow $ worldState world
            worldMats = calculateMatricesFromPlayer
                        (worldPlayer world)
                        (fromIntegral winW, fromIntegral winH)
        newShader <-
            setWorldUniforms world (renderInfoShader info)
        return info{renderInfoShader = newShader,
                    renderInfoMatrices = worldMats}
    defaultGlobal _ = emptyInfo
        
-- | Call all 3 stages of the "Renderable".
totalRender :: Renderable t g => t -> g -> IO g
totalRender r s =
    renderBind r s >>=
    renderDraw r >>=
    renderCleanup r

-- | Call all 3 stages of the "Renderable" after
--   binding the "Framebuffer".
renderToFramebuffer :: Renderable t g => Framebuffer -> t -> IO g
renderToFramebuffer fbuf rend =
    withFramebuffer fbuf $ totalRender rend (defaultGlobal rend)

-- | Call all 3 stages of each "Renderable"
--   after binding the "Framebuffer".
renderAllToFramebuffer :: Renderable t g => Framebuffer -> [t] -> IO g
renderAllToFramebuffer fbuf xs =
    withFramebuffer fbuf $
        renderAll xs (defaultGlobal $ head xs)
    where
        renderAll :: Renderable t g => [t] -> g -> IO g
        renderAll (x:xs') info =
            totalRender x info >>= renderAll xs'
        renderAll [] info = return info

-- | Call all 3 stages of each "Renderable"
--   with the global renderable.
renderAllWithGlobal :: (Renderable t1 g, Renderable t2 g) =>
                        Framebuffer -> t1 -> [t2] -> IO g
renderAllWithGlobal fbuf g =
    renderAllWithGlobal' (defaultGlobal g) fbuf g

renderAllWithGlobal' :: (Renderable t1 g, Renderable t2 g) =>
                        g -> Framebuffer -> t1 -> [t2] -> IO g
renderAllWithGlobal' info fbuf global (x:xs) = do
    bindFramebuffer fbuf

    -- This order could be changed...
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

-- | Render World with new API.
renderWorldNew :: World t -> IO (World t)
renderWorldNew world = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
    let (width, height) = windowSize $ stateWindow $ worldState world
        fbuf = screenFramebuffer (fromIntegral width, fromIntegral height)
    _ <- renderAllWithGlobal fbuf world (worldEntities world) :: IO RenderInfo
    _ <- if isJust $ worldTerrain world
            then renderAllWithGlobal fbuf world
                    [fromJust $ worldTerrain world] :: IO RenderInfo
            else return emptyInfo
    return world

-- | Render World with new API after binding
--   the Framebuffer.
renderWorldNewWithFramebuffer :: World t -> Framebuffer -> IO (World t)
renderWorldNewWithFramebuffer world fbuf = do
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
    _ <- renderAllWithGlobal fbuf world (worldEntities world) :: IO RenderInfo
    _ <- if isJust $ worldTerrain world
            then renderAllWithGlobal fbuf world
                    [fromJust $ worldTerrain world] :: IO RenderInfo
            else return emptyInfo
    return world

-- | Render world with all postprocessing shaders defined by
--   worldFramebuffer.
renderWorldNewPost :: World t -> IO (World t)
renderWorldNewPost world = do
    let effects = snd $ graphicsPostProcessors $ worldGraphics world
        fb = fst $ graphicsPostProcessors $ worldGraphics world

    bindFramebuffer fb
    ret <- renderWorldNewWithFramebuffer world fb

    bindFramebuffer fb
    renderAllPasses ret effects
    return ret

-- | An "Empty" Framebuffer, just renders
--   to the screen.
screenFramebuffer :: (GLint, GLint) -> Framebuffer
screenFramebuffer dimensions =
    Framebuffer 0 0 dimensions 0 0

-- | Perform action with Framebuffer binded.
withFramebuffer :: Framebuffer -> IO a -> IO a
withFramebuffer fbuf func = do
    bindFramebuffer fbuf
    ret <- func
    unbindFrameBuffer
    return ret

bindFramebuffer :: Framebuffer -> IO ()
bindFramebuffer = glBindFramebuffer gl_FRAMEBUFFER . fbufName

unbindFrameBuffer :: IO ()
unbindFrameBuffer = glBindFramebuffer gl_FRAMEBUFFER 0
