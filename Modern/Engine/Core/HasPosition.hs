module Engine.Core.HasPosition where

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
