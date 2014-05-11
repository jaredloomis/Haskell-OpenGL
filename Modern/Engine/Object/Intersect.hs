{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverlappingInstances #-}
module Engine.Object.Intersect (
    Intersect(..), intersectsAny,
    getObjectAllIntersecters,
    getObjectIntersecter
) where

import Data.Maybe (isJust, fromJust)

import Engine.Core.Vec (Vec3(..))
import Engine.Model.AABB

-- | A type class for any two things
--   that can intersect.
class Intersect l r where
    intersecting :: l -> r -> Bool
    {-# MINIMAL intersecting #-}

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

instance (HasAABB a, HasAABB b) => Intersect a b where
    intersecting left right =
        let lwholeM = getWholeAABB left
            rwholeM = getWholeAABB right
        in if isJust lwholeM && isJust rwholeM
                then
                    let lwhole = fromJust lwholeM
                        rwhole = fromJust rwholeM
                    in intersecting lwhole rwhole &&
                        let lall = getAABBs left
                            rall = getAABBs right
                        in anyIntersect lall rall
                else
                    let lall = getAABBs left
                        rall = getAABBs right
                    in anyIntersect lall rall
      where
        anyIntersect :: Intersect a b => [a] -> [b] -> Bool
        anyIntersect (l:ls) (r:rs) =
            intersecting l r || anyIntersect ls rs
        anyIntersect _ _ = False

intersectsAny :: Intersect a b => a -> [b] -> Bool
intersectsAny needle (hay:haystack) =
    needle `intersecting` hay ||
        needle `intersectsAny` haystack
intersectsAny _ [] = False

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
