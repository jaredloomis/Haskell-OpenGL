{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Object.Intersect (
    Intersect(..), intersectsAny
) where

-- | A type class for any two things
--   that can intersect.
class Intersect l r where
    intersecting :: l -> r -> Bool
    {-# MINIMAL intersecting #-}

intersectsAny :: Intersect a b => a -> [b] -> Bool
intersectsAny needle (hay:haystack) =
    needle `intersecting` hay ||
        needle `intersectsAny` haystack
intersectsAny _ [] = False

{-
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
-}
