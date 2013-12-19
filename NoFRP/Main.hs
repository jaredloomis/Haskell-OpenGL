module Main where
import Data.IORef
import Data.Time.Clock

import qualified Graphics.Rendering.OpenGL as GL
import qualified Graphics.UI.GLUT as GLUT hiding (renderObject)

import Framework
import Display

-------------------------------------
----------- Test values -------------
-------------------------------------

allPoints :: [Vec2]
allPoints = [(0, 0), (0.3, 0), (0, 0.3), (0.3, 0), (0.3, 0.3), (0, 0.3)]

entityPoints :: [Vec2]
entityPoints = [(0, 0), (0.3, 0), (0, 0.3), (0.3, 0), (0.3, 0.3), (0, 0.3)]

testInput :: Input
testInput = Input [(GLUT.Char 'a', False, aIn), (GLUT.Char 'd', False, dIn),
                    (GLUT.Char 'w', False, wIn), (GLUT.Char 's', False, sIn)]

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
mainPlayer = Player (0, 0) (renderTriangles allPoints) 
                (Physics (\x -> x) (0.3, 0.3) 0)

testEntity :: GameObject
testEntity = Entity (-0.5, 0) (renderTriangles entityPoints) 
                (Physics (\x -> x) (0.3, 0.3) 0) (\x _ -> x)

mainWorld :: IORef ConPlayer -> IORef ConEntity -> IORef GL.GLfloat -> World
mainWorld pRef eRef sTime = World pRef (Just eRef) Nothing Nothing sTime


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
    playerRef <- newIORef $ ConPlayer mainPlayer testInput (\p _ -> p)
    startTime <- newIORef (0 :: GL.GLfloat)
    let world = mainWorld playerRef dynamics startTime

    -- Set displayCallback
    GLUT.displayCallback $= displayWorld world
    -- Set input callback function
    GLUT.keyboardMouseCallback $= Just (inputCallback playerRef)
    -- Set callback for when the window is resized
    GLUT.reshapeCallback $= Just reshape

    -- Begin GLUT main loop
    GLUT.mainLoop

-- TODO: delta
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
    updateConEntityRef dynamic

    -- Update player
    -- TODO : updateConPlayer player (dyn++static)
    updateConPlayerRef player (Just dEntities)

     -- Clear screen
    GLUT.clear [GLUT.ColorBuffer]
    -- Reset transformations
    GLUT.loadIdentity
    
    -- Render all objects
    renderConObject (ConObject p dyn)

    t <- worldTime
    lastTime world $= diffToGL t

     -- Refresh screen (bring back buffer to front.)
    GLUT.swapBuffers
    -- Tell GL to start next frame. Remove/Fix?
    GLUT.postRedisplay Nothing

inputCallback :: IORef ConPlayer -> GLUT.KeyboardMouseCallback
inputCallback cPlayerRef k a x y = do
    cPlayer <- readIORef cPlayerRef
    let player = conPlayerPlayer cPlayer
        input = conPlayerInput cPlayer
    checkType player cPlayer cPlayerRef input k a x y
    where
        checkType player@(Player{}) cPlayer reference (Input keyMap) key action _ _ = do
            let isPressed = if action == GLUT.Down then True else False

            let newIn = (Input (map (\w@(ckey, _, func) ->
                    if ckey == key then (key, isPressed, func) else w) $ keyMap))

            reference $= ConPlayer player newIn (conPlayerUpdate cPlayer)
 
-- TODO: Reshape will make viewport bigger but will not change
--       how objects move, so when viewport is bigger, everything
--       seems to move slower.
reshape :: GLUT.Size -> IO ()
reshape s@(GLUT.Size w h) = do
    GL.viewport $= (GLUT.Position 0 0, (GLUT.Size (min w h) $ min w h))
