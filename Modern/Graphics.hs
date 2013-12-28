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

renderObjectsVerts :: [IORef Object] -> IO ()
renderObjectsVerts (objectRef:objects) = do
    object <- readIORef objectRef
    let -- Object's position
        (objx, objy, objz) = entityPosition object
        -- Location of attribute variable in the shader that recieves
        -- the position of each vertex.
        verts = shadersVertices $ entityShaders object
        -- Size of each Vec3 in memory.
        stride = fromIntegral $ sizeOf (undefined::GLfloat) * 3
        -- A description of how the VBO is formatted.
        vad = GL.VertexArrayDescriptor 3 GL.Float stride GU.offset0

    -- Begin some transformations that will not affect the
    -- entire matrix.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    GL.currentProgram $= Just (shadersProgram (entityShaders object))

    -- Give OpenGL the object's vertices.
    GL.bindBuffer GL.ArrayBuffer $= Just (entityVBO object)
    -- Same as glVertexPointer(2, GL_FLOAT, stride, offset0) in Java.
    -- Tells OpenGL that the info bound in the ArrayBuffer is an array of
    -- vertices and how it is formatted.
    GL.vertexAttribPointer verts $= (GL.ToFloat, vad)

    -- "Turn on" drawing of vertices.
    GL.vertexAttribArray verts $= GL.Enabled

    -- Use indexing via the ElementArrayBuffer. This makes connected
    -- faces share sides, which increases performance.
    GL.bindBuffer GL.ElementArrayBuffer $= Just (entityEBO object)

    -- Perform the drawing.
    GL.drawElements GL.Triangles 3 GL.UnsignedInt GU.offset0

    -- Disable the object's shader.
    GL.currentProgram $= Nothing

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Do the same with the remaining objects.
    renderObjectsVerts objects

renderObjectsVerts [] = return ()

renderObjects :: [IORef Object] -> IO ()
renderObjects (objectRef:objects) = do
    object <- readIORef objectRef
    let 
        -- Object's position
        (objx, objy, objz) = entityPosition object
        -- Size of each Vec3 in memory.
        stride = fromIntegral $ sizeOf (undefined::GLfloat) * 5
        -- Offset of normals in memory
        normalOffset = GU.offsetPtr $ 3 * sizeOf (undefined::GLfloat)

    -- Begin some transformations that will not affect the
    -- entire matrix.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    GL.currentProgram $= Just (shadersProgram (entityShaders object))

    -- Give OpenGL the object's VBO.
    GL.bindBuffer GL.ArrayBuffer $= Just (entityVBO object)

    -- Tell OpenGL how to read the data.
    glVertexPointer 3 gl_FLOAT stride GU.offset0
    glNormalPointer gl_FLOAT stride normalOffset

    -- "Turn on" drawing of vertices and normals.
    glEnableClientState gl_VERTEX_ARRAY
    glEnableClientState gl_NORMAL_ARRAY

    -- Use indexing via the ElementArrayBuffer. This makes connected
    -- faces share sides, which increases performance.
    --GL.bindBuffer GL.ElementArrayBuffer $= Just (objectEBO object)

    -- Perform the drawing.
    --GL.drawElements GL.Triangles 3 GL.UnsignedInt GU.offset0
    glDrawArrays gl_TRIANGLES 0 6

    -- "Turn on" drawing of vertices and normals.
    glDisableClientState gl_VERTEX_ARRAY
    glDisableClientState gl_NORMAL_ARRAY

    -- Disable the object's shader.
    GL.currentProgram $= Nothing

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Do the same with the remaining objects.
    renderObjects objects

renderObjects [] = return ()

renderObjectsVAO :: [IORef Object] -> IO ()
renderObjectsVAO (objectRef:objects) = do
    object <- readIORef objectRef
    let 
        -- Object's position
        (objx, objy, objz) = entityPosition object
        -- Size of each Vec3 in memory.
        stride = fromIntegral $ sizeOf (undefined::GLfloat) * 5
        -- Offset of normals in memory
        normalOffset = GU.offsetPtr $ 3 * sizeOf (undefined::GLfloat)

    -- Begin some transformations that will not affect the
    -- entire matrix.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    GL.currentProgram $= Just (shadersProgram (entityShaders object))

    -- Enable the 1st attribute buffer, vertices.
    glEnableVertexAttribArray 0
    -- Give OpenGL the object's VBO.
    GL.bindBuffer GL.ArrayBuffer $= Just (entityVBO object)

    glVertexAttribPointer 0 3 gl_FLOAT 0 stride GU.offset0
    glDrawArrays gl_TRIANGLES 0 (entityVBOLength object)
    glDisableVertexAttribArray 0
{-
    -- Tell OpenGL how to read the data.
    glVertexPointer 3 gl_FLOAT stride GU.offset0
    glNormalPointer gl_FLOAT stride normalOffset

    -- "Turn on" drawing of vertices and normals.
    glEnableClientState gl_VERTEX_ARRAY
    glEnableClientState gl_NORMAL_ARRAY

    -- Use indexing via the ElementArrayBuffer. This makes connected
    -- faces share sides, which increases performance.
    --GL.bindBuffer GL.ElementArrayBuffer $= Just (objectEBO object)

    -- Perform the drawing.
    --GL.drawElements GL.Triangles 3 GL.UnsignedInt GU.offset0
    glDrawArrays gl_TRIANGLES 0 6

    -- "Turn on" drawing of vertices and normals.
    glDisableClientState gl_VERTEX_ARRAY
    glDisableClientState gl_NORMAL_ARRAY
-}
    -- Disable the object's shader.
    GL.currentProgram $= Nothing

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Do the same with the remaining objects.
    renderObjectsVAO objects

renderObjectsVAO [] = return ()


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

createShaders :: FilePath -> FilePath -> String -> String -> IO Shaders
createShaders vert frag vertsVar normsVar = do
    prog <- createShaderProgram vert frag
    Shaders prog
        <$> GL.get (GL.attribLocation prog vertsVar)
        <*> GL.get (GL.attribLocation prog normsVar)

createShaderProgram :: FilePath -> FilePath -> IO GL.Program
createShaderProgram vert frag = do
    vs <- GU.loadShader GL.VertexShader vert
    fs <- GU.loadShader GL.FragmentShader frag
    GU.linkShaderProgram [vs, fs]
