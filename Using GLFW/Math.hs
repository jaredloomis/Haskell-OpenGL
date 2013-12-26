module Math where

import Types

toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

sinDeg :: Float -> Float
sinDeg = sin . toRadians
cosDeg :: Float -> Float
cosDeg = cos . toRadians

add3 :: Num t => (t, t, t) -> (t, t, t) -> (t, t, t)
add3 (x, y, z) (x2, y2, z2) = (x+x2, y+y2, z+z2)

vec3ToFloats :: Vec3 -> (Float, Float, Float)
vec3ToFloats (x, y, z) = (realToFrac x, realToFrac y, realToFrac z)
