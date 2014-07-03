{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE LambdaCase #-}
module Engine.Bullet.Bullet where

import Control.Monad (forM_, void)
import Unsafe.Coerce (unsafeCoerce)
import Control.Applicative ((<$>))

import Data.Vec ((:.)(..), Mat44)

import Physics.Bullet.Raw
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Mesh.AABB (AABB(..))

type PrimMesh = [GLfloat]

data Physics = Physics {
    physicsWorld :: BtDiscreteDynamicsWorld
    }

mkPhysics :: IO Physics
mkPhysics = do
    -- Broadphase collision detector.
    hc <- btHashedOverlappingPairCache
    broadphase <- btDbvtBroadphase hc

    -- Collision config (default).
    collisionInfo <- btDefaultCollisionConstructionInfo
    collisionConfig <- btDefaultCollisionConfiguration collisionInfo

    -- Collision Dispatcher.
    dispatcher <- btCollisionDispatcher collisionConfig

    -- Constraint solver (how to get out of intersection).
    solver <- btSequentialImpulseConstraintSolver

    -- Physics world.
    dynamicsWorld <- btDiscreteDynamicsWorld
        dispatcher broadphase solver collisionConfig
    -- Set gravity.
    void $ set dynamicsWorld [worldGravity := Vec3 0 (-10) 0]

    return $ Physics dynamicsWorld

addShape :: BtCollisionShapeClass o => o -> Float -> Physics -> IO BtRigidBody
addShape shape mass physics = do
    -- Calculate inertia of shape.
    inertia <- btCollisionShape_calculateLocalInertia
                    shape mass nullVec3

    -- Initial state of shape
    motionSt <- btDefaultMotionState
            (Transform idmtx $ Vec3 0 0 0)
            nullTransform

    -- Rigid body constructor info.
    constrInfo <- btRigidBody_btRigidBodyConstructionInfo
                    mass
                    motionSt
                    shape
                    inertia
    -- Create a rigid body for shape.
    rigidBody <- btRigidBody0 constrInfo

    -- Add rigid body to world.
    btDynamicsWorld_addRigidBody (physicsWorld physics) rigidBody

    return rigidBody

addAABBs :: [AABB] -> Float -> Physics -> IO BtRigidBody
addAABBs xs mass physics = do
    shape <- btCompoundShape False
    mapM_ (addAABB shape) xs
    addShape shape mass physics

addAABB :: BtCompoundShape -> AABB -> IO ()
addAABB shape (AABB (lx :. ly :. lz :. ()) (hx :. hy :. hz :. ())) = do
    let halfVec = Vec3 ((/2) $ uC hx - uC lx)
                       ((/2) $ uC hy - uC ly)
                       ((/2) $ uC hz - uC lz)
        lowVec = Vec3 (uC lx) (uC ly) (uC lz)
    box <- btBoxShape halfVec
    void $
        btCompoundShape_addChildShape shape
            (Transform idmtx lowVec) box

addTriangleMesh :: PrimMesh -> Float -> Physics -> IO BtRigidBody
addTriangleMesh triangles mass physics = do
    -- Create a mesh and add triangles to it.
    mesh <- btTriangleMesh True True
    addTrianglesToMesh triangles mesh

    -- Create a shape from the triangles
    -- TODO: This is the slowest shape possible.
    --
    --      It should only be used if:
    --          * Mesh is concave.
    --            AND
    --          * Mesh is dynamic.
    --
    --      * If mesh is convex, use "btConvexTriangleMeshShape"
    --      * If mesh is static, use "btBvhTriangleMeshShape" (?)
    --
    --      And even for concave meshes,
    --      they can be converted into (many??) convex ones
    --      (https://code.google.com/p/bullet/source/browse/trunk/Demos/ConvexDecompositionDemo/ConvexDecompositionDemo.cpp)
    shape <- btGImpactMeshShape mesh
    btGImpactShapeInterface_updateBound shape
    btGImpactShapeInterface_postUpdate shape

    addShape shape mass physics

addTrianglesToMesh :: PrimMesh -> BtTriangleMesh -> IO ()
addTrianglesToMesh (x1:y1:z1:x2:y2:z2:x3:y3:z3:others) mesh =
    let v1 = Vec3 (uC x1) (uC y1) (uC z1)
        v2 = Vec3 (uC x2) (uC y2) (uC z2)
        v3 = Vec3 (uC x3) (uC y3) (uC z3)
    in btTriangleMesh_addTriangle mesh v1 v2 v3 True >>
       addTrianglesToMesh others mesh
addTrianglesToMesh [] _ = return ()
addTrianglesToMesh _ _ = error "Engine.Bullet.Bullet.addTrianglesToMesh"

----------------
-- Attr types --
----------------

data Attr o a = forall x. Attr (o -> IO a) (o -> a -> IO x)

data AttrOp o =
    forall a. Attr o a := a
  | forall a. Attr o a :~ (a -> a)
  | forall a. Attr o a :!= IO a
  | forall a. Attr o a :!~ (a -> IO a)
infixr 0 :=, :~, :!=, :!~

---------------------
-- Attr primitives --
---------------------

set :: o -> [AttrOp o] -> IO o
set obj attrs = (>> return obj) $ forM_ attrs $ \case
    Attr _      setter :=  x -> void $ setter obj x
    Attr getter setter :~  f -> void $ getter obj >>= setter obj . f
    Attr _      setter :!= x -> void $ x >>= setter obj
    Attr getter setter :!~ f -> void $ getter obj >>= f >>= setter obj

get :: o -> Attr o a -> IO a
get obj (Attr getter _) = getter obj 

make :: IO o -> [AttrOp o] -> IO o
make act flags = do
    obj <- act
    void $ set obj flags
    return obj

------------------
-- Bullet Attrs --
------------------

worldTransform :: BtCollisionObjectClass o => Attr o Transform
worldTransform = Attr btCollisionObject_getWorldTransform
                      btCollisionObject_setWorldTransform

worldGravity :: BtDiscreteDynamicsWorldClass o => Attr o Vec3
worldGravity = Attr btDiscreteDynamicsWorld_getGravity
                    btDiscreteDynamicsWorld_setGravity

motionState :: BtRigidBodyClass o => Attr o BtMotionState
motionState = Attr btRigidBody_getMotionState
                   btRigidBody_setMotionState

linearVelocity :: BtRigidBodyClass o => Attr o Vec3
linearVelocity = Attr btRigidBody_getLinearVelocity
                      btRigidBody_setLinearVelocity

---------------
-- Utilities --
---------------

getVecMat :: BtCollisionObjectClass o => o -> IO (Mat44 GLfloat)
getVecMat collisionObj = mkVecMat <$> collisionObj `get` worldTransform

mkVecMat :: Transform -> Mat44 GLfloat
mkVecMat (Transform
            (Mat3 (Vec3 a1 a2 a3) (Vec3 b1 b2 b3)
                  (Vec3 c1 c2 c3))
            (Vec3 p1 p2 p3)) =
    (uC a1 :. uC a2 :. uC a3 :. uC p1) :.
    (uC b1 :. uC b2 :. uC b3 :. uC p2) :.
    (uC c1 :. uC c2 :. uC c3 :. uC p3) :.
    (0     :. 0     :. 0     :. 1    ) :. ()
{-
column-major (Vec uses row-major)
    (uC a1 :. uC b1 :. uC c1 :. 0) :.
    (uC a2 :. uC b2 :. uC c2 :. 0) :.
    (uC a3 :. uC b3 :. uC c3 :. 0) :.
    (uC p1 :. uC p2 :. uC p3 :. 1) :. ()
-}

uC :: a -> b
uC = unsafeCoerce

nullTransform :: Transform
nullTransform = Transform idmtx nullVec3

nullVec3 :: Vec3
nullVec3 = Vec3 0 0 0

--------------
-- Examples --
--------------

{-
bullet2 :: IO ()
bullet2 = do
    -- Broadphase collision detector.
    hc <- btHashedOverlappingPairCache
    broadphase <- btDbvtBroadphase hc

    -- Collision config (default).
    collisionInfo <- btDefaultCollisionConstructionInfo
    collisionConfig <- btDefaultCollisionConfiguration collisionInfo

    -- Collision Dispatcher.
    dispatcher <- btCollisionDispatcher collisionConfig

    -- Constraint solver (how to get out of intersection).
    solver <- btSequentialImpulseConstraintSolver

    -- Physics world.
    dynamicsWorld <- btDiscreteDynamicsWorld
        dispatcher broadphase solver collisionConfig
    -- Set gravity.
    void $ set dynamicsWorld [worldGravity := Vec3 0 (-10) 0]


    -- Create a static box shape.
    shape <- btBoxShape 3

    -- Initial state for static box.
    motionSt <- btDefaultMotionState
            nullTransform
            nullTransform

    -- Rigid body constructor info for static box.
    rigidBodyCI <- btRigidBody_btRigidBodyConstructionInfo
                    0
                    motionSt
                    shape
                    (Vec3 0 0 0)
    -- Create a rigid body for static box.
    rigidBody <- btRigidBody0 rigidBodyCI

    -- Add static box to world
    btDynamicsWorld_addRigidBody dynamicsWorld rigidBody


    -- Create a falling box shape.
    fallingShape <- btBoxShape 1

    -- Calculate inertia of falling box.
    inertia <- btCollisionShape_calculateLocalInertia
                    fallingShape 1 nullVec3

    -- Initial state of falling box.
    fallMotionState <- btDefaultMotionState
            (Transform idmtx $ Vec3 0 20 0)
            nullTransform

    -- Falling box rigid body constructor info.
    fallCI <- btRigidBody_btRigidBodyConstructionInfo
                    1
                    fallMotionState
                    fallingShape
                    inertia
    -- Create a rigid body for falling box.
    fallBody <- btRigidBody0 fallCI

    -- Add falling box to the world.
    btDynamicsWorld_addRigidBody dynamicsWorld fallBody

    mapM_
        (\_ -> btDynamicsWorld_stepSimulation dynamicsWorld
            (15/1000) 10 (1/60) >>
        (print =<<
                 fallBody `get` worldTransform)
          ) [0..200::Int]
-}
