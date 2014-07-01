{-# LANGUAGE ExistentialQuantification #-}
module Bullet where

import Control.Monad (forM, forM_, void)

import Physics.Bullet.Raw
import Physics.Bullet.Raw.Utils
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class

data Attr o a = forall x . Attr !(o -> IO a) !(o -> a -> IO x)

data AttrOp o = forall a . Attr o a := a
              | forall a . Attr o a :~ (a -> a)
              | forall a . Attr o a :!= IO a
              | forall a . Attr o a :!~ (a -> IO a)
infixr 0 :=, :~, :!=, :!~

set :: o -> [AttrOp o] -> IO o
set obj attrs = (>> return obj) $ forM_ attrs $ \op -> case op of
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

worldTransform :: BtCollisionObjectClass o => Attr o Transform
worldTransform = Attr btCollisionObject_getWorldTransform
                      btCollisionObject_setWorldTransform

worldGravity :: BtDiscreteDynamicsWorldClass o => Attr o Vec3
worldGravity = Attr btDiscreteDynamicsWorld_getGravity
                    btDiscreteDynamicsWorld_setGravity

bullet2 :: IO ()
bullet2 = do
    hc <- btHashedOverlappingPairCache
    broadphase <- btDbvtBroadphase hc

    collisionInfo <- btDefaultCollisionConstructionInfo
    collisionConfig <- btDefaultCollisionConfiguration collisionInfo

    dispatcher <- btCollisionDispatcher collisionConfig

    solver <- btSequentialImpulseConstraintSolver

    dynamicsWorld <- btDiscreteDynamicsWorld
        dispatcher broadphase solver collisionConfig
    void . btDiscreteDynamicsWorld_setGravity dynamicsWorld $
        Vec3 0 (-10) 0

    shape <- btBoxShape 3

    motionState <- btDefaultMotionState
            (Transform idmtx $ Vec3 0 0 0)
            (Transform idmtx $ Vec3 0 0 0)

    rigidBodyCI <- btRigidBody_btRigidBodyConstructionInfo
                    0
                    motionState
                    shape
                    (Vec3 0 0 0)
    
    rigidBody <- btRigidBody0 rigidBodyCI

    btDynamicsWorld_addRigidBody dynamicsWorld rigidBody



    fallingShape <- btBoxShape 1

    inertia <- btCollisionShape_calculateLocalInertia fallingShape 1 $ Vec3 0 0 0
    fallMotionState <- btDefaultMotionState
            (Transform idmtx $ Vec3 0 10000 0)
            (Transform idmtx $ Vec3 0 0 0)

    fallCI <- btRigidBody_btRigidBodyConstructionInfo
                    1
                    fallMotionState
                    fallingShape
                    inertia
    fallBody <- btRigidBody0 fallCI
    btDynamicsWorld_addRigidBody dynamicsWorld fallBody

    ret <- mapM (\_ -> btDynamicsWorld_stepSimulation dynamicsWorld
                (15/1000) 10 (1/60) >>
                ((\(Vec3 _ y _) -> return $ show y ++ replicate ((floor y - 4) `div` 200) ' ' ++ "*"
                  ) =<< (\(Transform _ v) -> return v) =<<
                 fallBody `get` worldTransform)
          ) [0..10000::Int]

    let takeSample (x:xs) = x ++ "\n" ++ takeSample (drop 50 xs)
        takeSample [] = []
    putStrLn $ takeSample ret


    return ()

bullet :: IO ()
bullet = do
    dynamicsWorld <- simpleBtDiscreteDynamicsWorldM

    ghostCall <- btGhostPairCallback
    pairCache <- btCollisionWorld_getPairCache dynamicsWorld

    btOverlappingPairCache_setInternalGhostPairCallback pairCache ghostCall

    ghostObject <- btPairCachingGhostObject

    sphere <- btSphereShape 5
    print sphere
    print (btToPtr ghostObject < btToPtr sphere)
    btCollisionObject_setCollisionShape ghostObject sphere
    void . btCollisionObject_setWorldTransform ghostObject . Transform idmtx $ Vec3 0 5 0
    btCollisionWorld_addCollisionObject dynamicsWorld ghostObject 1 (-1)

    (_,b) <- localCreateRigidBodyM dynamicsWorld 1 (Transform idmtx $ Vec3 0 6 0) sphere
    print (ghostObject,b)

    -- ray test
    let from = Vec3 0 100 0
        to = Vec3 0 (-100) 0
    rayResult <- btCollisionWorld_AllHitsRayResultCallback from to
    void $ btCollisionWorld_rayTest dynamicsWorld from to rayResult
    l <- btCollisionWorld_AllHitsRayResultCallback_m_hitPointWorld_get rayResult
    -- m_collisionObjects: btAlignedObjectArray<btCollisionObject*>
    -- btAlignedObjectArray_btCollisionObject_ptr__at
    n <- btAlignedObjectArray_btVector3__size l
    hitPoints <- forM [0..n-1] $ \i -> btAlignedObjectArray_btVector3__at l i
    print ("ray test",hitPoints)

    -- ghost object collision test
--    btDynamicsWorld_stepSimulation dynamicsWorld 0.01 10 (1 / 200)
--    print =<< (mapM extractManifold =<< collectManifolds dynamicsWorld ghostObject)
--    btDynamicsWorld_stepSimulation dynamicsWorld 10 10 (1 / 200)
--    print =<< (mapM extractManifold =<< collectManifolds dynamicsWorld ghostObject)
