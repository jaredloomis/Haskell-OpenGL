{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Model.AABB (
    AABB(..), HasAABB(..), anyIntersectGet,
    aabbFromPoints, aabbByFace, intersecting,
    getObjectIntersecter,
    getObjectAllIntersecters,
    objectsIntersectInclusive,
    intersectingInclusive,
    anyIntersectInclusive
) where

import Data.Maybe (isJust, fromJust)
import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Core.Vec (Vec3(..))
import Engine.Core.HasPosition (HasPosition(..))
import Engine.Object.Intersect (Intersect(..))

-- | AABB (min corner) (max corner)
data AABB = AABB Vec3 Vec3 deriving (Show, Eq)

-- | A class for types that have an
--   Axis-Aligned Bounding Box (AABB). Type must
--   also have a position for this to make sense.
class HasPosition a => HasAABB a where
    getAABBs :: a -> [AABB]
    transformedAABBs :: a -> [AABB]
    getWholeAABB :: a -> Maybe AABB
    transformedWholeAABB :: a -> Maybe AABB
    {-# MINIMAL getAABBs, transformedAABBs,
        getWholeAABB, transformedWholeAABB #-}

instance HasPosition AABB where
    getPos (AABB minV _) = minV
    setPos (AABB minV maxV) pos =
        AABB pos ((maxV - minV) + pos)

instance HasAABB AABB where
    getWholeAABB (AABB low high) = Just (AABB 0 (high - low))
    getAABBs (AABB low high) = [AABB 0 (high - low)]
    transformedAABBs aabb = [aabb]
    transformedWholeAABB = Just

instance Intersect AABB AABB where
    intersecting
        (AABB (Vec3 min1x min1y min1z) (Vec3 max1x max1y max1z))
        (AABB (Vec3 min2x min2y min2z) (Vec3 max2x max2y max2z)) =
            max1x > min2x &&
            min1x < max2x &&
            max1y > min2y &&
            min1y < max2y &&
            max1z > min2z &&
            min1z < max2z
    {-# INLINE intersecting #-}


getObjectAllIntersecters :: (HasAABB a, HasAABB b) =>
                            a -> [b] -> [AABB]
getObjectAllIntersecters collider (collidee:xs) =
    let intersecter = getIntersecter collider collidee
    in if isJust intersecter
        then fromJust intersecter : getObjectAllIntersecters collider xs
        else getObjectAllIntersecters collider xs
getObjectAllIntersecters _ [] = []

-- | Check if the needle intersects with any in the haystack,
--   if it does, the intersected AABB is returned.
getObjectIntersecter :: (HasAABB a, HasAABB b) => a -> [b] -> Maybe AABB
getObjectIntersecter collider (collidee:xs) =
    let intersecter = getIntersecter collider collidee
    in if isJust intersecter
        then intersecter
    else getObjectIntersecter collider xs
getObjectIntersecter _ [] = Nothing

-- | Test if two objects intersect, yeilding the
--   offending AABB if they do.
getIntersecter :: (HasAABB a, HasAABB b) => a -> b -> Maybe AABB
getIntersecter l r
    | isJust (getWholeAABB l) &&
      isJust (getWholeAABB r) =
        let Just wholeabl = transformedWholeAABB l
            Just wholeabr = transformedWholeAABB r
        in
            if intersecting wholeabl wholeabr
                then if null (getAABBs l) && (not . null) (getAABBs r)
                    then Just wholeabr
                else
                    let newl = transformedAABBs l
                        newr = transformedAABBs r
                    in anyIntersectGet (head newl) newr
            else Nothing
    | otherwise =
        let newl = transformedAABBs l
            newr = transformedAABBs r
        in anyIntersectGet (head newl) newr

anyIntersectGet :: AABB -> [AABB] -> Maybe AABB
anyIntersectGet l (r:rs) =
    if intersecting l r
        then Just r
    else anyIntersectGet l rs
anyIntersectGet _ _ = Nothing

-- | Calculate an AABB for all the points.
aabbFromPoints :: [GLfloat] -> AABB
aabbFromPoints points@(x:y:z:_) =
    aabbFromPointsAccum points (Vec3 x y z) (Vec3 x y z)
aabbFromPoints _ =
    error "AABB.aabbFromPoints: given list is too short."

-- | Called by aabbFromPoints.
aabbFromPointsAccum :: [GLfloat] -> Vec3 -> Vec3 -> AABB
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

{-
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
-}

min3 :: Ord a => a -> a -> a -> a
min3 a b c = min c $ min a b
{-# INLINE min3 #-}

max3 :: Ord a => a -> a -> a -> a
max3 a b c = max c $ max a b
{-# INLINE max3 #-}

-- = Inclusive "AABB" collision detection.

-- | Test if two objects intersect.
objectsIntersectInclusive :: (HasAABB a, HasAABB b) => a -> b -> Bool
objectsIntersectInclusive l r
    | isJust (getWholeAABB l) &&
      isJust (getWholeAABB r) =
        let Just wholeabl = transformedWholeAABB l
            Just wholeabr = transformedWholeAABB r
        in intersectingInclusive wholeabl wholeabr &&
            (null (getAABBs l) && (not . null) (getAABBs r) ||
                let newl = transformedAABBs l
                    newr = transformedAABBs r
                in anyIntersectInclusive (head newl) newr)
    | otherwise =
        null (getAABBs l) && (not . null) (getAABBs r) ||
            let newl = transformedAABBs l
                newr = transformedAABBs r
            in anyIntersectInclusive (head newl) newr

intersectingInclusive :: AABB -> AABB -> Bool
intersectingInclusive (AABB (Vec3 min1x min1y min1z) (Vec3 max1x max1y max1z))
             (AABB (Vec3 min2x min2y min2z) (Vec3 max2x max2y max2z)) =
    max1x >= min2x &&
    min1x <= max2x &&
    max1y >= min2y &&
    min1y <= max2y &&
    max1z >= min2z &&
    min1z <= max2z
{-# INLINE intersectingInclusive #-}

anyIntersectInclusive :: AABB -> [AABB] -> Bool
anyIntersectInclusive l (r:rs) =
    intersectingInclusive l r || anyIntersectInclusive l rs
anyIntersectInclusive _ _ = False
