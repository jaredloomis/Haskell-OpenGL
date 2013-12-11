module Main where
import Framework
import Display

--import Control.Monad
import Data.IORef

import Graphics.Rendering.OpenGL as GL
import Graphics.UI.GLUT as GLUT hiding (renderObject)

-------------------------------------
-- | ------ Test values -------- | --
-------------------------------------

allPoints :: [Vec2]
allPoints = [(0, 0), (0.3, 0), (0, 0.3), (0.3, 0), (0.3, 0.3), (0, 0.3)]

entityPoints :: [Vec2]
entityPoints = [(0, 0), (0.3, 0), (0, 0.3), (0.3, 0), (0.3, 0.3), (0, 0.3)]

testInput :: Input
testInput = Input [(Char 'a', False, aIn), (Char 'd', False, dIn),
                    (Char 'w', False, wIn), (Char 's', False, sIn)]

aIn :: GameObject -> Maybe [GameObject] -> GameObject
aIn p (Just others) = moveObjectSafe p others (-0.001, 0)
aIn p Nothing = p
dIn :: GameObject -> Maybe [GameObject] -> GameObject 
dIn p (Just others) = moveObjectSafe p others (0.001, 0)
dIn p Nothing = p
wIn :: GameObject -> Maybe [GameObject] -> GameObject
wIn p (Just others) = moveObjectSafe p others (0, 0.001)
wIn p Nothing = p
sIn :: GameObject -> Maybe [GameObject] -> GameObject
sIn p (Just others) = moveObjectSafe p others (0, -0.001)
sIn p Nothing = p


mainPlayer :: GameObject
mainPlayer = Player (0, 0) (renderTriangles allPoints) (Physics (\x -> x) (0.3, 0.3) 0)

testEntity :: GameObject
testEntity = Entity (-0.5, 0) (renderTriangles entityPoints) (Physics (\x -> x) (0.3, 0.3) 0)

mainWorld :: IORef ConPlayer -> IORef ConEntity -> World
mainWorld pRef eRef = World pRef (Just eRef) Nothing Nothing


-- | Main function, runs a test game
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

    -- Set up world
    dynamics <- newIORef $ ConEntity [testEntity]
    playerRef <- newIORef $ ConPlayer mainPlayer testInput
    let world = mainWorld playerRef dynamics

    -- Set displayCallback
    GLUT.displayCallback $= displayWorld world
    -- Set input callback function
    keyboardMouseCallback $= Just (inputCallback playerRef)
    -- Set callback for when the window is resized
    reshapeCallback $= Just reshape

    -- Begin GLUT main loop
    GLUT.mainLoop

displayWorld :: World -> GLUT.DisplayCallback
displayWorld world = do
    -- Set values
    let player = worldPlayer world
        (Just dynamic) = worldDynamic world
        static = worldStatic world
--        setting = worldSettings world
    dyn@(ConEntity dEntities) <- readIORef dynamic
    p <- readIORef player

    -- Update dynamic entities
    updateConEntity dynamic

    -- Update player
    -- TODO : updateConPlayer player (dyn++static)
    updateConPlayer player (Just dEntities)

     -- Clear screen
    GLUT.clear [GLUT.ColorBuffer]
    -- Reset transformations
    loadIdentity
    
    -- Render all objects
    renderConObject (ConObject p dyn)

     -- Refresh screen (bring back buffer to front.)
    GLUT.swapBuffers
    -- Tell GL to start next frame
    GLUT.postRedisplay Nothing

inputCallback :: IORef ConPlayer -> GLUT.KeyboardMouseCallback
inputCallback cPlayerRef k a x y = do
    cPlayer <- readIORef cPlayerRef
    let player = conPlayerPlayer cPlayer
        input = conPlayerInput cPlayer
    checkType player cPlayerRef input k a x y
    where
        checkType :: GameObject -> IORef ConPlayer -> Input -> GLUT.KeyboardMouseCallback
        checkType player@(Player{}) reference (Input keyMap) key action _ _ = do
            let isPressed = if action == Down then True else False

            let newIn = (Input (map (\w@(ckey, _, func) ->
                    if ckey == key then (key, isPressed, func) else w) $ keyMap))

            reference $= ConPlayer player newIn
 
reshape :: Size -> IO ()
reshape s = do
    GL.viewport $= (Position 0 0, s)
