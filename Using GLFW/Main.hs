module Main where

import Data.Bits ((.|.))
import System.Exit (exitSuccess)
import Control.Monad (forever, liftM)
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

import qualified Graphics.UI.GLFW as GLFW
import qualified Graphics.Rendering.OpenGL.Raw as GL
import Graphics.Rendering.GLU.Raw (gluPerspective)

import Framework

--- Test Values ---

allPoints :: [Vec3]
allPoints = [(0, 0, 0), (0.3, 0, 0), (0, 0.3, 0), 
             (0.3, 0, 0), (0.3, 0.3, 0), (0, 0.3, 0)]

testWorld :: IO World
testWorld = do
    worldNoEntity <- liftM World (newIORef testPlayer)
    entityRef <- testEntityRef
    return $ worldNoEntity $ Just [entityRef]

testPlayer :: GameObject
testPlayer = mkPlayer{playerRender = renderFunc, playerUpdate = updateFunc}
    where
    renderFunc player@(Player{}) = do
        -- Make all changes not affect other objects
        GL.glPushMatrix

        -- Translate Player globally
        globalTranslate player

        -- Set Color to Blue
        GL.glColor3f 0 0 1

        -- Render the array of triangles
        renderTriangles allPoints

        GL.glPopMatrix

        -- glFlush not necessary because of double buffering?
        --GL.glFlush

    updateFunc player =
        playerMouseUpdate $ (playerKeyUpdate player){playerInput = playerInput player}
        {-(inputUpdate player){playerInput = playerInput player}
        where
        inputUpdate :: GameObject -> GameObject
        inputUpdate p@(Player _ _ (Input ((_, isDown, func):xs) mouse) _ _) =
            -- If the key is down, apply corresponding function to player
            let newPlayer = if isDown then func p else p
                retp = newPlayer{playerInput = Input xs mouse}
            in inputUpdate retp
        inputUpdate p@(Player _ _ (Input [] _) _ _) = p-}

playerMouseUpdate :: GameObject -> GameObject
playerMouseUpdate player =
    let (rawdx, rawdy) = inputMouseDelta $ playerInput player
        (lastX, lastY) = inputLastMousePos $ playerInput player
        --(rawdx, rawdy) = (lastX - curX, lastY - curY)
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)
        (ppos, (rx, ry, rz)) = playerPosRot player
        dx = -dxx

        curPos = (lastX + rawdx, lastY + rawdy)

        -- Basic calculation of degrees, 0 is minimum,
        -- 360 is maximum.
        newRy = if ry + dx >= 360
                    then ry + dx - 360
                else if dx + ry < 0
                    then 360 - ry + dx
                else ry + dx

        -- Lowest angle you can look
        maxLookDown = -90
        maxLookUp = 90

        -- Basic calculation for x axis (looking up and down).
        -- Make sure that look direction stays between maxLookDown
        -- and maxLookUp.
        newRx = if rx - dy >= maxLookDown && rx - dy <= maxLookUp
                    then rx - dy
                else if rx - dy < maxLookDown
                    then maxLookDown
                else if rx - dy > maxLookUp
                    then maxLookUp
                else rx

        newInput = (playerInput player){inputLastMousePos = curPos}
        newPosRot = (ppos, (newRx, newRy, rz))
    in player{playerPosRot = newPosRot, playerInput = newInput}


playerKeyUpdate :: GameObject -> GameObject
playerKeyUpdate p@(Player _ _ (Input ((_, isDown, func):xs) mouse lm) _ _) =
    -- If the key is down, apply corresponding function to player
    let newPlayer = if isDown then func p else p
        retp = newPlayer{playerInput = Input xs mouse lm}
    in playerKeyUpdate retp
playerKeyUpdate p@(Player _ _ (Input [] _ _) _ _) = p


testEntityRef :: IO (IORef GameObject)
testEntityRef = newIORef testEntity

testEntity :: GameObject
testEntity = Entity ((0, 0, -6), (0, 0, 0)) id eRender
    where
    eRender e@(Entity{}) = do
        -- Make all changes not affect other objects
        GL.glPushMatrix

        -- Translate Entity globally
        globalTranslate e

        -- Set Color to Red
        GL.glColor3f 1 0 0

        -- Render the array of triangles
        renderTriangles allPoints

        GL.glPopMatrix
        -- glFlush not necessary because of double buffering?
        --GL.glFlush

--- MAIN PROGRAM ---

main :: IO ()
main = do
    True <- GLFW.init
    
    -- Create a window and open it.
    Just win <- GLFW.createWindow 800 600 "GLFW + Haskell" Nothing Nothing
    GLFW.setWindowPos win 400 50
    GLFW.makeContextCurrent (Just win)

    -- Initialize OpenGL.
    initGL win
    
    -- Create world.
    world <- testWorld
    let player = worldPlayer world

    -- Register the function to do all OpenGL drawing.
    GLFW.setWindowRefreshCallback win (Just (drawWorld world))
    -- Register the function called when our window is resized.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)
    -- Register the function called when the keyboard is pressed.
    GLFW.setKeyCallback win (Just $ keyPressed (worldPlayer world))
     -- Register the function called when the window closes.
    GLFW.setWindowCloseCallback win (Just shutdown)
    -- Register the function called when cursor moves.
    GLFW.setCursorPosCallback win (Just $ cursorMove player)

    -- Make cursor Hidden
    GLFW.setCursorInputMode win GLFW.CursorInputMode'Disabled

    -- Start event processing engine
    forever $ do
        -- Check for events
        GLFW.pollEvents
        -- Apply logic update
        updateWorld world
        -- Do rendering / drawing
        drawWorld world win
        -- Swap the buffers
        GLFW.swapBuffers win

    shutdown win

drawWorld :: World -> GLFW.WindowRefreshCallback
drawWorld world _ = do
    -- Clear the screen and the depth buffer
    GL.glClear $ fromIntegral  $  GL.gl_COLOR_BUFFER_BIT
                              .|. GL.gl_DEPTH_BUFFER_BIT

    -- Move and rotate Player
    GL.glLoadIdentity
    player <- readIORef $ worldPlayer world

    GL.glPushAttrib GL.gl_TRANSFORM_BIT

    let (xr, yr, zr) = snd $ playerPosRot player
    GL.glRotatef xr (-1) 0 0
    GL.glRotatef yr 0 (-1) 0
    GL.glRotatef zr 0 0 (-1)

    let (x, y, z) = fst $ playerPosRot player
    GL.glTranslatef (-x) (-y) (-z)

    GL.glPopAttrib
    --globalTranslate player

    --playerRender player player
 
    -- TODO: make it safe for a world with a Nothing for entities.
    let (Just entities) = worldEntities world

    let e1Ref = head entities
    e1 <- readIORef e1Ref
    entityRender e1 e1

updateWorld :: World -> IO ()
updateWorld world = do
    let playerRef = worldPlayer world
    player <- readIORef playerRef
    
    -- Update player
    let tmpPlayer = (playerUpdate player player)

    print $ inputMouseDelta $ playerInput tmpPlayer
    --print $ inputLastMousePos $ playerInput tmpPlayer

        -- Set mouse delta movement to 0
    let pin = (playerInput tmpPlayer){inputMouseDelta = (0, 0)}
        newPlayer = tmpPlayer{playerInput = pin}

    writeIORef playerRef newPlayer
    
    -- TODO: make it safe for a world with a Nothing for entities.
    let (Just entities) = worldEntities world
    updateObjects entities

    
initGL :: GLFW.Window -> IO ()
initGL win = do
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
    gluPerspective 45 (fromIntegral width/fromIntegral height) 0.1 100
    GL.glMatrixMode GL.gl_MODELVIEW
    GL.glLoadIdentity
    -- glFlush not necessary because of double buffering?
    --GL.glFlush

shutdown :: GLFW.WindowCloseCallback
shutdown win = do
    GLFW.destroyWindow win
    GLFW.terminate
    _ <- exitSuccess
    return ()

keyPressed :: IORef GameObject -> GLFW.KeyCallback
keyPressed _ win GLFW.Key'Escape _ GLFW.KeyState'Pressed _ = shutdown win
keyPressed playerRef _ k _ state _ = do
    player <- readIORef playerRef
    let input = playerInput player
        newIn = checkType input k state
        newPlayer = player{playerInput = newIn}
    
    writeIORef playerRef newPlayer
    
    where
        checkType (Input keyMap mouse lm) key action =
            let isPressed = action /= GLFW.KeyState'Released
                newIn = Input (map (\w@(ckey, _, func) ->
                    if ckey == key then (key, isPressed, func) else w) $ keyMap) mouse lm
            in newIn

cursorMove :: IORef GameObject -> GLFW.CursorPosCallback
cursorMove playerRef _ x y = do
    player <- (readIORef playerRef)
    let input = playerInput player

    let (xi, yi) = inputLastMousePos input --inputMouseDelta input
    let newInput = input{inputMouseDelta = (realToFrac x - xi, realToFrac y - yi)}
    writeIORef playerRef player{playerInput = newInput}

--- HELPERS ---

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


{-
fArray :: Storable a => [a] -> IO (ForeignPtr a)
fArray xs = (newArray xs) >>= newForeignPtr_

infixr 2 |*|
-- | A more natural way to use withForeignPtr
(|*|) :: (Ptr a -> IO b) -> ForeignPtr a -> IO b
(|*|) action fptr = withForeignPtr fptr action
-}
