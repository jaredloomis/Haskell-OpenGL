{-# LANGUAGE RankNTypes #-}
module Engine.Matrix.Matrix2 where

import Engine.Core.Vec

type Mat4x4 a = Vec4 (Vec4 a)

mat4x4Identity :: Num a => Mat4x4 a
mat4x4Identity =
    Vec4
        (Vec4 1 0 0 0)
        (Vec4 0 1 0 0)
        (Vec4 0 0 1 0)
        (Vec4 0 0 0 1)

--mat4x4Translate :: Num a => Mat4x4 a -> Vec3 a -> Mat4x4 a
--mat4x4Translate left translation =

mat4x4Subtract :: Num a => Mat4x4 a -> Mat4x4 a -> Mat4x4 a
mat4x4Subtract left right =
    let nm00 = (left ^! Vec2 0 0) - (right ^! Vec2 0 0)
        nm01 = (left ^! Vec2 0 1) - (right ^! Vec2 0 1)
        nm02 = (left ^! Vec2 0 2) - (right ^! Vec2 0 2)
        nm03 = (left ^! Vec2 0 3) - (right ^! Vec2 0 3)
        nm10 = (left ^! Vec2 1 0) - (right ^! Vec2 1 0)
        nm11 = (left ^! Vec2 1 1) - (right ^! Vec2 1 1)
        nm12 = (left ^! Vec2 1 2) - (right ^! Vec2 1 2)
        nm13 = (left ^! Vec2 1 3) - (right ^! Vec2 1 3)
        nm20 = (left ^! Vec2 2 0) - (right ^! Vec2 2 0)
        nm21 = (left ^! Vec2 2 1) - (right ^! Vec2 2 1)
        nm22 = (left ^! Vec2 2 2) - (right ^! Vec2 2 2)
        nm23 = (left ^! Vec2 2 3) - (right ^! Vec2 2 3)
        nm30 = (left ^! Vec2 3 0) - (right ^! Vec2 3 0)
        nm31 = (left ^! Vec2 3 1) - (right ^! Vec2 3 1)
        nm32 = (left ^! Vec2 3 2) - (right ^! Vec2 3 2)
        nm33 = (left ^! Vec2 3 3) - (right ^! Vec2 3 3)
    in Vec4
        (Vec4 nm00 nm01 nm02 nm03)
        (Vec4 nm10 nm11 nm12 nm13)
        (Vec4 nm20 nm21 nm22 nm23)
        (Vec4 nm30 nm31 nm32 nm33)

mat4x4Multiply :: Num a => Mat4x4 a -> Mat4x4 a -> Mat4x4 a
mat4x4Multiply this right =
    let nm00 = (this ^! Vec2 0 0) * (right ^! Vec2 0 0) +
               (this ^! Vec2 1 0) * (right ^! Vec2 0 1) +
               (this ^! Vec2 2 0) * (right ^! Vec2 0 2) +
               (this ^! Vec2 3 0) * (right ^! Vec2 0 3)
        nm01 = (this ^! Vec2 0 1) * (right ^! Vec2 0 0) +
               (this ^! Vec2 1 1) * (right ^! Vec2 0 1) +
               (this ^! Vec2 2 1) * (right ^! Vec2 0 2) +
               (this ^! Vec2 3 1) * (right ^! Vec2 0 3)
        nm02 = (this ^! Vec2 0 2) * (right ^! Vec2 0 0) +
               (this ^! Vec2 1 2) * (right ^! Vec2 0 1) +
               (this ^! Vec2 2 2) * (right ^! Vec2 0 2) +
               (this ^! Vec2 3 2) * (right ^! Vec2 0 3)
        nm03 = (this ^! Vec2 0 3) * (right ^! Vec2 0 0) +
               (this ^! Vec2 1 3) * (right ^! Vec2 0 1) +
               (this ^! Vec2 2 3) * (right ^! Vec2 0 2) +
               (this ^! Vec2 3 3) * (right ^! Vec2 0 3)
        nm10 = (this ^! Vec2 0 0) * (right ^! Vec2 1 0) +
               (this ^! Vec2 1 0) * (right ^! Vec2 1 1) +
               (this ^! Vec2 2 0) * (right ^! Vec2 1 2) +
               (this ^! Vec2 3 0) * (right ^! Vec2 1 3)
        nm11 = (this ^! Vec2 0 1) * (right ^! Vec2 1 0) +
               (this ^! Vec2 1 1) * (right ^! Vec2 1 1) +
               (this ^! Vec2 2 1) * (right ^! Vec2 1 2) +
               (this ^! Vec2 3 1) * (right ^! Vec2 1 3)
        nm12 = (this ^! Vec2 0 2) * (right ^! Vec2 1 0) +
               (this ^! Vec2 1 2) * (right ^! Vec2 1 1) +
               (this ^! Vec2 2 2) * (right ^! Vec2 1 2) +
               (this ^! Vec2 3 2) * (right ^! Vec2 1 3)
        nm13 = (this ^! Vec2 0 3) * (right ^! Vec2 1 0) +
               (this ^! Vec2 1 3) * (right ^! Vec2 1 1) +
               (this ^! Vec2 2 3) * (right ^! Vec2 1 2) +
               (this ^! Vec2 3 3) * (right ^! Vec2 1 3)
        nm20 = (this ^! Vec2 0 0) * (right ^! Vec2 2 0) +
               (this ^! Vec2 1 0) * (right ^! Vec2 2 1) +
               (this ^! Vec2 2 0) * (right ^! Vec2 2 2) +
               (this ^! Vec2 3 0) * (right ^! Vec2 2 3)
        nm21 = (this ^! Vec2 0 1) * (right ^! Vec2 2 0) +
               (this ^! Vec2 1 1) * (right ^! Vec2 2 1) +
               (this ^! Vec2 2 1) * (right ^! Vec2 2 2) +
               (this ^! Vec2 3 1) * (right ^! Vec2 2 3)
        nm22 = (this ^! Vec2 0 2) * (right ^! Vec2 2 0) +
               (this ^! Vec2 1 2) * (right ^! Vec2 2 1) +
               (this ^! Vec2 2 2) * (right ^! Vec2 2 2) +
               (this ^! Vec2 3 2) * (right ^! Vec2 2 3)
        nm23 = (this ^! Vec2 0 3) * (right ^! Vec2 2 0) +
               (this ^! Vec2 1 3) * (right ^! Vec2 2 1) +
               (this ^! Vec2 2 3) * (right ^! Vec2 2 2) +
               (this ^! Vec2 3 3) * (right ^! Vec2 2 3)
        nm30 = (this ^! Vec2 0 0) * (right ^! Vec2 3 0) +
               (this ^! Vec2 1 0) * (right ^! Vec2 3 1) +
               (this ^! Vec2 2 0) * (right ^! Vec2 3 2) +
               (this ^! Vec2 3 0) * (right ^! Vec2 3 3)
        nm31 = (this ^! Vec2 0 1) * (right ^! Vec2 3 0) +
               (this ^! Vec2 1 1) * (right ^! Vec2 3 1) +
               (this ^! Vec2 2 1) * (right ^! Vec2 3 2) +
               (this ^! Vec2 3 1) * (right ^! Vec2 3 3)
        nm32 = (this ^! Vec2 0 2) * (right ^! Vec2 3 0) +
               (this ^! Vec2 1 2) * (right ^! Vec2 3 1) +
               (this ^! Vec2 2 2) * (right ^! Vec2 3 2) +
               (this ^! Vec2 3 2) * (right ^! Vec2 3 3)
        nm33 = (this ^! Vec2 0 3) * (right ^! Vec2 3 0) +
               (this ^! Vec2 1 3) * (right ^! Vec2 3 1) +
               (this ^! Vec2 2 3) * (right ^! Vec2 3 2) +
               (this ^! Vec2 3 3) * (right ^! Vec2 3 3)
    in Vec4
            (Vec4 nm00 nm01 nm02 nm03)
            (Vec4 nm10 nm11 nm12 nm13)
            (Vec4 nm20 nm21 nm22 nm23)
            (Vec4 nm30 nm31 nm32 nm33)

infixl 3 ^!

(^!) :: Mat4x4 a -> Vec2 Int -> a
(^!) mat vec = mat4x4GetIndex vec mat

mat4x4GetIndex :: Vec2 Int -> Mat4x4 a -> a
mat4x4GetIndex (Vec2 x y) mat =
    vec4GetIndex y $ mat4x4GetColumn x mat

mat4x4GetColumn :: Int -> Mat4x4 a -> Vec4 a
mat4x4GetColumn i (Vec4 x y z w)
    | i == 0 = x
    | i == 1 = y
    | i == 2 = z
    | i == 3 = w
