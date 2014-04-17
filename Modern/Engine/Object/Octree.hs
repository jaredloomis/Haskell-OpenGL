module Engine.Object.Octree (
    maxCapacity, createOctree, createOctreeFromAABBs,
    findNearby, octInsert, subdivide
) where

import System.IO.Unsafe (unsafePerformIO)

import Engine.Model.AABB
    (calculateNewAABBs, objectsIntersect)
import Engine.Core.Types
    (HasAABB(..), AABB(..), Octree(..),
     HasPosition(..))
import Engine.Core.Vec (Vec3(..))

maxCapacity :: Int
maxCapacity = 64
{-# INLINE maxCapacity #-}

createOctree :: HasAABB a => AABB -> Octree a
createOctree aabb = OLeaf aabb [] 0
{-# INLINE createOctree #-}

createOctreeFromAABBs :: HasAABB a => AABB -> [a] -> Octree AABB
createOctreeFromAABBs aabb =
    foldl ((. calculateNewAABBs) . foldl octInsert) (OLeaf aabb [] 0)
-- Pointfree form of:
--foldl (\a b -> foldl octInsert a (calculateNewAABBs b)) (OLeaf aabb [] 0)

output :: String -> a -> a
output msg = seq (unsafePerformIO $ putStrLn msg)
{-# INLINE output #-}

findNearby :: HasAABB a => Octree a -> a -> [a]
findNearby (ONode _ children) val =
    let insertIntos = filter (checkOctant val) children
    in if null insertIntos
            then []
        else concatMap (`findNearby` val) insertIntos
findNearby (OLeaf _ contents _) _ = contents

octInsert :: (HasAABB a, Show a) => Octree a -> a -> Octree a
octInsert tree@(ONode aabb children) val =
    let (insertIntos, others) = filterPartition (checkOctant val) children
    in if null insertIntos
            then output
                ("Error in Collision.octInsert:" ++
                 " value \"" ++ show val ++
                 "\"could not be inserted into tree. Ignoring.") tree
        else ONode aabb $ map (`octInsert` val) insertIntos ++ others
octInsert leaf@(OLeaf aabb contents size) val =
    if size+1 <= maxCapacity
        then OLeaf aabb (val : contents) (size+1)
    else octInsert (subdivide leaf) val

subdivide :: (HasAABB a, Show a) => Octree a -> Octree a
subdivide (OLeaf wholeAABB@(AABB minVec maxVec) contents _) =
    let halfVec@(Vec3 halfX halfY halfZ) = fmap (/2) (abs $ maxVec - minVec)
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
    in foldl octInsert newNode contents
subdivide _ = error "Collision.subdivide: cannot subdivide a ONode."

filterPartition :: (a -> Bool) -> [a] -> ([a], [a])
filterPartition f (x:xs)
    | f x = consTuple (Just x, Nothing) $ filterPartition f xs
    | otherwise = consTuple (Nothing, Just x) $ filterPartition f xs
filterPartition _ [] = ([], [])

consTuple :: (Maybe a, Maybe a) -> ([a], [a]) -> ([a], [a])
consTuple (Just x, Nothing) (xs, ys) = (x:xs, ys)
consTuple (Nothing, Just y) (xs, ys) = (xs, y:ys)
consTuple _ _ =
    error "Octree.consTuple: invalid arguments."

checkOctant :: HasAABB a => a -> Octree a -> Bool
checkOctant val (ONode aabb _) =
    objectsIntersect val aabb
checkOctant val (OLeaf aabb _ _) =
    objectsIntersect val aabb
{-# INLINE checkOctant #-}
