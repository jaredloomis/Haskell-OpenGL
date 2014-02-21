module Engine.Core.Util where

{-# INLINE toRadians #-}
toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

{-# INLINE sinDeg #-}
sinDeg :: Float -> Float
sinDeg = sin . toRadians
{-# INLINE cosDeg #-}
cosDeg :: Float -> Float
cosDeg = cos . toRadians
