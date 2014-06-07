{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.Octree (
    Octree(..),
    maxCapacity, createOctree, createOctreeFromAABBs,
    findNearby, octInsert, subdivide, findNearby'
) where

import Data.List (foldl')
import qualified Data.DList as D

import Engine.Model.AABB
    (AABB(..), HasAABB(..),
     objectsIntersectInclusive)
import Engine.Object.Intersect (Intersect(..))
import Engine.Core.HasPosition (HasPosition(..))
import Engine.Core.Vec (Vec3(..), vmap)

-- | A pure Octree used to sort objects for
--   collision detection.
data Octree a =
    ONode AABB [Octree a]
  | OLeaf AABB [a] Int
    deriving (Eq)

instance Show a => Show (Octree a) where
    show (ONode aabb children) =
        "Node: " ++ show aabb ++ "\n{\n" ++
        concatMap ((++"\n") . show) children ++ "}"
    show (OLeaf aabb contents _) =
        "Leaf: " ++ show aabb ++ ", " ++ show contents

-- UNSAFE! Does not insert items in the correct
--         place after updating.
instance Functor Octree where
    fmap f (ONode aabb children) =
        ONode aabb (map (fmap f) children)
    fmap f (OLeaf aabb contents len) =
        OLeaf aabb (map f contents) len

maxCapacity :: Int
maxCapacity = 64
{-# INLINE maxCapacity #-}

createOctree :: AABB -> Octree a
createOctree aabb = OLeaf aabb [] 0
{-# INLINE createOctree #-}

createOctreeFromAABBs :: HasAABB a => AABB -> [a] -> Octree AABB
createOctreeFromAABBs aabb =
    foldl' ((. transformedAABBs) . foldl' octInsert) (OLeaf aabb [] 0)

findNearby :: HasAABB a => Octree a -> a -> [a]
findNearby (ONode _ children) val =
    let insertIntos = filter (checkOctant val) children
    in if null insertIntos
            then []
        else concatMap (`findNearby` val) insertIntos
findNearby (OLeaf _ contents _) _ = contents

findNearby' :: (Intersect a AABB, Intersect b AABB) =>
                Octree a -> b -> [a]
findNearby' (ONode _ children) val =
    let insertIntos = filter (checkOctant' val) children
    in if null insertIntos
            then []
        else concatMap (`findNearby'` val) insertIntos
findNearby' (OLeaf _ contents _) _ = contents

octInsert :: (HasAABB a, Eq a) => Octree a -> a -> Octree a
octInsert (ONode aabb children) val =
    let (insertIntos, others) = dpartition (checkOctant val) children
    in  -- I would do this, but doing a comparison with
        -- a DList forces it to turn into a list, which
        -- causes this function to be slower than the
        -- list-only version.
        -- > if insertIntos == D.empty
        -- >    then error "Collision.octInsert..."
        -- > else ...
        ONode aabb . D.toList . (`D.append` others) .
             D.map (`octInsert` val) $ insertIntos
{-
octInsert (ONode aabb children) val =
    let (insertIntos, others) = partition (checkOctant val) children
    in if null insertIntos
            then error $ "Error in Collision.octInsert: " ++
                  "value could not be inserted into tree."
        else ONode aabb . (++ others) .
             map (`octInsert` val) $ insertIntos
-}

octInsert leaf@(OLeaf aabb contents size) val =
    if size+1 <= maxCapacity
        then OLeaf aabb (val : contents) (size+1)
    else octInsert (subdivide leaf) val

dpartition :: (a -> Bool) -> [a] -> (D.DList a, D.DList a)
dpartition p xs = foldr (dselect p) (D.empty, D.empty) xs
{-# INLINE dpartition #-}

dselect :: (a -> Bool) -> a -> (D.DList a, D.DList a) -> (D.DList a, D.DList a)
dselect p x (ts, fs) | p x = (x `D.cons` ts,fs)
                     | otherwise = (ts, x `D.cons` fs)

subdivide :: (HasAABB a, Eq a) => Octree a -> Octree a
subdivide (OLeaf wholeAABB@(AABB minVec maxVec) contents _) =
    let halfVec@(Vec3 halfX halfY halfZ) = vmap (/2) (abs $ maxVec - minVec)
        newAABBTemplate = AABB minVec $ minVec + halfVec 

        northWestA = newAABBTemplate
        northWestB = movePos northWestA (Vec3 0 0 halfZ)
        northWestALeaf = OLeaf northWestA [] 0
        northWestBLeaf = OLeaf northWestB [] 0
        
        northEastA = movePos newAABBTemplate (Vec3 halfX 0 0)
        northEastB = movePos northEastA (Vec3 0 0 halfZ)
        northEastALeaf = OLeaf northEastA [] 0
        northEastBLeaf = OLeaf northEastB [] 0

        southWestA = movePos newAABBTemplate (Vec3 0 halfY 0)
        southWestB = movePos southWestA (Vec3 0 0 halfZ)
        southWestALeaf = OLeaf southWestA [] 0
        southWestBLeaf = OLeaf southWestB [] 0

        southEastA = movePos newAABBTemplate (Vec3 halfX halfY 0)
        southEastB = movePos southEastA (Vec3 0 0 halfZ)
        southEastALeaf = OLeaf southEastA [] 0
        southEastBLeaf = OLeaf southEastB [] 0
 
        newNode = ONode wholeAABB [northWestALeaf, northWestBLeaf,
                                   northEastALeaf, northEastBLeaf,
                                   southWestALeaf, southWestBLeaf,
                                   southEastALeaf, southEastBLeaf]
    in foldl' octInsert newNode contents
subdivide _ = error "Collision.subdivide: cannot subdivide a ONode."

checkOctant :: HasAABB a => a -> Octree a -> Bool
checkOctant val (ONode aabb _) =
    objectsIntersectInclusive val aabb
checkOctant val (OLeaf aabb _ _) =
    objectsIntersectInclusive val aabb
{-# INLINE checkOctant #-}

checkOctant' :: (Intersect a AABB, Intersect b AABB) =>
                 a -> Octree b -> Bool
checkOctant' val (ONode aabb _) =
    intersecting val aabb
checkOctant' val (OLeaf aabb _ _) =
    intersecting val aabb
{-# INLINE checkOctant' #-}
