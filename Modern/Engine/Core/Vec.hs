module Engine.Core.Vec (
    Vec2(..), Vec3(..), Vec4(..), vec3ToVec4,
    normalizeVec3, scaleVec3, lengthVec3,
    crossVec3, vec4GetIndex, toArray3, toArray2
) where

import Graphics.Rendering.OpenGL.Raw (GLfloat)

data Vec4 a = Vec4 !a !a !a !a deriving (Show, Eq)
data Vec3 a = Vec3 !a !a !a deriving (Show, Eq)
data Vec2 a = Vec2 !a !a deriving (Show, Eq)

{-# INLINE vec3ToVec4 #-}
vec3ToVec4 :: Vec3 a -> a -> Vec4 a
vec3ToVec4 (Vec3 x y z) = Vec4 x y z

{-# SPECIALIZE normalizeVec3 :: Vec3 GLfloat -> Vec3 GLfloat #-}
normalizeVec3 :: (Floating a) => Vec3 a -> Vec3 a
normalizeVec3 v =
    let Vec3 a b c = scaleVec3 (recip $ lengthVec3 v) v
    in Vec3 a b c

{-# SPECIALIZE scaleVec3 :: GLfloat -> Vec3 GLfloat -> Vec3 GLfloat #-}
{-# INLINE scaleVec3 #-}
scaleVec3 :: (Num a) => a -> Vec3 a -> Vec3 a
scaleVec3 s (Vec3 a b c) = Vec3 (s*a) (s*b) (s*c)

{-# SPECIALIZE lengthVec3 :: Vec3 GLfloat -> GLfloat #-}
lengthVec3 :: (Floating a) => Vec3 a -> a
lengthVec3 (Vec3 a b c) = sqrt (a*a + b*b + c*c)

{-# SPECIALIZE crossVec3 :: Vec3 GLfloat -> Vec3 GLfloat -> Vec3 GLfloat  #-}
{-# INLINE crossVec3 #-}
crossVec3 :: (Num a) => Vec3 a -> Vec3 a -> Vec3 a
crossVec3 (Vec3 u0 u1 u2) (Vec3 v0 v1 v2) = 
    Vec3 (u1*v2-u2*v1) (u2*v0-u0*v2) (u0*v1-u1*v0)

{-# INLINE vec4GetIndex #-}
vec4GetIndex :: Int -> Vec4 a -> a
vec4GetIndex i (Vec4 x y z w)
    | i == 0 = x
    | i == 1 = y
    | i == 2 = z
    | i == 3 = w

instance Functor Vec4 where
    fmap f (Vec4 x y z w) = Vec4 (f x) (f y) (f z) (f w)

instance (Num a) => Num (Vec4 a) where
    Vec4 x1 y1 z1 w1 + Vec4 x2 y2 z2 w2 =
        Vec4 (x1+x2) (y1+y2) (z1+z2) (w1+w2)
    Vec4 x1 y1 z1 w1 - Vec4 x2 y2 z2 w2 =
        Vec4 (x1-x2) (y1-y2) (z1-z2) (w1-w2)
    Vec4 x1 y1 z1 w1 * Vec4 x2 y2 z2 w2 =
        Vec4 (x1*x2) (y1*y2) (z1*z2) (w1*w2)
    abs = fmap abs
    signum = fmap signum
    fromInteger i =
        Vec4 (fromInteger i) (fromInteger i) (fromInteger i) (fromInteger i)

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
