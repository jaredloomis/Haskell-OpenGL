module Engine.Graphics.Graphics where

import Data.IORef (readIORef)

import qualified Graphics.UI.GLFW as GLFW

import qualified Graphics.Rendering.GLU.Raw as GLU
import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Core.Vec
import Engine.Object.GameObject
import Engine.Model.Model

-----------------------------
-- GENERAL RENDERING FUNCS --
-----------------------------

-- | Render all entities in the world.
--   Uses the attributes/uniforms specified by the world
--   as well as ones specified by individual
--   objects.
renderWorld :: World t -> IO ()
renderWorld world 
    -- If the array of entities is empty, the
    -- function is done.
    | null $ worldEntities world = return ()

    | otherwise = do
    let objectRef = head $ worldEntities world
    object <- readIORef objectRef
    let model = pentityModel object
        Vec3 objx objy objz = getPos object
        mShader = modelShader model

    -- Begin a state where transformations remain in affect
    -- only until glPopMatrix is called.
    glPushMatrix

    -- Move Object
    glTranslatef objx objy objz

    -- Use object's shader
    glUseProgram mShader

    -- Bind buffers to variable names in shader.
    --bindAll (modelBufferIds model) (modelAttribLocs model)
    bindShaderAttribs $ modelShaderVars model
    bindWorldUniforms world mShader
    bindTextures (modelTextures model) mShader


    p <- readIORef (worldPlayer world)
    let Vec3 px py pz = getPos p
    bindUniforms mShader [("playerPosition", [px, py, pz])]

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    unBindTextures (fromIntegral . length . modelTextures $ model)

    -- Turn off VBO/VAO
    disableShaderAttribs $ modelShaderVars model

    -- Disable the object's shader.
    glUseProgram 0

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix

    -- Continue rendering the rest of the entities in the world.
    renderWorld (world{worldEntities = tail $ worldEntities world})

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

    -- Enable culling of faces.
    glEnable gl_CULL_FACE
    -- Do not render the backs of faces. Increases performance.
    glCullFace gl_BACK

    -- Enable textures.
    glEnable gl_TEXTURE

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width height = do
    -- Make viewport the same size as the window.
    glViewport 0 0 (fromIntegral width) (fromIntegral height)

    -- Apply projection matrix, load identity, and
    -- apply perspective.
    glMatrixMode gl_PROJECTION
    glLoadIdentity
    GLU.gluPerspective 45 (fromIntegral width/fromIntegral height) 0.1 100

    -- Go back to default modelview matrix and load identity.
    glMatrixMode gl_MODELVIEW
    glLoadIdentity
