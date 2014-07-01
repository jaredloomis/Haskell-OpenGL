{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
module Engine.Core.HasPosition (
    HasPosition(..),
    HasRotation(..),
    HasVelocity(..)
) where

import Data.Vec
import Graphics.Rendering.OpenGL.Raw (GLfloat)

-- | A class for types that have a position
--   that can be retrieved and set.
class HasPosition p where
    getPos :: p -> Vec3 GLfloat
    setPos :: p -> Vec3 GLfloat -> p
    movePos :: p -> Vec3 GLfloat -> p
    movePos hp movement =
        setPos hp (getPos hp + movement)
    {-# MINIMAL getPos, setPos #-}

-- | A class for types that have a rotation
--   that can be retrieved and set.
class HasRotation r where
    getRot :: r -> Vec3 GLfloat
    setRot :: r -> Vec3 GLfloat -> r
    rotate :: r -> Vec3 GLfloat -> r
    rotate r deltaR =
        setRot r (getRot r + deltaR)
    {-# MINIMAL getRot, setRot #-}

-- | A class for types that have a velocity
--   that can be retrieved and set.
class HasVelocity v where
    getVel :: v -> Vec3 GLfloat
    setVel :: v -> Vec3 GLfloat -> v
    applyVel :: v -> Vec3 GLfloat -> v
    applyVel v deltaV =
        setVel v (getVel v + deltaV)
    {-# MINIMAL getVel, setVel #-}

instance HasPosition (Vec3 GLfloat) where
    getPos = id
    setPos _ = id

instance HasRotation (Vec3 GLfloat) where
    getRot = id
    setRot _ = id

instance HasVelocity (Vec3 GLfloat) where
    getVel = id
    setVel _ = id
