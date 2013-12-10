module Main where
import Framework
import Display

import Control.Monad
import Data.IORef

import Graphics.Rendering.OpenGL as GL
import Graphics.UI.GLUT as GLUT hiding (renderObject)

-------------------------------------
-- | ------ Test values -------- | --
-------------------------------------

allPoints :: [(GLfloat, GLfloat)]
allPoints = [(0, 0), (1, 0), (0, 1)]

testInput = Input [(Char 'a', False, aIn), (Char 'd', False, dIn),
                    (Char 'w', False, wIn), (Char 's', False, sIn)]
aIn p = moveObject p (-0.001, 0)
dIn p = moveObject p (0.001, 0)
wIn p = moveObject p (0, 0.001)
sIn p = moveObject p (0, -0.001)

mainPlayer = Player (0, 0) (renderTriangles allPoints) testInput (Physics (\x -> x) 0)

-----------------------------------
-- | ---------- Main --------- | --
-----------------------------------

main :: IO ()
main = do
    -- Set initialWindowSize
    GLUT.initialWindowSize $= GLUT.Size 500 500
    -- Enable double buffering
    GLUT.initialDisplayMode $= [GLUT.DoubleBuffered]

    -- Init GLUT
    (progName, args) <- GLUT.getArgsAndInitialize
    -- Create window
    window <- GLUT.createWindow "Hello World"

    --playerRef <- newIORef mainPlayer
    worldObjects <- newIORef [mainPlayer]

    -- Set displayCallback
    GLUT.displayCallback $= display worldObjects
    -- Set input callback function
    keyboardMouseCallback $= Just (inputCallbackArray worldObjects)
    -- Set callback for when the window is resized
    reshapeCallback $= Just reshape

    -- Begin GLUT main loop
    GLUT.mainLoop

display :: IORef [GameObject] -> GLUT.DisplayCallback
display xsRef = do
    -- Update objects
    updateObjects xsRef

    -- Clear screen
    GLUT.clear [GLUT.ColorBuffer]
    -- Reset transformations
    loadIdentity

    -- Render all objects
    renderObjectsIO xsRef

    -- Refresh screen (bring back buffer to front.)
    GLUT.swapBuffers
    -- Tell GL to start next frame
    GLUT.postRedisplay Nothing

updateObjects :: IORef [GameObject] -> IO ()
updateObjects xsRef = do
    xs <- readIORef xsRef
    xsRef $= updateUnwrapped xs
    where
        updateUnwrapped :: [GameObject] -> [GameObject]
        updateUnwrapped (x:xs) = [update x] ++ updateUnwrapped xs

        updateUnwrapped [] = []

renderScene :: IO ()
renderScene = do
    renderPrimitive Triangles $ do
        mapM_ (\(x, y) -> vertex $ Vertex3 x y 0) allPoints

inputCallbackArray :: IORef [GameObject] -> KeyboardMouseCallback
inputCallbackArray objects key action x y = do
    inArray <- readIORef objects
    checkType (inArray !! 0) objects
    where 
        checkType :: GameObject -> IORef [GameObject] -> IO ()
        checkType p@(Player{}) objects = do
        os <- readIORef objects
        pl <- newIORef p
        inputCallback pl key action x y
        pp <- readIORef pl
        objects $= pp:(tail os)

inputCallback :: IORef GameObject -> KeyboardMouseCallback
inputCallback player key action _ _ = do
    p <- readIORef player
    let isPressed = if action == Down then True else False

    --let (_, yes, _) = ((inputKeys $ playerInput p) !! 0)
    --putStrLn $ show yes
    --putStrLn $ show $ (snd $ ((inputKeys $ playerInput p) !! 0) :: Bool)

    let newIn = (Input (map (\x@(ckey, _, func) ->
            if ckey == key then (key, isPressed, func) else x) $ inputKeys $ playerInput p))
    player $= p{playerInput=newIn}

reshape :: Size -> IO ()
reshape s = do
    GL.viewport $= (Position 0 0, s)
