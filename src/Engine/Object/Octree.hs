{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TupleSections #-}
module Engine.Object.Octree (
    Octree(..),
    maxCapacity, createOctree, createOctreeFromAABBs,
    findNearby, octInsert, subdivide, findNearby',
    getNonEmptyAABBs, childrenCount, takeFirsts,
    treeAABB, treeChildren
) where

--import Control.Applicative
--import qualified Data.Vector as V
--import qualified Data.Vector.Mutable as MV
import Data.List (foldl')
import qualified Data.DList as D
--import Data.Foldable (foldrM)
import Data.Vec ((:.)(..))

--import qualified Data.Map as M
--import qualified Data.HashTable.ST.Cuckoo as H

import Engine.Mesh.AABB
    (AABB(..), HasAABB(..),
     objectsIntersectInclusive)
import Engine.Object.Intersect (Intersect(..))
import Engine.Core.HasPosition (HasPosition(..))

-- = Idea for mutable Octrees in ST Monad.

{-
import Control.Monad.ST

data OctreeST a =
    NodeST AABB (V.Vector (OctreeST a))
  | LeafST AABB (V.Vector a) Int
  deriving (Show, Eq)

type Key = Int
type Index = Int

data Element =
    Element AABB Index
  deriving (Show, Eq)

type OctreeMap a = (M.Map Key [Element], OctreeST a)

testST = fromSingleGroup
            ([AABB (fromIntegral x) (fromIntegral y)
                | x <- [0..5], y <- [0..5]], 3142)

capacityST :: Int
capacityST = 10

fromSingleGroup :: HasAABB a => ([a], Key) -> OctreeMap a
fromSingleGroup (xs, key) = runST $
    foldrM (\a b -> insertST (a, key) b) (filledOctreeMap $ head xs) xs

filledOctreeMap :: a -> OctreeMap a
filledOctreeMap x = (M.empty, LeafST (AABB 0 0) (V.replicate capacityST x) 0)

insertST :: HasAABB a => (a, Key) -> OctreeMap a -> ST s (OctreeMap a)
insertST (val, key) (keyMap, (LeafST aabb vals numberOfElems))
    | numberOfElems < capacityST =
        let newMap = M.adjust (Element aabb numberOfElems :) key keyMap
        in do
            mutable <- V.unsafeThaw vals
            MV.write mutable numberOfElems val
            frozen <- V.unsafeFreeze mutable
            return $ (newMap, LeafST aabb frozen (numberOfElems + 1))
    | otherwise = undefined
        
insertST (val, key) (keyMap, (NodeST aabb children)) = do
    let (intersect, others) =
            V.partition (checkOctantST val) children
    (newMaps, inserted) <- V.unzip <$>
            V.mapM (insertST (val, key) . (keyMap,)) intersect
    let newMap = V.foldr (flip $ M.unionWith (++)) M.empty newMaps
    return $ (newMap, NodeST aabb $ inserted V.++ others)

checkOctantST :: HasAABB a => a -> OctreeST a -> Bool
checkOctantST val (NodeST aabb _) =
    objectsIntersectInclusive val aabb
checkOctantST val (LeafST aabb _ _) =
    objectsIntersectInclusive val aabb
{-# INLINE checkOctantST #-}

subdivideST :: (HasAABB a, Eq a) => OctreeST a -> ST s (OctreeST a)
subdivideST (LeafST wholeAABB@(AABB minVec maxVec) contents _) =
    let halfVec@(halfX :. halfY :. halfZ :. ()) = (abs $ maxVec - minVec) / 2
        newAABBTemplate = AABB minVec $ minVec + halfVec 

        northWestA = newAABBTemplate
        northWestB = movePos northWestA (0 :. 0 :. halfZ :. ())
        northWestALeaf = LeafST northWestA emptyOctant 0
        northWestBLeaf = LeafST northWestB emptyOctant 0
        
        northEastA = movePos newAABBTemplate (halfX :. 0 :. 0 :. ())
        northEastB = movePos northEastA (0 :. 0 :. halfZ :. ())
        northEastALeaf = LeafST northEastA emptyOctant 0
        northEastBLeaf = LeafST northEastB emptyOctant 0

        southWestA = movePos newAABBTemplate (0 :. halfY :. 0 :. ())
        southWestB = movePos southWestA (0 :. 0 :. halfZ :. ())
        southWestALeaf = LeafST southWestA emptyOctant 0
        southWestBLeaf = LeafST southWestB emptyOctant 0

        southEastA = movePos newAABBTemplate (halfX :. halfY :. 0 :. ())
        southEastB = movePos southEastA (0 :. 0 :. halfZ :. ())
        southEastALeaf = LeafST southEastA emptyOctant 0
        southEastBLeaf = LeafST southEastB emptyOctant 0
 
        newNode = NodeST wholeAABB $ V.fromList
                                    [northWestALeaf, northWestBLeaf,
                                     northEastALeaf, northEastBLeaf,
                                     southWestALeaf, southWestBLeaf,
                                     southEastALeaf, southEastBLeaf]
    in undefined --foldrM (insertST)
subdivideST _ = error "Collision.subdivideST: cannot subdivide a Node."

getGroupsInNode :: OctreeMap a -> M.Map Key [Element]
getGroupsInNode (keyMap, NodeST aabb _) =
    M.map (filter (\(Element box _) -> box == aabb)) keyMap

emptyOctant :: V.Vector a
emptyOctant = runST $ MV.new capacityST >>= V.unsafeFreeze

-- = Linear Octree.

type LinearOctree a = V.Vector (LinearIndex a)
data LinearIndex a =
    LinearLeaf !AABB (V.Vector a) !Int
  | LinearNode !AABB (V.Vector Int)
  deriving (Show, Eq)

testLinear = makeLinear $ createOctreeFromAABBs (AABB 0 100000000)
    [AABB (((x ^ 2 `gmod` 1280) - 1) :.
           ((x ^ 3 `gmod` 1280) - 1) :.
           ((x ^ 4 `gmod` 1280) - 1) :. ())
          ((x ^ 2 `gmod` 1280) :.
           (x ^ 3 `gmod` 1280) :.
           (x ^ 4 `gmod` 1280) :. ())
            | x <- [0..100]]
  where gmod x r = floor x `mod` r

makeLinear :: Octree a -> LinearOctree a
-- TODO: Fix 1024, dummy val right now.
makeLinear tree = runST $ do
    mutable <- MV.replicate (floor $ fromIntegral (octreeNodeCount tree) * 1.8)
                            (LinearLeaf (AABB 0 0) V.empty 0)
    makeLinear' 0 mutable tree
    V.freeze mutable

--makeLinear' :: Int -> MV.MVector s a -> Octree a -> ST s ()
makeLinear' i vec (OLeaf aabb contents len) =
    let childrenVec = V.fromList contents
    in MV.write vec i $ LinearLeaf aabb childrenVec len
makeLinear' i vec (ONode aabb children) =
    let childrenIndices = V.generate (length children) (i+)
    in do
        MV.write vec i $ LinearNode aabb childrenIndices
        _ <- foldrM (\child index ->
                makeLinear' index vec child >> return (index+1))
                    (i+8) children
        return ()

emptyLinearOctree :: Int -> LinearOctree a
emptyLinearOctree len = runST $ do
    mutable <- MV.new (len * maxCapacity)
    V.unsafeFreeze mutable

octreeNodeCount :: Octree a -> Int
octreeNodeCount (ONode _ children) =
    1 + sum (map octreeNodeCount children)
octreeNodeCount _ = 1

-}
-- = Current implementation.

-- | A pure Octree used to sort objects for
--   collision detection.
data Octree a =
    ONode AABB [Octree a]
  | OLeaf AABB [a] Int
    deriving (Eq)

treeChildren :: Octree a -> [Octree a]
treeChildren (ONode _ children) = children
treeChildren _ = []

treeAABB :: Octree a -> AABB
treeAABB (ONode aabb _) = aabb
treeAABB (OLeaf aabb _ _) = aabb

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
octInsert leaf@(OLeaf aabb contents size) val =
    if size+1 <= maxCapacity
        then OLeaf aabb (val : contents) (size+1)
    else octInsert (subdivide leaf) val

getNonEmptyAABBs :: Octree a -> [AABB]
getNonEmptyAABBs (ONode _ children) =
    concatMap getNonEmptyAABBs children
getNonEmptyAABBs (OLeaf aabb _ childCount)
    | childCount > 0 = [aabb]
    | otherwise = []

-- Weird
takeFirsts :: (Octree a -> Bool) -> Octree a -> [Octree a]
takeFirsts f tree
    | f tree    = [tree]
    | otherwise = concatMap (takeFirsts f) (treeChildren tree)

childrenCount :: Octree a -> Int
childrenCount (ONode _ children) =
    sum (map childrenCount children)
childrenCount (OLeaf _ _ childCount) =
    childCount

dpartition :: (a -> Bool) -> [a] -> (D.DList a, D.DList a)
dpartition p = foldr (dselect p) (D.empty, D.empty)
{-# INLINE dpartition #-}

dselect :: (a -> Bool) -> a -> (D.DList a, D.DList a) -> (D.DList a, D.DList a)
dselect p x (ts, fs) | p x = (x `D.cons` ts,fs)
                     | otherwise = (ts, x `D.cons` fs)

subdivide :: (HasAABB a, Eq a) => Octree a -> Octree a
subdivide (OLeaf wholeAABB@(AABB minVec maxVec) contents _) =
    let halfVec@(halfX :. halfY :. halfZ :. ()) =
            abs (maxVec - minVec) / 2
            --fmap (/2) (abs $ maxVec - minVec)
        newAABBTemplate = AABB minVec $ minVec + halfVec 

        northWestA = newAABBTemplate
        northWestB = movePos northWestA (0 :. 0 :. halfZ :. ())
        northWestALeaf = OLeaf northWestA [] 0
        northWestBLeaf = OLeaf northWestB [] 0
        
        northEastA = movePos newAABBTemplate (halfX :. 0 :. 0 :. ())
        northEastB = movePos northEastA (0 :. 0 :. halfZ :. ())
        northEastALeaf = OLeaf northEastA [] 0
        northEastBLeaf = OLeaf northEastB [] 0

        southWestA = movePos newAABBTemplate (0 :. halfY :. 0 :. ())
        southWestB = movePos southWestA (0 :. 0 :. halfZ :. ())
        southWestALeaf = OLeaf southWestA [] 0
        southWestBLeaf = OLeaf southWestB [] 0

        southEastA = movePos newAABBTemplate (halfX :. halfY :. 0 :. ())
        southEastB = movePos southEastA (0 :. 0 :. halfZ :. ())
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
