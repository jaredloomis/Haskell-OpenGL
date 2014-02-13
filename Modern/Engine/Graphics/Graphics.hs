module Engine.Graphics.Graphics (
    renderWorld, initGL, resizeScene,
    cleanupObjects
) where

import Data.Time (utctDayTime)
import Foreign.Marshal (withArray, with)

import qualified Graphics.UI.GLFW as GLFW

import Graphics.Rendering.OpenGL.Raw
import qualified Graphics.Rendering.OpenGL as GL

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Core.Vec
import Engine.Object.GameObject
import Engine.Model.Model
import Engine.Graphics.GraphicsUtils

renderWorld :: World t -> IO ()
renderWorld world = do
    let objects = worldEntities world
    renderObjects world objects

renderObjects :: World t -> [GameObject t] -> IO ()
renderObjects world (object:rest) = do
    let model = pentityModel object
        Vec3 objx objy objz = getPos object
        mShader = modelShader model

    -- Begin a state where transformations remain in affect
    -- only until glPopMatrix is called.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    glUseProgram $ shaderId mShader

    -- Bind buffers to variable names in shader.
    setShaderAttribs $ modelShaderVars model
    --setWorldUniforms world $ shaderId mShader
    bindTextures (modelTextures model) $ shaderId mShader

    -- Set time uniform.
    let wState = worldState world
        utcTime = stateTime wState
        dayTime = realToFrac $ utctDayTime utcTime
    setUniforms (shaderId mShader) [("time", return [dayTime])]

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    -- TODO: Remove if not necessary.
    -- Disable textures.
    unBindTextures (fromIntegral . length . modelTextures $ model)

    -- Turn off VBO/VAO
    disableShaderAttribs $ modelShaderVars model

    -- Disable the object's shader.
    glUseProgram 0

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Continue rendering the rest of the entities in the world.
    renderObjects world rest
renderObjects _ [] = return ()

{-
renderWorldFB :: FrameBuffer -> World t -> GLuint -> IO ()
renderWorldFB fb@(FB name _) world shader = do
    let objects = worldEntities world
    glBindFramebuffer gl_FRAMEBUFFER name
    glClear $ gl_COLOR_BUFFER_BIT .|. gl_DEPTH_BUFFER_BIT
    renderObjects world objects
    glBindFramebuffer gl_FRAMEBUFFER 0
    renderFromFrameBuffer shader fb
-}

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
    mapM_ (\x -> with x $ glDeleteBuffers 1) $ shaderVarBufIds

    -- Delete shader.
    glDeleteProgram (shaderId $ modelShader $ getModel object)

    -- Delete textures.
    let model = getModel object
        textures = map (\(GL.TextureObject tid, _) -> tid) $ modelTextures model
    mapM_ (\x -> with x $ glDeleteTextures 1) textures

    -- Delete vertex arrays.
    mapM_ (\x -> with x $ glDeleteVertexArrays 1) $ shaderVarAttrIds

    print "cleanup"

    cleanupObjects rest
cleanupObjects [] = return ()
