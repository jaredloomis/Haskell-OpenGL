module Engine.Core.HasPosition (
    HasPosition(..),
    HasRotation(..),
    HasVelocity(..)
) where

import Engine.Core.Vec (Vec3)

-- | A class for types that have a position
--   that can be retrieved and set.
class HasPosition p where
    getPos :: p -> Vec3
    setPos :: p -> Vec3 -> p
    movePos :: p -> Vec3 -> p
    movePos hp movement =
        setPos hp (getPos hp + movement)
    {-# MINIMAL getPos, setPos #-}

-- | A class for types that have a rotation
--   that can be retrieved and set.
class HasRotation r where
    getRot :: r -> Vec3
    setRot :: r -> Vec3 -> r
    rotate :: r -> Vec3 -> r
    rotate r deltaR =
        setRot r (getRot r + deltaR)
    {-# MINIMAL getRot, setRot #-}

class HasVelocity v where
    getVel :: v -> Vec3
    setVel :: v -> Vec3 -> v
    applyVel :: v -> Vec3 -> v
    applyVel v deltaV =
        setVel v (getVel v + deltaV)
    {-# MINIMAL getVel, setVel #-}

instance HasPosition Vec3 where
    getPos = id
    setPos _ = id

instance HasRotation Vec3 where
    getRot = id
    setRot _ = id

instance HasVelocity Vec3 where
    getVel = id
    setVel _ = id
