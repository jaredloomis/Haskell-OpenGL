module Engine.Core.Vec (
    Vec2(..), Vec3(..), Vec4(..), vec3ToVec4,
    normalizeVec3, scaleVec3, lengthVec3,
    crossVec3, vec4GetIndex, toArray3, toArray2,
    Vec(..)
) where

import Control.DeepSeq (NFData(..))

import Graphics.Rendering.OpenGL.Raw (GLfloat)

data Vec4 = Vec4
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat deriving (Show, Eq)
data Vec3 = Vec3
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat deriving (Show, Eq)
data Vec2 = Vec2
    {-# UNPACK #-} !GLfloat
    {-# UNPACK #-} !GLfloat deriving (Show, Eq)

class Vec a where
    vmap :: (GLfloat -> GLfloat) -> a -> a
    vindex :: a -> Int -> GLfloat

instance Num Vec4 where
    Vec4 x1 y1 z1 w1 + Vec4 x2 y2 z2 w2 =
        Vec4 (x1+x2) (y1+y2) (z1+z2) (w1+w2)
    Vec4 x1 y1 z1 w1 - Vec4 x2 y2 z2 w2 =
        Vec4 (x1-x2) (y1-y2) (z1-z2) (w1-w2)
    Vec4 x1 y1 z1 w1 * Vec4 x2 y2 z2 w2 =
        Vec4 (x1*x2) (y1*y2) (z1*z2) (w1*w2)
    abs = vmap abs
    signum = vmap signum
    fromInteger i =
        Vec4 (fromInteger i) (fromInteger i) (fromInteger i) (fromInteger i)
instance Vec Vec4 where
    vmap f (Vec4 x y z w) = Vec4 (f x) (f y) (f z) (f w)
    vindex (Vec4 x y z w) i =
        case i of
            0 -> x
            1 -> y
            2 -> z
            3 -> w
            _ -> error "Vec2.vindex - index out of range."

instance Num Vec3 where
    Vec3 x1 y1 z1 + Vec3 x2 y2 z2 = Vec3 (x1+x2) (y1+y2) (z1+z2)
    Vec3 x1 y1 z1 - Vec3 x2 y2 z2 = Vec3 (x1-x2) (y1-y2) (z1-z2)
    Vec3 x1 y1 z1 * Vec3 x2 y2 z2 = Vec3 (x1*x2) (y1*y2) (z1*z2)
    abs = vmap abs
    signum = vmap signum
    fromInteger i = Vec3 (fromInteger i) (fromInteger i) (fromInteger i)
instance Vec Vec3 where
    vmap f (Vec3 x y z) = Vec3 (f x) (f y) (f z)
    vindex (Vec3 x y z) i =
        case i of
            0 -> x
            1 -> y
            2 -> z
            _ -> error "Vec3.vindex - index out of range."

instance Num Vec2 where
    Vec2 x1 y1 + Vec2 x2 y2 = Vec2 (x1+x2) (y1+y2)
    Vec2 x1 y1 - Vec2 x2 y2 = Vec2 (x1-x2) (y1-y2)
    Vec2 x1 y1 * Vec2 x2 y2 = Vec2 (x1*x2) (y1*y2)
    abs = vmap abs
    signum = vmap signum
    fromInteger i = Vec2 (fromInteger i) (fromInteger i)
instance Vec Vec2 where
    vmap f (Vec2 x y) = Vec2 (f x) (f y)
    vindex (Vec2 x y) i =
        case i of
            0 -> x
            1 -> y
            _ -> error "Vec2.vindex - index out of range."

instance NFData Vec4 where
    rnf (Vec4 x y z w) = x `seq` y `seq` z `seq` w `seq` ()
    {-# INLINE rnf #-}
instance NFData Vec3 where
    rnf (Vec3 x y z) = x `seq` y `seq` z `seq` ()
    {-# INLINE rnf #-} 
instance NFData Vec2 where
    rnf (Vec2 x y) = x `seq` y `seq` ()
    {-# INLINE rnf #-}

vec3ToVec4 :: Vec3 -> GLfloat -> Vec4
vec3ToVec4 (Vec3 x y z) = Vec4 x y z
{-# INLINE vec3ToVec4 #-}

normalizeVec3 :: Vec3 -> Vec3
normalizeVec3 v =
    let Vec3 a b c = scaleVec3 (recip $ lengthVec3 v) v
    in Vec3 a b c

scaleVec3 :: GLfloat -> Vec3 -> Vec3
scaleVec3 s (Vec3 a b c) = Vec3 (s*a) (s*b) (s*c)
{-# INLINE scaleVec3 #-}

lengthVec3 :: Vec3 -> GLfloat
lengthVec3 (Vec3 a b c) = sqrt (a*a + b*b + c*c)

crossVec3 :: Vec3 -> Vec3 -> Vec3
crossVec3 (Vec3 u0 u1 u2) (Vec3 v0 v1 v2) = 
    Vec3 (u1*v2-u2*v1) (u2*v0-u0*v2) (u0*v1-u1*v0)
{-# INLINE crossVec3 #-}

vec4GetIndex :: Int -> Vec4 -> GLfloat
vec4GetIndex i (Vec4 x y z w)
    | i == 0 = x
    | i == 1 = y
    | i == 2 = z
    | i == 3 = w
vec4GetIndex _ _ =
    error $ "Vec.vec4GetIndex: Argument must be " ++
            "0, 1, 2, or 3."
{-# INLINE vec4GetIndex #-}

toArray3 :: Vec3 -> [GLfloat]
toArray3 (Vec3 x y z) = [x, y, z]
{-# INLINE toArray3 #-}

toArray2 :: Vec2 -> [GLfloat]
toArray2 (Vec2 x y) = [x, y]
{-# INLINE toArray2 #-}
