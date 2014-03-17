{-# OPTIONS_GHC -fno-warn-unused-binds #-}
module Engine.Model.AABB (
    AABB(..), anyIntersect, anyIntersectGet,
    aabbFromPoints, aabbByFace, intersecting,
    createAABB
) where

import Graphics.Rendering.OpenGL.Raw

import Engine.Core.Vec
import Engine.Core.Types

-- TODO TODO TODO TODO (or a BVH)
data Octree a = Octree {
    octCorners :: (Vec3 GLfloat, Vec3 GLfloat),
    octCenter :: Vec3 GLfloat,
    octValues :: [a],
    octNumValues :: Int,
    octDepth :: Int,
    octChildren :: [Octree a]
}

-- | Takes a Vec3 containing the length, height, and width
--   and returns a Vec3 with those dimensions.
createAABB :: Vec3 GLfloat -> AABB
createAABB = AABB (Vec3 0 0 0)
{-# INLINE createAABB #-}

-- | Creates an aabb for every n faces.
aabbsFromPointsGrouped :: [GLfloat] -> Int -> [AABB]
aabbsFromPointsGrouped points groupSize
    | length points >= groupSize =
        let (cur, rest) = splitAt (groupSize*3) points
            xs = getXs cur
            ys = getYs cur
            zs = getZs cur
            maxX = minimum xs
            maxY = minimum ys
            maxZ = minimum zs
            minX = minimum xs
            minY = minimum ys
            minZ = minimum zs
           
        in AABB (Vec3 minX minY minZ) (Vec3 maxX maxY maxZ) :
                aabbsFromPointsGrouped rest groupSize
    | otherwise = []

-- | Calculate an AABB for all the points.
aabbFromPoints :: [GLfloat] -> AABB
aabbFromPoints points@(x:y:z:_) =
    aabbFromPointsAccum points (Vec3 x y z) (Vec3 x y z)
aabbFromPoints _ =
    error $ "AABB.aabbFromPoints: given list is too short or " ++
            "number of elements is not divisible by 3."

-- | Called by aabbFromPoints.
aabbFromPointsAccum :: [GLfloat] -> Vec3 GLfloat -> Vec3 GLfloat -> AABB
aabbFromPointsAccum (x:y:z:rest) (Vec3 miX miY miZ) (Vec3 maX maY maZ) =
    aabbFromPointsAccum rest
        (Vec3 (min miX x) (min miY y) (min miZ z))
        (Vec3 (max maX x) (max maY y) (max maZ z))
aabbFromPointsAccum _ abMin abMax = AABB abMin abMax

-- | Calculate an AABB for each triangulated
--   face.
aabbByFace :: [GLfloat] -> [AABB]
aabbByFace (x1:y1:z1:x2:y2:z2:x3:y3:z3:rest) =
    let minVec = Vec3 (min3 x1 x2 x3) (min3 y1 y2 y3) (min3 z1 z2 z3)
        maxVec = Vec3 (max3 x1 x2 x3) (max3 y1 y2 y3) (max3 z1 z2 z3)
    in AABB minVec maxVec : aabbByFace rest
aabbByFace [] = []
aabbByFace _ =
    error "AABB.aabbByFace: given list is not formatted properly."

-- | Move an AABB by adding given Vec3 to the min
--   and max points.
moveAABB :: AABB -> Vec3 GLfloat -> AABB
moveAABB (AABB origMin origMax) deltaMovement =
    AABB (origMin + deltaMovement) (origMax + deltaMovement)
{-# INLINE moveAABB #-}

-- | Calculate the width, height and length of an AABB.
aabbDimensions :: AABB -> Vec3 GLfloat
aabbDimensions (AABB left right) = right - left
{-# INLINE aabbDimensions #-}

-- | Check if two Maybe AABB's are intersecting.
--   if either are Nothing, it is False.
mIntersecting :: Maybe AABB -> Maybe AABB -> Bool
mIntersecting (Just left) (Just right) = intersecting left right
mIntersecting Nothing Nothing = False
mIntersecting Nothing _ = False
mIntersecting _ Nothing = False

-- | Check if the given AABB is intersecting with
--   any of the others.
anyIntersect :: AABB -> [AABB] -> Bool
anyIntersect l (r:rs) =
    intersecting l r || anyIntersect l rs
anyIntersect _ _ = False

anyIntersectGet :: AABB -> [AABB] -> Maybe AABB
anyIntersectGet l (r:rs) =
    if intersecting l r
        then Just r
    else anyIntersectGet l rs
anyIntersectGet _ _ = Nothing

-- | Check if 2 AABB's are intersecting.
intersecting :: AABB -> AABB -> Bool
intersecting (AABB (Vec3 min1x min1y min1z) (Vec3 max1x max1y max1z))
             (AABB (Vec3 min2x min2y min2z) (Vec3 max2x max2y max2z)) =
    max1x > min2x &&
    min1x < max2x &&
    max1y > min2y &&
    min1y < max2y &&
    max1z > min2z &&
    min1z < max2z
{-# INLINE intersecting #-}

getXs :: [a] -> [a]
getXs (x:_:_:rest) =
    x : getXs rest
getXs _ = []

getYs :: [a] -> [a]
getYs (_:y:_:rest) =
    y : getYs rest
getYs _ = []

getZs :: [a] -> [a]
getZs (_:_:z:rest) =
    z : getZs rest
getZs _ = []

min3 :: Ord a => a -> a -> a -> a
min3 a b c = min c $ min a b
{-# INLINE min3 #-}

max3 :: Ord a => a -> a -> a -> a
max3 a b c = max c $ max a b
{-# INLINE max3 #-}
