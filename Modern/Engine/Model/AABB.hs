module Engine.Model.AABB where

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Vec

-- | AABB (min corner) (max corner)
data AABB = AABB (Vec3 GLfloat) (Vec3 GLfloat) deriving (Show)

-- | Takes a Vec3 containing the length, height, and width
--   and returns a Vec3 with those dimensions.
createAABB :: Vec3 GLfloat -> AABB
createAABB = AABB (Vec3 0 0 0)

aabbFromPoints :: [GLfloat] -> AABB
aabbFromPoints points@(x:y:z:_) =
    aabbFromPointsAccum points (Vec3 x y z) (Vec3 x y z)

aabbFromPointsAccum :: [GLfloat] -> Vec3 GLfloat -> Vec3 GLfloat -> AABB
aabbFromPointsAccum (x:y:z:rest) (Vec3 miX miY miZ) (Vec3 maX maY maZ) =
    aabbFromPointsAccum rest
        (Vec3 (min miX x) (min miY y) (min miZ z))
        (Vec3 (max maX x) (max maY y) (max maZ z))
aabbFromPointsAccum _ abMin abMax = AABB abMin abMax

aabbByFace :: [GLfloat] -> [AABB]
aabbByFace (x1:y1:z1:x2:y2:z2:x3:y3:z3:rest) =
    let minVec = Vec3 (min3 x1 x2 x3) (min3 y1 y2 y3) (min3 z1 z2 z3)
        maxVec = Vec3 (max3 x1 x2 x3) (max3 y1 y2 y3) (max3 z1 z2 z3)
    in AABB minVec maxVec : aabbByFace rest
aabbByFace [] = []

{-# INLINE min3 #-}
min3 :: Ord a => a -> a -> a -> a
min3 a b c = min c $ min a b

{-# INLINE max3 #-}
max3 :: Ord a => a -> a -> a -> a
max3 a b c = max c $ max a b

moveAABB :: AABB -> Vec3 GLfloat -> AABB
moveAABB (AABB origMin origMax) deltaMovement =
    AABB (origMin + deltaMovement) (origMax + deltaMovement)

aabbDimensions :: AABB -> Vec3 GLfloat
aabbDimensions (AABB left right) = right - left

mIntersecting :: Maybe AABB -> Maybe AABB -> Bool
mIntersecting (Just left) (Just right) = intersecting left right
mIntersecting Nothing Nothing = False
mIntersecting Nothing _ = False
mIntersecting _ Nothing = False

anyIntersect :: AABB -> [AABB] -> Bool
anyIntersect l (r:rs) =
    intersecting l r || anyIntersect l rs
anyIntersect _ _ = False

{-# INLINE intersecting #-}
intersecting :: AABB -> AABB -> Bool
intersecting (AABB (Vec3 min1x min1y min1z) (Vec3 max1x max1y max1z))
             (AABB (Vec3 min2x min2y min2z) (Vec3 max2x max2y max2z)) =
    max1x > min2x &&
    min1x < max2x &&
    max1y > min2y &&
    min1y < max2y &&
    max1z > min2z &&
    min1z < max2z
