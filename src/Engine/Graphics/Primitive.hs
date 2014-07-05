{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeSynonymInstances #-}
module Engine.Graphics.Primitive where

import Control.Applicative hiding (Const)
import Control.Monad.Writer

import Data.Vec ((:.)(..), Mat44)
import qualified Graphics.Rendering.OpenGL.GL as GL
import Graphics.Rendering.OpenGL.Raw (GLfloat, GLint)

-------------
-- MY OWN. --
-------------

-- IDEA 1

class GPU a where
    typeStr :: a -> String

instance GPU GLfloat where
    typeStr = const "float"

data TreeSL 

data ValueSL a where
    ValueSL :: GPU a => Qualifier -> a -> ValSL a

data FunctionSL a b where
    FunctionSL :: (GPU a, GPU b) => 

data Qualifier =
    Uniform
  | In
  | Out
  | None

instance Show Qualifier where
    show Uniform = "uniform"
    show In = "in"
    show Out = "out"
    show None = ""

uniformQ :: GPU a => a -> ValSL a
uniformQ = ValSL Uniform

inQ :: GPU a => a -> ValSL a
inQ = ValSL In

outQ :: GPU a => a -> ValSL a
outQ = ValSL Out

noneQ :: GPU a => a -> ValSL a
noneQ = ValSL None

{- IDEA 2

class GPU a

data ValSL qualifier a where
    ValSL :: GPU a => a -> ValSL a

type Uniform a = ValSL UniformQ a

data UniformQ
data InQ
data OutQ
data NoneQ

-}

-- ASDASD

{-
data TreeSL =
    UniformSL Uniform
  | ConstantSL Const
  | InputSL GLint
  | InputTreeSL TreeSL
  | OpSL String (String -> [String] -> String) [TreeSL]
  | FunctionSL (TreeSL -> TreeSL)

data Uniform =
    UniformFloat GLfloat
  | UniformInt GLint
  | UniformBool Bool
  | UniformMat44 (Mat44 GLfloat)
  | UniformSampler SamplerType Sampler GL.TextureObject

data Const =
    ConstFloat GLfloat
  | ConstInt GLint
  | ConstBool Bool
  | ConstMat44 (Mat44 GLfloat)

-- | A structure describing how a texture is sampled
data Sampler = Sampler Filter EdgeMode
    deriving (Eq, Ord)
-- | Filter mode used in sampler state
data Filter = Point | Linear
    deriving (Eq, Ord, Bounded, Enum, Show)
-- | Edge mode used in sampler state
data EdgeMode = Wrap | Mirror | Clamp
    deriving (Eq, Ord, Bounded, Enum, Show)
data SamplerType = Sampler3D | Sampler2D | Sampler1D | SamplerCube
    deriving (Eq, Ord, Enum, Bounded)
-}

{-

type VertexBuffer a = [a]

-- | Denotes a type on the GPU, that can be moved there
--   from the CPU (through the internal use of uniforms).
class GPU a where
    -- | The type on the CPU.
    type CPU a
    -- | Converts a value from the CPU to the GPU.
    toGPU :: CPU a -> a

data PrimitiveStream a =
    PrimitiveStream [([[Float]], a)]

{-
type Vertex = Shader V
type Fragment = Shader F

data Shader t = Shader {fromS :: ShaderTree}
data V
data F
-}

----

{-
newtype GLSL a = GLSL {unGLSL :: Writer [ShaderTree] a}
    deriving (Functor, Applicative, Monad, MonadWriter [ShaderTree])

data ShaderTree =
    ShaderUniform Uniform
  | ShaderConstant Const
  | ShaderOp Op (String -> [String] -> String) [ShaderTree]
-}

----

{-
type Op = String
data Const =
    ConstFloat Float
  | ConstInt Int
  | ConstBool Bool
    deriving (Eq, Ord)
data Uniform =
    UniformFloat Float
  | UniformInt Int
  | UniformBool Bool
  | UniformSampler SamplerType Sampler GL.TextureObject


-- | A structure describing how a texture is sampled
data Sampler = Sampler Filter EdgeMode
    deriving (Eq, Ord)
-- | Filter mode used in sampler state
data Filter = Point | Linear
    deriving (Eq, Ord, Bounded, Enum, Show)
-- | Edge mode used in sampler state
data EdgeMode = Wrap | Mirror | Clamp
    deriving (Eq, Ord, Bounded, Enum, Show)
data SamplerType = Sampler3D | Sampler2D | Sampler1D | SamplerCube
    deriving (Eq, Ord, Enum, Bounded)

-}
----
-- Just an idea.

newtype Context s x = Context {contVal :: x}
    deriving (Functor, Show, Eq)

type Mat = Mat44 GL.GLfloat

class Transform object transformer where
    type Result :: *
    trans :: object -> transformer -> Result

{-
instance Transform (Context ObjectSpace x) (Context ModelMatrix m) where
    type Result = Context WorldSpace x
    trans object matrix =
-}

instance Num x => Num (Context s x) where
    (*) = (*)
    (+) = (+)
    abs = abs
    signum = signum
    fromInteger = Context . fromInteger
    negate = negate

-- | Raw model vertices.
data ObjectSpace
-- | ObjectSpace * MODEL Matrix.
data WorldSpace
-- | WorldSpace * VIEW Matrix.
data EyeSpace
-- | EyeSpace * PROJECTION Matrix.
data ClipSpace
-- | Other space.
data NoSpace

data ModelMat
data ViewMat
data ModelViewMat
data ProjMat
-}
