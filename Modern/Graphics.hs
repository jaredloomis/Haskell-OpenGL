module Graphics where

import Data.IORef (IORef, readIORef)

import qualified Graphics.UI.GLFW as GLFW

import qualified Graphics.Rendering.GLU.Raw as GLU
import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.GLUtil as GU

import Types
import Util
import Shaders


-----------------------------
-- GENERAL RENDERING FUNCS --
-----------------------------

-- | Render all entities in the world.
--   Uses the attributes specified by the world
--   as well as ones specified by individual
--   objects.
renderWorld :: World -> IO ()
renderWorld world 
    -- If the array of entities is empty, the
    -- function is done.
    | null $ worldEntities world = return ()

    | otherwise = do
    let objectRef = head $ worldEntities world
    object <- readIORef objectRef
    let model = entityModel object
        (objx, objy, objz) = entityPosition object

    -- Begin a state where transformations remain in affect
    -- only until glPopMatrix is called.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    glUseProgram $ modelShader model

    -- Bind buffers to variable names in shader.
    --bindAll (modelBufferIds model) (modelAttribLocs model)
    bindShaderAttribs $ modelShaderVars model
    bindWorld world $ modelShader model

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    -- Turn off VBO/VAO
    glDisableVertexAttribArray 0

    -- Disable the object's shader.
    glUseProgram 0

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Continue rendering the rest of the entities in the world.
    renderWorld (world{worldEntities = tail $ worldEntities world})

-- | Render all entities in the list.
--   Uses the attributes specified by
--   individual objects.
renderObjects :: [IORef Object] -> IO ()
renderObjects (objectRef:rest) = do
    obj <- readIORef objectRef
    let model = entityModel obj
        (objx, objy, objz) = entityPosition obj

    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    glUseProgram $ modelShader model

    --bindAll (modelBufferIds model) (modelAttribLocs model)
    bindShaderAttribs $ modelShaderVars model

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    glDisableVertexAttribArray 0

    -- Disable the object's shader.
    glUseProgram 0

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    renderObjects rest

renderObjects [] = return ()

bindShaderAttribs :: [ShaderAttrib] -> IO ()
bindShaderAttribs ((attr, buf, len):rest) = do
    -- Enable the attribute buffer.
    glEnableVertexAttribArray attr
    -- Give OpenGL the information.
    --GL.bindBuffer GL.ArrayBuffer $= Just bufferObj
    glBindBuffer gl_ARRAY_BUFFER buf
    -- Tell OpenGL about the info.
    glVertexAttribPointer attr (fromIntegral len) gl_FLOAT 0 0 GU.offset0
    bindShaderAttribs rest
bindShaderAttribs [] = return ()

bindWorld :: World -> GLuint -> IO ()
bindWorld world shader = do
    let attribNames = worldAttribNames world
        ids = worldBufferIds world
    attribs <- createAttribs shader attribNames
    bindAll ids attribs

    bindUniforms shader $ worldUniforms world

bindAllW :: [GLuint] -> [GLuint] -> IO ()
bindAllW (curId:otherIds) (attribLoc:otherLocs) = do
    -- Enable the 1st attribute buffer, vertices.
    glEnableVertexAttribArray attribLoc
    -- Give OpenGL the object's vertices.
    --GL.bindBuffer GL.ArrayBuffer $= Just bufferObj
    glBindBuffer gl_ARRAY_BUFFER curId
    -- Tell OpenGL about the info.
    glVertexAttribPointer attribLoc 1 gl_FLOAT 0 0 GU.offset0
    bindAllW otherIds otherLocs
bindAllW _ [] = return ()


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

    glEnable gl_TEXTURE

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width height = do
    -- Make viewport the same size as the screen.
    glViewport 0 0 (fromIntegral width) (fromIntegral height)

    -- Apply projection matrix, load identity, and
    -- apply perspective.
    glMatrixMode gl_PROJECTION
    glLoadIdentity
    GLU.gluPerspective 45 (fromIntegral width/fromIntegral height) 0.1 100

    -- Go back to default modelview matrix and load identity.
    glMatrixMode gl_MODELVIEW
    glLoadIdentity
