{-# LANGUAGE DataKinds #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MultiParamTypeClasses #-}
module Engine.Matrix.NewMatrix where

import Foreign.Storable (Storable(..))
import qualified Data.Vector.Storable as V

import GHC.TypeLits
import Numeric.LinearAlgebra.Static

newtype Matrix w h t = Matrix (L w h)
  deriving (Num, Fractional, Floating)

newtype Vector l t = Vector (R l)
  deriving (Num, Fractional, Floating)


instance (Sized t (R l) V.Vector) => Sized t (Vector l t) V.Vector where
    konst = Vector . konst
    unwrap (Vector r) = unwrap r

(<&>) :: (KnownNat w1, KnownNat w2, KnownNat h) =>
    Matrix w1 h t -> Matrix w2 h t -> Matrix (w1+w2) h t
(<&>) (Matrix l1) (Matrix l2) = Matrix $ l1 —— l2
