module Engine.Core.Vec where

-- TODO: dot product, cross product, etc.

data Vec3 a = Vec3 !a !a !a deriving (Show, Eq)
data Vec2 a = Vec2 !a !a deriving (Show, Eq)

instance Functor Vec3 where
    fmap f (Vec3 x y z) = Vec3 (f x) (f y) (f z)

instance (Num a) => Num (Vec3 a) where
    Vec3 x1 y1 z1 + Vec3 x2 y2 z2 = Vec3 (x1+x2) (y1+y2) (z1+z2)
    Vec3 x1 y1 z1 - Vec3 x2 y2 z2 = Vec3 (x1-x2) (y1-y2) (z1-z2)
    Vec3 x1 y1 z1 * Vec3 x2 y2 z2 = Vec3 (x1*x2) (y1*y2) (z1*z2)
    abs (Vec3 x1 y1 z1) = Vec3 (abs x1) (abs y1) (abs z1)
    signum = fmap signum
    fromInteger i = Vec3 (fromInteger i) (fromInteger i) (fromInteger i)

instance Functor Vec2 where
    fmap f (Vec2 x y) = Vec2 (f x) (f y)

instance (Num a) => Num (Vec2 a) where
    Vec2 x1 y1 + Vec2 x2 y2 = Vec2 (x1+x2) (y1+y2)
    Vec2 x1 y1 - Vec2 x2 y2 = Vec2 (x1-x2) (y1-y2)
    Vec2 x1 y1 * Vec2 x2 y2 = Vec2 (x1*x2) (y1*y2)
    abs (Vec2 x1 y1) = Vec2 (abs x1) (abs y1)
    signum = fmap signum
    fromInteger i = Vec2 (fromInteger i) (fromInteger i)

{-# INLINE toArray3 #-}
toArray3 :: Vec3 a -> [a]
toArray3 (Vec3 x y z) = [x, y, z]

{-# INLINE toArray2 #-}
toArray2 :: Vec2 a -> [a]
toArray2 (Vec2 x y) = [x, y]
