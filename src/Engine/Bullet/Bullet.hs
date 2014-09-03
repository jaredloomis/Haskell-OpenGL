{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE LambdaCase #-}
module Engine.Bullet.Bullet where

import Control.Monad (forM_, void)
import Unsafe.Coerce (unsafeCoerce)
import Control.Applicative ((<$>))
import Data.Default (Default(..))

import Data.Vec ((:.)(..), Mat44)
import qualified Data.Vec as Vec (Vec3)

import Physics.Bullet.Raw
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class

import Graphics.Rendering.OpenGL.Raw (GLfloat)

import Engine.Mesh.AABB (AABB(..))

newtype Physics = Physics {
    physicsWorld :: BtDiscreteDynamicsWorld
    } deriving (Show, Eq, Ord)

data RigidBodyInfo = RigidBodyInfo {
    rigidBodyMass :: Float,
    rigidBodyRestitution :: Float,
    rigidBodyFriction :: Float,
    rigidBodyStatic :: Bool,
    rigidBodyOtherMods :: BtRigidBody_btRigidBodyConstructionInfo -> IO ()
    }
instance Default RigidBodyInfo where
    def = RigidBodyInfo 0 0 1.5 True (const $ return ())

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

addShape :: BtCollisionShapeClass o => o -> RigidBodyInfo -> Physics -> IO BtRigidBody
addShape shape info physics = do
    -- Calculate inertia of shape.
    inertia <- btCollisionShape_calculateLocalInertia
                    shape (rigidBodyMass info) nullVec3

    -- Initial state of shape
    motionSt <- btDefaultMotionState
            (Transform idmtx $ Vec3 0 0 0)
            nullTransform

    -- Rigid body constructor info.
    constrInfo <- btRigidBody_btRigidBodyConstructionInfo
                    (rigidBodyMass info)
                    motionSt
                    shape
                    inertia
    -- Set restitution.
    btRigidBody_btRigidBodyConstructionInfo_m_restitution_set
        constrInfo (rigidBodyRestitution info)
    -- Set friction.
    btRigidBody_btRigidBodyConstructionInfo_m_friction_set
        constrInfo (rigidBodyFriction info)

    -- Create a rigid body for shape.
    rigidBody <- btRigidBody0 constrInfo

    -- Add rigid body to world.
    btDynamicsWorld_addRigidBody (physicsWorld physics) rigidBody

    return rigidBody

addAABBs :: [AABB] -> RigidBodyInfo -> Physics -> IO BtRigidBody
addAABBs xs info physics = do
    shape <- btCompoundShape False
    mapM_ (addAABB shape) xs
    addShape shape info physics


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

addStaticTriangleMesh :: [Vec.Vec3 GLfloat] -> RigidBodyInfo -> Physics -> IO BtRigidBody
addStaticTriangleMesh triangles info physics
    | not (null triangles) = do
        -- Create a mesh and add triangles to it.
        mesh <- btTriangleMesh True True
        addTrianglesToMesh triangles mesh

        shape <- btBvhTriangleMeshShape0 mesh True True

        addShape shape info physics
    | otherwise = error "Engine.Bullet.Bullet.addStaticTriangleMesh"



addTriangleMesh :: [Vec.Vec3 GLfloat] -> RigidBodyInfo -> Physics -> IO BtRigidBody
addTriangleMesh triangles info physics = do
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

    addShape shape info physics

addTrianglesToMesh :: [Vec.Vec3 GLfloat] -> BtTriangleMesh -> IO ()
addTrianglesToMesh (
    (x1:.y1:.z1:.()):(x2:.y2:.z2:.()):(x3:.y3:.z3:.()):others) mesh =
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

angularVelocity :: BtRigidBodyClass o => Attr o Vec3
angularVelocity = Attr btRigidBody_getAngularVelocity
                       btRigidBody_setAngularVelocity

linearFactor :: BtRigidBodyClass o => Attr o Vec3
linearFactor = Attr btRigidBody_getLinearFactor
                    btRigidBody_setLinearFactor

angularFactor :: BtRigidBodyClass o => Attr o Vec3
angularFactor = Attr btRigidBody_getAngularFactor
                     btRigidBody_setAngularFactor

linearSleepingThreshold :: BtRigidBodyClass o => Attr o Float
linearSleepingThreshold =
    Attr btRigidBody_getLinearSleepingThreshold
         (\rigidBody linearST -> do
            angularST <- btRigidBody_getAngularSleepingThreshold  rigidBody
            btRigidBody_setSleepingThresholds rigidBody linearST angularST)

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

----------------------------------
-- Creation of AABBs for meshes --
----------------------------------

bulletize :: [GLfloat] -> [AABB]
bulletize points = undefined
