module Graphics where

import Foreign.Storable (sizeOf)
import Control.Applicative ((<$>), (<*>))
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import qualified Graphics.UI.GLFW as GLFW

import qualified Graphics.Rendering.OpenGL as GL
import qualified Graphics.Rendering.GLU.Raw as GLU
import Graphics.Rendering.OpenGL (($=))
import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.GLUtil as GU

import Types

-----------------------------
-- GENERAL RENDERING FUNCS --
-----------------------------

renderObjects :: [IORef Object] -> IO ()
renderObjects (objectRef:rest) = do
    object <- readIORef objectRef
    let model = entityModel object
        (objx, objy, objz) = entityPosition object

    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    --GL.currentProgram $= Just (modelShader model)
    glUseProgram $ modelShader model

    bindAll (bufferIds model) (modelAttribLocs model) 0

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    glDisableVertexAttribArray 0

    -- Disable the object's shader.
    --GL.currentProgram $= Nothing
    glUseProgram 0

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    renderObjects rest
    
    where
        bindAll :: [GLuint] -> [GLuint] -> GLuint -> IO ()
        bindAll (curId:otherIds) (attribLoc:otherLocs) i = do
            -- Enable the 1st attribute buffer, vertices.
            glEnableVertexAttribArray attribLoc
            -- Give OpenGL the object's vertices.
            --GL.bindBuffer GL.ArrayBuffer $= Just bufferObj
            glBindBuffer gl_ARRAY_BUFFER curId
            -- Tell OpenGL about the info.
            glVertexAttribPointer i 3 gl_FLOAT 0 0 GU.offset0
            bindAll otherIds otherLocs (i+1)
        bindAll _ [] _ = return ()

renderObjects [] = return ()

-------------------------------
-- UTILITY / SETUP FUNCTIONS --
-------------------------------

initGL :: GLFW.Window -> IO ()
initGL win = do
    -- Enables smooth color shading.
    glShadeModel gl_SMOOTH

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

    -- Enable culling of faces
    glEnable gl_CULL_FACE
    -- Do not render the backs of faces. Increases performance.
    glCullFace gl_BACK

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width height = do
    glViewport 0 0 (fromIntegral width) (fromIntegral height)
    glMatrixMode gl_PROJECTION
    glLoadIdentity
    GLU.gluPerspective 45 (fromIntegral width/fromIntegral height) 0.1 100
    glMatrixMode gl_MODELVIEW
    glLoadIdentity

------------------
-- SHADER UTILS --
------------------

createShaders :: FilePath -> FilePath -> String -> String -> String -> IO Shaders
createShaders vert frag vertsVar normsVar colorVar = do
    prog <- createShaderProgram vert frag
    Shaders prog
        <$> GL.get (GL.attribLocation prog vertsVar)
        <*> GL.get (GL.attribLocation prog normsVar)
        <*> GL.get (GL.attribLocation prog colorVar)

createShaderProgram :: FilePath -> FilePath -> IO GL.Program
createShaderProgram vert frag = do
    vs <- GU.loadShader GL.VertexShader vert
    fs <- GU.loadShader GL.FragmentShader frag
    GU.linkShaderProgram [vs, fs]
