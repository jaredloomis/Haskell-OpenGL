{-# LANGUAGE FlexibleContexts #-}
module Engine.Object.Octree (
    Octree(..),
    maxCapacity, createOctree, createOctreeFromAABBs,
    findNearby, octInsert, subdivide, findNearby'
) where

import Data.List (foldl')

--import qualified Data.Vector.Storable.Mutable as MV
--import qualified Data.Vector.Storable as V

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

{-
data MOctree a =
    MNode AABB (MV.IOVector (MOctree a))
  | PNode AABB (V.Vector (MOctree a))
  | MLeaf AABB (MV.IOVector a) Int
  | PLeaf AABB (V.Vector a) Int
-}

maxCapacity :: Int
maxCapacity = 64
{-# INLINE maxCapacity #-}

createOctree :: AABB -> Octree a
createOctree aabb = OLeaf aabb [] 0
{-# INLINE createOctree #-}

createOctreeFromAABBs :: HasAABB a => AABB -> [a] -> Octree AABB
createOctreeFromAABBs aabb =
    -- foldl is used intentionally instead of
    -- foldl' to keep it lazy.
    foldl ((. transformedAABBs) . foldl octInsert) (OLeaf aabb [] 0)

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

octInsert :: HasAABB a => Octree a -> a -> Octree a
octInsert (ONode aabb children) val =
    let (insertIntos, others) = filterPartition (checkOctant val) children
    in if null insertIntos
            then error $ "Error in Collision.octInsert" ++
                  "value could not be inserted into tree."
        else ONode aabb $ map (`octInsert` val) insertIntos ++ others
octInsert leaf@(OLeaf aabb contents size) val =
    if size+1 <= maxCapacity
        then OLeaf aabb (val : contents) (size+1)
    else octInsert (subdivide leaf) val

subdivide :: HasAABB a => Octree a -> Octree a
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

filterPartition :: (a -> Bool) -> [a] -> ([a], [a])
filterPartition f (x:xs)
    | f x = (Just x, Nothing) `consTuple` filterPartition f xs
    | otherwise = (Nothing, Just x) `consTuple` filterPartition f xs
filterPartition _ [] = ([], [])

consTuple :: (Maybe a, Maybe a) -> ([a], [a]) -> ([a], [a])
consTuple (Just x, Nothing) (xs, ys) = (x:xs, ys)
consTuple (Nothing, Just y) (xs, ys) = (xs, y:ys)
consTuple _ _ =
    error "Octree.consTuple: invalid arguments."
{-# INLINE consTuple #-}

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
