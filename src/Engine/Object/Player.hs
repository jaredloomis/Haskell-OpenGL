{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.Player (
    mkPlayer,
    resetPlayerInput
) where

import Prelude hiding ((.))
import Control.Category ((.))
import Control.Applicative ((<$>))
import Control.Monad (void, when)
import Control.Monad.State
    (get, gets, liftIO, put)
import Data.Default (def)
import Data.Vec ((:.)(..), Vec3)
import Unsafe.Coerce (unsafeCoerce)

import qualified Data.Label as L (set)

import Physics.Bullet.Raw
    (btDynamicsWorld_stepSimulation,
     btSphereShape)
import Physics.Bullet.Raw.Types (Transform(..))
import Physics.Bullet.Raw.Class (BtSphereShape)
import qualified Physics.Bullet.Raw.Types as BT (Vec3(..))

import Graphics.Rendering.OpenGL.Raw (GLfloat)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Core.Types
import Engine.Core.Util (sinDeg, cosDeg)
import Engine.Bullet.Bullet
    (Physics(..), AttrOp(..),
     RigidBodyInfo(..),
     set, worldTransform,
     linearVelocity, addShape)
import qualified Engine.Bullet.Bullet as B (get)


-------- FPS ------------------

mkPlayer :: Physics -> IO (Player t)
mkPlayer physics = do
    let info = def{rigidBodyMass = 1}
    shape <- mkPlayerShape
    player <-
        Player (0 :. 60 :. 0 :. ())
               (0 :. 0 :. 0 :. ())
               (0 :. 0 :. 0 :. ())
               5
               pUpdate
               baseInput
               <$> addShape shape info physics
    void $ set (playerRigidBody player)
        [worldTransform :~ (\(Transform mat _) -> Transform mat $ BT.Vec3 0 60 0)]
    return player

mkPlayerShape :: IO BtSphereShape
mkPlayerShape = btSphereShape 1

-- | Input for first person camera.
baseInput :: Input t
baseInput =  Input
    [(GLFW.Key'A, GLFW.KeyState'Repeating, GLFW.KeyState'Released, aIn),
     (GLFW.Key'D, GLFW.KeyState'Repeating, GLFW.KeyState'Released, dIn),
     (GLFW.Key'W, GLFW.KeyState'Repeating, GLFW.KeyState'Released, wIn),
     (GLFW.Key'S, GLFW.KeyState'Repeating, GLFW.KeyState'Released, sIn),
     (GLFW.Key'LeftShift, GLFW.KeyState'Repeating, GLFW.KeyState'Released, shiftIn),
     (GLFW.Key'Space, GLFW.KeyState'Pressed, GLFW.KeyState'Released, spaceIn),
     (GLFW.Key'Escape, GLFW.KeyState'Pressed, GLFW.KeyState'Released, escIn)]
     (0 :. 0 :. ()) (0 :. 0 :. ())
     0.1

aIn :: World t -> World t
aIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (playerSpeed p :. 0 :. 0 :. ())}
dIn :: World t -> World t
dIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p ((-playerSpeed p) :. 0 :. 0 :. ())}
wIn :: World t -> World t
wIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (0 :. 0 :. (-playerSpeed p) :. ())}
sIn :: World t -> World t
sIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        setVelocityFromLook p (0 :. 0 :. (playerSpeed p) :. ())}

shiftIn :: World t -> World t
shiftIn w =
    let p = worldPlayer w
    in w{worldPlayer =
        p{playerVelocity =
            playerVelocity p + (0 :. (-playerSpeed p) :. 0 :. ())}}

spaceIn :: World t -> World t
spaceIn w =
        let p = worldPlayer w
            curVel@(_ :. vy :. _ :. ()) = playerVelocity p
        in
            if abs vy < 0.01
                then w{worldPlayer =
                    p{playerVelocity =
                        curVel + (0 :. 12 :. 0 :. ())}}
            else w

escIn :: World t -> World t
escIn w =
    let state = worldState w
        paused = statePaused state
    in w{
        worldState = state{
            statePaused = not paused
            }
        }

--------------- END FPS ---------------

pUpdate :: GameIO t ()
pUpdate = do
    paused <- gets (statePaused . worldState)
    if not paused
        then pUpdateNormal
    else hoistGame pUpdatePaused

pUpdateNormal :: GameIO t ()
pUpdateNormal = do
    p <- gets worldPlayer
    let origSpeed = playerSpeed p
    state <- gets worldState
    -- Modify playerSpeed based on delta time.
    lWorldPlayer %= (lPlayerSpeed %~ (* stateDelta state))
    -- Do key update.
    hoistGame playerKeyUpdateSafe
    -- Do mouse update.
    lWorldPlayer %= playerMouseUpdate

    -- Resolve velocity, moving player.
    (lWorldPlayer .=) =<< resolveVelocityBullet =<< gets worldPlayer
    -- Reset speed.
    lWorldPlayer %= (lPlayerSpeed .~ origSpeed)

pUpdatePaused :: Game t ()
pUpdatePaused = do
    p <- gets worldPlayer
    -- Do mouse update. Why?
    lWorldPlayer .= playerMouseUpdate p
    -- Do key update, to change world state.
    playerKeyUpdateSafe
    -- Reset player, in case it moved.
    lWorldPlayer .= p

resetPlayerInput :: Player t -> Player t
resetPlayerInput =
    lPlayerInput %~ (lInputMouseDelta .~ 0 :. 0 :. ())

-- | Calculate delta movement from Player and raw input movement.
calculateLookMovement :: Player t -> Vec3 GLfloat -> Vec3 GLfloat
calculateLookMovement p (idx :. idy :. idz :. ()) =
    let _ :. rry :. _ :. () = playerRotation p
        dx = uC idx
        dz = uC idz
        
        ry = uC rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
    in uC mx :. my :. uC mz :. ()
  where
    uC = unsafeCoerce

-- | Calculate new velocity from current object
--   and raw movement.
setVelocityFromLook :: Player t -> Vec3 GLfloat -> Player t
setVelocityFromLook player idVec =
    let movement = calculateLookMovement player idVec
    in lPlayerVelocity %~ (+ movement) $ player

-- | Update rotation from mouse input.
playerMouseUpdate :: Player t -> Player t
playerMouseUpdate player =
    let rawdx :. rawdy :. () = inputMouseDelta $ playerInput player
        lastX :. lastY :. () = inputLastMousePos $ playerInput player
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        rx :. ry :. rz :. () = playerRotation player

        dx = -dxx

        curPos = (lastX + rawdx) :. (lastY + rawdy) :. ()

        -- Basic calculation of degrees, 0 is minimum,
        -- 360 is maximum.
        newRy
            | ry + dx >= 360 = ry + dx - 360
            | dx + ry < 0    = 360 - ry + dx
            | otherwise      = ry + dx

        -- Lowest angle player can look
        maxLookDown = -90
        -- Highest angle player can look
        maxLookUp = 90

        -- Basic calculation for x axis (looking up and down).
        -- Make sure that look direction stays between maxLookDown
        -- and maxLookUp.
        newRx
            -- If rotation is in bounds, allow rotation.
            | rx - dy >= maxLookDown && rx - dy <= maxLookUp      = rx - dy
            -- If player is trying to look down too far, set rotation to maxLookDown.
            | rx - dy < maxLookDown                             = maxLookDown
            -- If player is trying to look up too far, set rotation to maxLookUp.
            | rx - dy > maxLookUp                               = maxLookUp
            -- I don't think this will ever happen.
            | otherwise                                         = rx

        newRot = newRx :. newRy :. rz :. ()
        -- Update rotation and lastMousePos.
    in  L.set lPlayerRotation newRot .
        L.set (lInputLastMousePos . lPlayerInput) curPos $ player

-- | Update player's keys.
playerKeyUpdateSafe :: Game t ()
playerKeyUpdateSafe = do
    -- Get initial player info.
    player <- gets worldPlayer
    let startInput = playerInput player

    -- Perform key update.
    playerKeyUpdateTail
    -- Reset playerInput.
    lPlayerInput . lWorldPlayer .= startInput

-- | Returns Player after safely applying all input functions.
--   UNSAFE! Returns given player with an empty inputKeys!
--   Use playerKeyUpdateSafe instead.
playerKeyUpdateTail :: Game t ()
playerKeyUpdateTail = do
    w <- get
    Input ((_, desired, found, func):xs) mouse lm ms <-
        gets (playerInput . worldPlayer)
    -- If the recorded keystate matches desired keystate,
    -- apply corresponding function to player.
    -- Assumes KeyState'Repeating = KeyState'Repeating || KeyState'Pressed
    let newWorld
            | desired == GLFW.KeyState'Repeating =
                if found == desired ||
                        found == GLFW.KeyState'Pressed
                    then func w
                else w
            | desired == found =
                func w
            | otherwise = w
    put newWorld
    -- Modify the player's keys.
    lPlayerInput . lWorldPlayer .= Input xs mouse lm ms
    -- If there are more keys to update, do it.
    when (not . null $ xs) playerKeyUpdateTail

-- | Resolve velocity with bullet.
resolveVelocityBullet :: Player t -> GameIO t (Player t)
resolveVelocityBullet p = do
    -- Delta time.
    world <- get
    let delta = stateDelta $ worldState world

    let vx :. vy :. vz :. () = playerVelocity p
        rigidBody = playerRigidBody p

    -- Change velocity in bullet.
    void . liftIO $ set rigidBody
        [linearVelocity :~ (+ BT.Vec3 (uC vx) (uC vy) (uC vz))]
    -- Step physics.
    physics <- gets worldPhysics
    void . liftIO $ btDynamicsWorld_stepSimulation (physicsWorld physics)
                (uC delta) 10 (1/60)

    -- Ask bullet physics where the object is now.
    (Transform _mat (BT.Vec3 nx ny nz)) <-
        liftIO $ rigidBody `B.get` worldTransform

    --let BT.Vec3 nx ny nz = mat *. pos

    -- Set position to wherever bullet says it is.
    return $ L.set lPlayerPosition (uC nx :. uC ny :. uC nz :. ()) .
             -- Set velocity to 0.
             L.set lPlayerVelocity (0 :. 0 :. 0 :. ()) $ p

  where
    uC :: a -> b
    uC = unsafeCoerce
