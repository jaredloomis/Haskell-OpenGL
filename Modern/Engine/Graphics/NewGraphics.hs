module Engine.Graphics.NewGraphics where

import Data.Bits ((.|.))

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Core.Vec
import Engine.Graphics.Shaders
import Engine.Model.Model
import Engine.Object.GameObject
import Engine.Matrix.Matrix
import Engine.Graphics.Window

data RenderInfo = RenderInfo {
    renderInfoShader :: Shader,
    renderInfoMatrices :: WorldMatrices
}

emptyInfo :: RenderInfo
emptyInfo = RenderInfo emptyShader emptyMatrices

class Renderable a where
    renderBind :: a -> RenderInfo -> IO RenderInfo
    renderBind _ = return
    renderDraw :: a -> RenderInfo -> IO RenderInfo
    renderDraw _ = return
    renderCleanup :: a -> RenderInfo -> IO RenderInfo
    renderCleanup _ = return

instance Renderable (GameObject t) where
    renderBind obj info =
        let shader = modelShader $ getModel obj
        in do
            glUseProgram $ shaderId shader
            return info{renderInfoShader = shader}

    renderDraw object info = do
        let model = getModel object
            Vec3 objx objy objz = getPos object
            mShader = renderInfoShader info

            -- Move Object
            modelMat = gtranslationMatrix [objx, objy, objz]

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
        return emptyInfo --info

instance Renderable (World t) where
    renderBind world info = do
        let (winW, winH) = windowSize $ stateWindow $ worldState world
            worldMats = calculateMatricesFromPlayer
                        (worldPlayer world) (fromIntegral winW, fromIntegral winH)
        newShader <-
            setWorldUniforms world (renderInfoShader info)
        return info{renderInfoShader = newShader,
                    renderInfoMatrices = worldMats}
        

totalRender :: Renderable a => a -> RenderInfo -> IO RenderInfo
totalRender r s =
    renderBind r s >>=
    renderDraw r >>=
    renderCleanup r


renderToFramebuffer :: Renderable a => Framebuffer -> a -> IO RenderInfo
renderToFramebuffer fbuf rend =
    withFramebuffer fbuf $ totalRender rend emptyInfo

renderAllToFramebuffer :: Renderable a => Framebuffer -> [a] -> IO RenderInfo
renderAllToFramebuffer fbuf xs =
    withFramebuffer fbuf $
        renderAll xs emptyInfo
    where
        renderAll :: Renderable a => [a] -> RenderInfo -> IO RenderInfo
        renderAll (x:xs') info =
            totalRender x info >>= renderAll xs'

renderAllWithGlobal :: (Renderable a, Renderable b) =>
                        Framebuffer -> a -> [b] -> IO RenderInfo
renderAllWithGlobal =
    renderAllWithGlobal' emptyInfo

renderAllWithGlobal' :: (Renderable a, Renderable b) =>
                      RenderInfo -> Framebuffer -> a -> [b] -> IO RenderInfo
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
    renderAllWithGlobal (screenFramebuffer (800, 600)) world (worldEntities world)
    return world

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
