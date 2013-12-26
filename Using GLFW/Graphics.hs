module Graphics where

import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import qualified Graphics.Rendering.OpenGL.Raw as GL
import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.GLU.Raw as GLU

import Types

renderObjectRefsSafe :: [IORef GameObject] -> IO ()
renderObjectRefsSafe (ref:xs) = do
    object <- readIORef ref

    renderObjectSafe object

    renderObjectRefsSafe xs
renderObjectRefsSafe [] = return ()

renderObjectSafe :: GameObject -> IO ()
renderObjectSafe object =
    GL.glPushMatrix >> renderObject object >> GL.glPopMatrix

renderObject :: GameObject -> IO ()
--renderObject p@(Player{}) = playerRender p p
renderObject e@(Entity{}) = entityRender e e

initGL :: GLFW.Window -> IO ()
initGL win = do
    -- VSync
    GLFW.swapInterval 1
    -- Enables smooth color shading.
    GL.glShadeModel GL.gl_SMOOTH

    -- Set "background color" to black
    GL.glClearColor 0 0 0 0

    -- Enables clearing of the depth buffer
    GL.glClearDepth 1
    -- Allow depth testing (3D)
    GL.glEnable GL.gl_DEPTH_TEST
    -- Tells OpenGL how to deal with overlapping shapes
    GL.glDepthFunc GL.gl_LEQUAL

    -- Tell OpenGL to use the nicest perspective correction.
    -- The other choices are gl_FASTEST and gl_DONT_CARE.
    GL.glHint GL.gl_PERSPECTIVE_CORRECTION_HINT GL.gl_NICEST

    -- Enable culling of faces
    GL.glEnable GL.gl_CULL_FACE
    -- Do not render the backs of faces. Increases performance.
    GL.glCullFace GL.gl_BACK

    -- Call resize function.
    (w,h) <- GLFW.getFramebufferSize win
    resizeScene win w h

resizeScene :: GLFW.WindowSizeCallback
resizeScene win w 0 = resizeScene win w 1 -- prevent divide by zero
resizeScene _ width height = do
    GL.glViewport 0 0 (fromIntegral width) (fromIntegral height)
    GL.glMatrixMode GL.gl_PROJECTION
    GL.glLoadIdentity
    GLU.gluPerspective 45 (fromIntegral width/fromIntegral height) 0.1 100
    GL.glMatrixMode GL.gl_MODELVIEW
    GL.glLoadIdentity
    -- glFlush not necessary because of double buffering?
    --GL.glFlush

-- | Takes a Player and "moves the camera" by
--   moving the whole world in the opposite direction.
--   Then applies rotation.
applyTransformations :: GameObject -> IO ()
applyTransformations player = do
    -- Not sure what it does... Basically save some
    -- current state attributes and reset those when
    -- glPopAttrib is called?
    GL.glPushAttrib GL.gl_TRANSFORM_BIT

    -- Rotate Player
    let (xr, yr, zr) = snd $ playerPosRot player
    GL.glRotatef xr (-1) 0 0
    GL.glRotatef yr 0 (-1) 0
    GL.glRotatef zr 0 0 (-1)
    
    -- Translate Player
    let (x, y, z) = fst $ playerPosRot player
    GL.glTranslatef (-x) (-y) (-z)

    -- Reset attributes to former state?
    GL.glPopAttrib

-- | Apply translations locally by first applying
--   rotation and then applying translations without
--   calling glLoadIdentity.
localTranslate :: GameObject -> IO ()
localTranslate p@(Player{}) = do
     -- Rotate Entity.
    let (xrp, yrp, zrp) = snd $ playerPosRot p
    GL.glRotatef xrp 1 0 0
    GL.glRotatef yrp 0 1 0
    GL.glRotatef zrp 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ playerPosRot p
    GL.glTranslatef x y z
localTranslate e@(Entity{}) = do
     -- Rotate Entity.
    let (xre, yre, zre) = snd $ entityPosRot e
    GL.glRotatef xre 1 0 0
    GL.glRotatef yre 0 1 0
    GL.glRotatef zre 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ entityPosRot e
    GL.glTranslatef x y z

-- | Apply translations globally by first translating
--   and then rotating. Player's translations are done
--   after negating the values.
globalTranslate :: GameObject -> IO ()
globalTranslate p@(Player{}) = do
     -- Rotate Entity.
    let (xr, yr, zr) = snd $ playerPosRot p
    GL.glRotatef xr 1 0 0
    GL.glRotatef yr 0 1 0
    GL.glRotatef zr 0 0 1

    -- Move Entity.
    let (x, y, z) = fst $ playerPosRot p
    GL.glTranslatef (-x) (-y) (-z)
globalTranslate e@(Entity{}) = do
    -- Move Entity.
    let (x, y, z) = fst $ entityPosRot e
    GL.glTranslatef x y z
 
     -- Rotate Entity.
    let (xr, yr, zr) = snd $ entityPosRot e
    GL.glRotatef xr 1 0 0
    GL.glRotatef yr 0 1 0
    GL.glRotatef zr 0 0 1

renderTrianglesColor :: [Vertex] -> IO ()
renderTrianglesColor verts = do
    GL.glBegin GL.gl_TRIANGLES
    callVerts verts
    GL.glEnd

    where
    callVerts (((x, y, z), (r, g, b)):xs) = do
        GL.glColor3f r g b
        GL.glVertex3f x y z
        callVerts xs
    callVerts [] = return ()

renderTriangles :: [Vec3] -> IO ()
renderTriangles verts = do
    GL.glBegin GL.gl_TRIANGLES
    callVerts verts
    GL.glEnd

    where
    callVerts ((x, y, z):xs) = do
        GL.glVertex3f x y z
        callVerts xs
    callVerts [] = return ()
