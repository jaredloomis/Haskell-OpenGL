{-# LANGUAGE GADTs #-}
module Engine.Object.Collision where

import Engine.Model.AABB
import Engine.Core.Types
import Engine.Core.Vec

data Octree a where
    ONode :: HasAABB a => AABB -> [Octree a] -> Octree a
    OLeaf :: HasAABB a => AABB -> [a] -> Int -> Octree a

instance Show a => Show (Octree a) where
    show (ONode aabb children) =
        "Node: " ++ show aabb ++ "\n{\n" ++
        concat (map ((++"\n") . show) children) ++ "}"
    show (OLeaf aabb contents _) =
        "Leaf: " ++ show aabb ++ ", " ++ show contents

--

maxCapacity :: Int
maxCapacity = 4

instance HasPosition Int where
    getPos _ = 0
    setPos _ (Vec3 x _ _) = 0

instance HasAABB Int where
    getAABBs x = [AABB (fromIntegral x) (fromIntegral x)]
    getWholeAABB x = Just $ AABB (fromIntegral x) (fromIntegral x)

baseTree :: HasAABB a => AABB -> Octree a
baseTree aabb = OLeaf aabb [] 0

testTree :: Octree Int
testTree = OLeaf (AABB 0 10) [] 0

newTree :: Octree Int
newTree = foldl octInsert testTree [0, 1, 2, 3, 4]

---

octInsert :: Octree a -> a -> Octree a
octInsert tree@(ONode aabb children) val =
    let (insertIntos, others) = filterPartition (checkOctant val) children
    in if null insertIntos
            then tree
        else ONode aabb $ octInsert (head insertIntos) val : others ++ tail insertIntos
octInsert leaf@(OLeaf aabb contents size) val =
    if size+1 <= maxCapacity
        then OLeaf aabb (val : contents) (size+1)
    else octInsert (subdivide leaf) val

subdivide :: Octree a -> Octree a
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
        southWestB = movePos northWestA (Vec3 0 0 halfZ)
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

filterPartition :: (a -> Bool) -> [a] -> ([a], [a])
filterPartition f (x:xs)
    | f x = consTuple (Just x, Nothing) $ filterPartition f xs
    | otherwise = consTuple (Nothing, Just x) $ filterPartition f xs
filterPartition _ [] = ([], [])

consTuple :: (Maybe a, Maybe a) -> ([a], [a]) -> ([a], [a])
consTuple (Just x, Nothing) (xs, ys) = (x:xs, ys)
consTuple (Nothing, Just y) (xs, ys) = (xs, y:ys)

checkOctant :: a -> Octree a -> Bool
checkOctant val (ONode aabb _) =
    objectsIntersect val aabb
checkOctant val (OLeaf aabb _ _) =
    objectsIntersect val aabb 
{-# INLINE checkOctant #-}
