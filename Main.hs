module Main where
import Graphics.UI.GLUT hiding (position, Object)
import System.IO
import Control.Applicative
import Data.IORef
import Data.List
import Data.Time.Clock
import Numeric

-----------------------------------------
--Monad
testM = (Just 3) >>= \x -> return $ abs $ 12 - x
--Applicative
appDouble :: Maybe Integer
appDouble = (Just (*2)) <*> Just 12
----------------------------------------
---- || OpenGL / GLUT || ---------------
----------------------------------------

-----------------------------------------
--------- || Data types || --------------
-----------------------------------------
-- | Object data type, for representing attributes
-- | of objects displayed on screen.
data Object = Object {
    children :: Maybe [Object],
    position :: (GLfloat, GLfloat),
    vertices :: [(GLfloat, GLfloat, GLfloat)],
    boundingBox :: (GLfloat, GLfloat),
    physics :: Physics
} 

{-| Solid {
    children :: Maybe [Object],
    position :: (GLfloat, GLfloat),
    vertices :: [(GLfloat, GLfloat, GLfloat)],
    boundingBox :: (GLfloat, GLfloat)
}-}

data Physics = Physics {
    update :: Object -> Object,
    velocity :: (GLfloat, GLfloat)
}

-- | Input data type, used to represent data
-- | recieved and processed from input.
data Input = Input {
    keysDown :: [(Key, Bool)],
    moveFactor :: (GLfloat, GLfloat),
    worldTime :: (DiffTime, DiffTime) -- (LastTime, DeltaTime)
}

data World = World {
    player :: Object,
    enemies :: Maybe [Object],
    playerIn :: Input
}

class LocationalObject a where
    move :: a -> (GLfloat, GLfloat) -> a
    inBounds :: a -> (GLfloat, GLfloat) -> Bool
    applyForce :: a -> (GLfloat, GLfloat) -> a
    --gravity :: a ->

instance LocationalObject Object where
    move p@(Object children (xi, yi) vs bb phys) final@(xf, yf) =
        if inBounds p final
            then Object children final vs bb phys
        else p

        {-
        -- If the movement is really small, just ignore it.
        if (abs $ xi - xf) < 0.000001 && (abs $ yi - yf) < 0.000001
            then p
        -- If moving only in y direction, keep moving in smaller increments
        -- for maximum accuracy.
        else if xi == xf
            then if inBounds p final
                then Object children final vs bb phys
            else move p (xf, (yi + (yf-yi)/2))
        -- Same thing, but for x direction
        else if yi == yf
            then if inBounds p final
                then Object children final vs bb phys
            else move p ((xi + (xf-xi)/2), yf)
        -- If move is legal, move.
        else if inBounds p final
            then Object children final vs bb phys
        -- If the move is not legal, try to move in each direction seperately
        else move (move p (xf, yi)) (xi, yf)
    -}

    applyForce obj (x, y) =
        let oldPhysics@(Physics _ (vx, vy)) = (physics obj)
        in obj {
                physics = oldPhysics{velocity = (vx+x, vy+y)}
            }

    inBounds (Object _ _ _ (bx, by) _) (x, y) =
        (x > -1) && ((x+bx) < 1) && (y > -1) && ((y+by) < 1)

----------------------------------------
------ || Starting values || -----------
----------------------------------------

-- | Starting values for key input. It is turned into
-- | an IORef in main.
mainInput :: Input
mainInput = Input [(Char 'a', False), (Char 'd', False), 
                   (Char 'w', False), (Char 's', False)] (1, 1) (1, 1)

-- | List of vertices to use when rendering the
-- | player.
playerPoints :: [(GLfloat, GLfloat, GLfloat)]
playerPoints = [(0, 0, 0), (0, 0.1, 0), (0.1, 0.1, 0), (0.1, 0, 0)]

playerPhysics :: Physics
playerPhysics = Physics gravityUpdate (0, 0)

gravityUpdate :: Object -> Object
gravityUpdate o@(Object children (x, y) verts bb p@(Physics upd (xacc, yacc))) =
    let (Object newChild (nx, ny) nverts nbb np) = move o (x, y+yacc)
    in Object newChild (nx, ny) nverts nbb $ Physics upd (xacc, max (yacc-0.00000981) $ -0.001)

initialWidth = 640

playerSpeed = 1

----------------------------------------
------- || Main function || ------------
----------------------------------------

main :: IO ()
main = do
    -- Set initialWindowSize
    initialWindowSize $= Size initialWidth initialWidth
    -- Enable Double Buffering
    initialDisplayMode $= [DoubleBuffered]

    -- Init GLUT
    (progName, args) <- getArgsAndInitialize
    -- Create window
    window <- createWindow "Hello World"

    let player = Object Nothing (0, 0) playerPoints (0.1, 0.1) playerPhysics
    world <- newIORef $ World player Nothing mainInput

    -- Set display callback function
    displayCallback $= renderScene world
    -- Set input callback function
    keyboardMouseCallback $= Just (keyboard world)
    -- Set callback for when the window is resized
    reshapeCallback $= Just (reshape world)
    -- Begin OpenGL/GLUT main loop
    mainLoop

----------------------------------------
------- || Core functions || -----------
----------------------------------------

-- | Call to render entire scene
renderScene :: (HasGetter g, HasSetter g) => g World -> DisplayCallback
renderScene world = do
    -- Update player location
    playerMove world
    
    --matrixMode $= Modelview 0

    -- Clear screen
    clear [ColorBuffer]
    -- Reset transformations
    loadIdentity

    -- Set correct matrixMode
    --matrixMode $= Projection

    -- Render player
    preservingMatrix $ renderPlayer world

    -- Swap front and back buffers for double
    -- buffering.
    swapBuffers

    w <- get world
    t <- time
    let (Input keys factor (lTime, _)) = playerIn w
        newIn = Input keys factor (t, t-lTime)
    world $= w{playerIn = newIn}

    -- Tell OpenGL to update the window again
    postRedisplay Nothing

-- | Render just the player, other OpenGL functions must
-- | be called before this.
renderPlayer :: (HasGetter g, HasSetter g) => g World -> DisplayCallback
renderPlayer world = do
    -- Translate Player
    w@(World p _ _) <- get world
    let (px, py) = position p
        points = vertices p
    moveGL w (px, py)

    -- Render Player
    renderPrimitive Quads $
        mapM_ (\(x, y, z) -> vertex $ Vertex3 x y z) points

-- | Update the position of the player.
playerMove :: (HasSetter s, HasGetter s) => s World -> IO ()
playerMove world = do
    w@(World p@(Object children (x, y) verts bb phys@(Physics pUpdate _)) es i) <- get world
 
    -- Get delta
    let (_, deltaDiff) = worldTime $ playerIn w
        delta = diffToGL deltaDiff


    if isDown (Char 'a') i && isDown (Char 'w') i
        then world $= w{
                        player = applyForce p (x-playerSpeed*delta, y-playerSpeed*delta)
                    }

--world $= w{player = move p ((x-playerSpeed*delta), (y+playerSpeed*delta))}
    else if isDown (Char 'a') i && isDown (Char 's') i
        then world $= w{player = move p ((x-playerSpeed*delta), (y-playerSpeed*delta))}
    else if isDown (Char 'd') i && isDown (Char 'w') i
        then world $= w{player = move p ((x+playerSpeed*delta), (y+playerSpeed*delta))}
    else if isDown (Char 'd') i && isDown (Char 's') i
        then world $= w{player = move p ((x+playerSpeed*delta), (y-playerSpeed*delta))}
    else if isDown (Char 'a') i
        then world $= w{player = move p ((x-playerSpeed*delta), y)}
    else if isDown (Char 'd') i
        then world $= w{player = move p ((x+playerSpeed*delta), y)}
    else if isDown (Char 'w') i
        then world $= w{player = move p (x, (y+playerSpeed*delta))}
    else if isDown (Char 's') i
        then world $= w{player = move p (x, (y-playerSpeed*delta))}
    else return ()

    applyPhysics world
    applyForces world

applyPhysics world = do
    w <- get world
    world $= w{player = update (physics $ player w) $ player w}

applyForces world = do
    w <- get world
    let p = player w
        vel@(vx, vy) = velocity $ physics p
    --putStrLn $ show vel
    let p2 = move p (vx+(fst $ position p), vy+(snd $ position p))
        pf = p2{
            physics = (physics p2){velocity=(0, 0)}
        }
    world $= w{player = pf}

----------------------------------------
------------ || Input || ---------------
----------------------------------------

-- | Updates Input data from keyboard and/or mouse input
keyboard :: (HasSetter s, HasGetter s) =>  s World -> Key -> KeyState -> t -> t1 -> IO ()
keyboard world key action _ _ = do
    -- Set variables to be used in main statement
    w@(World wPlayer wEnems pin) <- get world
    let isPressed = if action == Down then True else False
    
    -- Use map through list to change the state of key
    let newIn = (Input (map (\x@(ckey, _) ->
            if ckey == key then (key, isPressed) else x) $ keysDown pin) (moveFactor pin) (worldTime pin))

    world $= World wPlayer wEnems newIn

-- | Check if a key is down in given Input data
-- | Returns False if key is not down, or if
-- | that key is not found.
isDown :: Key -> Input -> Bool
isDown key input =
    if [(key, True)] `isInfixOf` (keysDown input)
        then True
    else False

reshape :: (HasGetter g, HasSetter g) => g World -> ReshapeCallback
reshape world s@(Size width height) = do
    -- Set variables of aspect ratio
    let wd = (fromIntegral width) :: GLfloat
        hd = (fromIntegral height) :: GLfloat
        aspect = wd / hd
    
    w <- get world
    let input = playerIn w

    -- Apply new viewport
    viewport $= (Position 0 0, s)
    matrixMode $= Projection
    loadIdentity
    matrixMode $= Modelview 0

    let newIn = (Input (keysDown input) ((wd / fromIntegral initialWidth) :: GLfloat, (hd / fromIntegral initialWidth) :: GLfloat) $ worldTime input)
    world $= w{playerIn = newIn}

moveGL :: World -> (GLfloat, GLfloat) -> IO ()
moveGL (World _ _ (Input _ (xm, ym) _)) (x, y) = translate $ Vector3 (x*xm) (y*ym) 0.0

----------------------------------
----- || Helper Functions || -----
----------------------------------
time :: IO DiffTime
time = getCurrentTime >>= return . utctDayTime

diffToGL :: DiffTime -> GLfloat
diffToGL = fromRat . toRational
