{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.GameObject (
    getPos, moveObjectSlide,
    updateWorld, applyGravity,
    moveObjectSafe,
    moveObject, moveSlideIntersecters,
    getModel
) where

import Control.Applicative ((<$>))
import Control.Monad (foldM)
import Data.Maybe (isJust, fromJust)
import Control.Monad.State (get)
import Data.Vec ((:.)(..), Vec3)

import Engine.Core.Types
    (Game, World(..), Entity(..), Player(..),
     playerAABB)
import Engine.Core.HasPosition
    (HasPosition(..))
import Engine.Mesh.AABB (AABB(..), HasAABB(..))
import Engine.Mesh.Mesh (Mesh(..))
import Engine.Object.Octree (findNearby)
import Engine.Object.Intersect (Intersect(..), intersectsAny, getObjectIntersecter)
import Engine.Core.World (getWorldDelta)

import Graphics.Rendering.OpenGL.Raw (GLfloat)

-- = Utility update functions.

updateWorld :: Game t (World t)
updateWorld = do
    world <- get
    newObjs <- updateEntities
    return world{worldEntities = newObjs}

updateEntities :: Game t [Entity t]
updateEntities = do
    world <- get
    mapM (\o -> entityUpdate o o) (worldEntities world)

-- = Velocity-changing functions.

-- | Change Player's velocity to simulate gravity.
applyGravity :: Player t -> Game t (Player t)
applyGravity p = do
    let pvx :. pvy :. pvz :. () = playerVelocity p
    world <- get

    atRest <- if pvy < 0
                then
                    let curPos = getPos p
                    in do
                        x <- getPos <$> moveObjectSafe p (0 :. pvy :. 0 :. ())
                        return $ curPos == x
            else if pvy == 0
                then
                    let curPos = getPos p
                    in do
                        x <- getPos <$> moveObjectSafe p (0 :. (-0.5) :. 0 :. ())
                        return $ curPos == x
            else return False
    if atRest
        then return $ p{playerVelocity = pvx :. 0.0 :. pvz :. ()}
    else
        let newY = max (pvy - getWorldDelta world * 0.5) (-1)
        in return p{playerVelocity =
            pvx :. newY :. pvz :. ()}

-- = Position-changing functions.

-- | Move an object on each axis independently, and return
--   all AABBs it intersected with, if applicable.
moveSlideIntersecters :: (HasPosition object, HasAABB object) =>
                          object -> Vec3 GLfloat -> Game t (object, [AABB])
moveSlideIntersecters object (dx :. dy :. dz :. ()) = do
    (movedx, intx) <- moveSlideIntersecter object (dx :. 0 :. 0 :. ())
    (movedy, inty) <- moveSlideIntersecter movedx (0 :. dy :. 0 :. ())
    (movedz, intz) <- moveSlideIntersecter movedy (0 :. 0 :. dz :. ())

    let aabbs = map fromJust $ filter isJust [intx, inty, intz]
    return (movedz, aabbs)

moveSlideIntersecter :: (HasPosition object, HasAABB object) =>
                        object -> Vec3 GLfloat -> Game t (object, Maybe AABB)
moveSlideIntersecter object movement = do
    world <- get
    let objectXP = moveObject object movement
        entities = findNearby (worldOctree world)
                    (movePos playerAABB (getPos object))
        intersect = getObjectIntersecter objectXP entities
    if isJust intersect
        then return (object, intersect)
    else return (objectXP, Nothing)

moveObjectSlide :: (HasPosition object, HasAABB object) =>
                    object -> Vec3 GLfloat -> Game t object
moveObjectSlide object (dx :. dy :. dz :. ()) = do
    foldM ((return .) . moveObject) object
        [dx :. 0 :. 0 :. (), 0 :. dy :. 0 :. (), 0 :. 0 :. dz :. ()]

moveObjectSafe :: (HasPosition object, Intersect object AABB) => 
                   object -> Vec3 GLfloat -> Game t object
moveObjectSafe object vec = do
    world <- get
    let moved = moveObject object vec
        entities = findNearby (worldOctree world)
                              (movePos playerAABB (getPos object))
        intersectingObject = intersectsAny moved entities
    if intersectingObject
        then return object
    else return moved

moveObject :: HasPosition object => object -> Vec3 GLfloat -> object
moveObject obj deltaPos =
    setPos obj (getPos obj + deltaPos)

getModel :: Entity t -> Mesh
getModel pe@(Entity{}) = entityModel pe
