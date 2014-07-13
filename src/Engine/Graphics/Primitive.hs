{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE GADTs #-}
module Engine.Graphics.Primitive where

import GHC.TypeLits

import Data.List (intercalate)
import Control.Monad.Writer

-----------
-- Types --
-----------

-- | GLSL Writer Monad.
type GLSL a = Writer [GLSLUnit] a

type Name = String

data GLSLUnit =
    Version String
  | Decl Qualifier Type Name
  | AssignStatement Name String
  deriving Eq

data SymbolProxy (a :: Symbol) = Proxy

data Value (q :: Symbol) (t :: Symbol) =
    Value Name (SymbolProxy q) (SymbolProxy t)

data Expression (t :: Symbol) =
    Expression String (SymbolProxy t)

data Arg = forall a. (HasString a, ReadableQ a) => Arg a

pack :: (HasString a, ReadableQ a) => a -> Arg
pack = Arg

-- | Representation of GLSL qualifiers in
--   Haskell value level.
data Qualifier =
    Out
  | In
  | Uniform
  | None
  deriving Eq

type QualifierP = SymbolProxy

-- = Representation of GLSL qualifiers in
--   Haskell type level, using TypeLits.
outp :: QualifierP "out"
outp = Proxy
inp :: QualifierP "in"
inp = Proxy
uniformp :: QualifierP "uniform"
uniformp = Proxy
nonep :: QualifierP "none"
nonep = Proxy

-- | Representation of GLSL types in
--   Haskell value level.
data Type =
    Int
  | UInt
  | Float
  | Mat4
  | Vec4
  | Vec3
  | Vec2
  | Bool
  deriving Eq

type TypeP = SymbolProxy

-- = Representation of GLSL types in
--   Haskell type level, using TypeLits.
int :: TypeP "int"
int = Proxy
uint :: TypeP "uint"
uint = Proxy
float :: TypeP "float"
float = Proxy
mat4 :: TypeP "mat4"
mat4 = Proxy
vec3 :: TypeP "vec3"
vec3 = Proxy
vec2 :: TypeP "vec2"
vec2 = Proxy
vec4 :: TypeP "vec4"
vec4 = Proxy
bool :: TypeP "bool"
bool = Proxy

-- = TypeLits to String stuff.

qualifierSymbol :: KnownSymbol q => SymbolProxy q -> Qualifier
qualifierSymbol q =
    case symbolVal q of
        "uniform" -> Uniform
        "in" -> In
        "out" -> Out
        "none" -> None
        _ -> error "Primitive.toTypeQ"

typeSymbol :: KnownSymbol t => SymbolProxy t -> Type
typeSymbol t =
    case symbolVal t of
        "int" -> Int
        "uint" -> UInt
        "float" -> Float
        "mat4" -> Mat4
        "vec4" -> Vec4
        "vec3" -> Vec3
        "vec2" -> Vec2
        "bool" -> Bool
        _ -> error "Primitive.toTypeT"

--------------------
-- Show instances --
--------------------

instance Show GLSLUnit where
    show (Version v) = "#version " ++ v ++ "\n"
    show (Decl None glType name) =
        show glType ++ " " ++ name ++ " = " ++ defaultValue glType ++ ";\n"
    show (Decl qualifier glType name) =
        show qualifier ++ " " ++ show glType ++ " " ++ name ++ ";\n"
    show (AssignStatement a b) =
        a ++ " = " ++ b ++ ";\n"

defaultValue :: Type -> String
defaultValue Int = "0"
defaultValue Float = "0.0"
defaultValue Mat4 = "mat4(1.0)"
defaultValue Vec3 = "vec3(0.0, 0.0, 0.0)"
defaultValue Vec2 = "vec2(0.0, 0.0)"
defaultValue Bool = "false"
defaultValue UInt = "0"
defaultValue Vec4 = "vec4(0.0, 0.0, 0.0, 0.0)"

instance Show Qualifier where
    show Out = "out"
    show In = "in"
    show Uniform = "uniform"
    show None = ""

instance Show Type where
    show Int = "int"
    show Float = "float"
    show Mat4 = "mat4"
    show Vec4 = "vec4"
    show Vec3 = "vec3"
    show Vec2 = "vec2"
    show Bool = "bool"
    show UInt = "uint"

-------------
-- Classes --
-------------

class WritableQS (a :: Symbol)
instance WritableQS "out"
instance WritableQS "none"

class ReadableQS (a :: Symbol)
instance ReadableQS "in"
instance ReadableQS "uniform"
instance ReadableQS "none"

class WritableQ q
instance WritableQS q => WritableQ (Value q t)

class ReadableQ q
instance ReadableQS q => ReadableQ (Value q t)
instance ReadableQ (Expression t)
instance ReadableQ Arg
instance ReadableQ String
instance ReadableQ Float
instance ReadableQ Double
instance ReadableQ Int
instance ReadableQ Integer
instance ReadableQ Bool

class HasString a where
    getString :: a -> String
instance HasString (Value q t) where
    getString (Value name _ _) = name
instance HasString (Expression t) where
    getString (Expression str _) = str
instance HasString Arg where
    getString (Arg a) = getString a
instance HasString String where
    getString = id
instance HasString Float where
    getString = show
instance HasString Double where
    getString = show
instance HasString Int where
    getString = show
instance HasString Integer where
    getString = show
instance HasString Bool where
    getString True = "true"
    getString False = "false"

data Index (len :: Nat) (maxI :: Nat) where
    X :: Index 1 1
    Y :: Index 1 2
    Z :: Index 1 3
    W :: Index 1 4
    Linked :: Index len1 max1 -> Index len2 max2 ->
              Index (len1 + len2) (If (max1 <=? max2) max2 max1)

(.&) :: Index len1 max1 -> Index len2 max2 ->
        Index (len1 + len2) (If (max1 <=? max2) max2 max1)
(.&) = Linked

type family If (condition :: Bool) (yes :: Nat) (no :: Nat) :: Nat where
    If True yes no = yes
    If False yes no = no

instance Show (Index len s) where
    show X = "x"
    show Y = "y"
    show Z = "z"
    show W = "w"
    show (Linked list1 list2) = show list1 ++ show list2

class Swizzle (glType :: Symbol) index (result :: Symbol) where
    (.!) :: (HasString a, ReadableQ a, TypeOf a ~ glType) =>
            a -> index -> Expression result
    infixl 8 .!
instance (len ~ 2, maxI <= 2) => Swizzle "vec2" (Index len maxI) "vec2" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 3, maxI <= 3) => Swizzle "vec3" (Index len maxI) "vec3" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 4, maxI <= 4) => Swizzle "vec4" (Index len maxI) "vec4" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 2, maxI <= 3) => Swizzle "vec3" (Index len maxI) "vec2" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 2, maxI <= 4) => Swizzle "vec4" (Index len maxI) "vec2" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 3, maxI <= 2) => Swizzle "vec2" (Index len maxI) "vec3" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 3, maxI <= 4) => Swizzle "vec4" (Index len maxI) "vec3" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 4, maxI <= 2) => Swizzle "vec2" (Index len maxI) "vec4" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy
instance (len ~ 4, maxI <= 3) => Swizzle "vec3" (Index len maxI) "vec4" where
    (.!) value index =
        Expression ("(" ++ getString value ++ ")." ++ show index) Proxy



class NumT (t :: Symbol)

instance NumT "int"
instance NumT "uint"
instance NumT "float"
instance NumT "vec4"
instance NumT "vec3"
instance NumT "vec2"
instance NumT "mat4"

class ScalarT (t :: Symbol)

instance ScalarT "int"
instance ScalarT "uint"
instance ScalarT "float"
instance ScalarT "bool"

class VecT (t :: Symbol)

instance VecT "vec2"
instance VecT "vec3"
instance VecT "vec4"

--------------
-- Families --
--------------

-- = TypeOf type family.

type family TypeOf a :: Symbol
type instance TypeOf (Value q t) = t
type instance TypeOf (Expression t) = t
type instance TypeOf Float = "float"
type instance TypeOf Double = "float"
type instance TypeOf Int = "int"
type instance TypeOf Bool = "bool"
type instance TypeOf Integer = "int"

-- = QualifierOf type family.

type family QualifierOf a :: Symbol
type instance QualifierOf (Value q t) = q
type instance QualifierOf (Expression t) = "none"

-- = Math type family.

type family Math (a :: Symbol) (b :: Symbol) :: Symbol

type instance Math a a = a

-- primitives
type instance Math "float" "int" = "float"
type instance Math "int" "float" = "float"
type instance Math "float" "uint" = "float"
type instance Math "uint" "float" = "float"
type instance Math "int" "uint" = "int"
type instance Math "uint" "int" = "int"

-- scalar + mat4 = mat4 (???)
type instance Math "int" "mat4" = "mat4"
type instance Math "float" "mat4" = "mat4"
type instance Math "uint" "mat4" = "mat4"
type instance Math "mat4" "int" = "mat4"
type instance Math "mat4" "float" = "mat4"
type instance Math "mat4" "uint" = "mat4"

-- vec + scalar = vec (???)
type instance Math "vec4" "float" = "vec4"
type instance Math "vec4" "uint" = "vec4"
type instance Math "vec4" "int" = "vec4"
type instance Math "float" "vec4" = "vec4"
type instance Math "uint" "vec4" = "vec4"
type instance Math "int" "vec4" = "vec4"
type instance Math "vec3" "float" = "vec3"
type instance Math "vec3" "uint" = "vec3"
type instance Math "vec3" "int" = "vec3"
type instance Math "float" "vec3" = "vec3"
type instance Math "uint" "vec3" = "vec3"
type instance Math "int" "vec3" = "vec3"
type instance Math "vec2" "float" = "vec2"
type instance Math "vec2" "uint" = "vec2"
type instance Math "vec2" "int" = "vec2"
type instance Math "float" "vec2" = "vec2"
type instance Math "uint" "vec2" = "vec2"
type instance Math "int" "vec2" = "vec2"

-- mat4 + vec = vec (???)
type instance Math "mat4" "vec4" = "vec4"
type instance Math "mat4" "vec3" = "vec3"
type instance Math "mat4" "vec2" = "vec2"
type instance Math "vec4" "mat4" = "vec4"
type instance Math "vec3" "mat4" = "vec3"
type instance Math "vec2" "mat4" = "vec2"

---------------
-- To String --
---------------

programString :: [GLSLUnit] -> String
programString xs =
    let (top, bottom) = filterTop xs
    in concatMap show top ++
       "\nvoid main(){\n" ++
       concatMap show bottom ++
       "}"

-- | Filter declarations that appear at
--   the top of the file.
filterTop :: [GLSLUnit] -> ([GLSLUnit], [GLSLUnit])
filterTop (v@(Version{}) : xs) =
    let (top, bottom) = filterTop xs
    in (v : top, bottom)
filterTop (u@(Decl Uniform _ _) : xs) =
    let (top, bottom) = filterTop xs
    in (u : top, bottom)
filterTop (i@(Decl In _ _) : xs) =
    let (top, bottom) = filterTop xs
    in (i : top, bottom)
filterTop (o@(Decl Out _ _) : xs) =
    let (top, bottom) = filterTop xs
    in (o : top, bottom)
filterTop (x : xs) =
    let (top, bottom) = filterTop xs
    in (top, x : bottom)
filterTop [] = ([], [])

-------------
-- Testing --
-------------

testShow :: IO ()
testShow = putStrLn $ programString testProg

testProg :: [GLSLUnit]
testProg = execWriter simpleProgram

simpleProgram :: GLSL ()
simpleProgram = do
    version "430 core"

    -- In variables.
    position <- inn vec3 "position"
    normal <- inn vec3 "normal"
    texCoord <- inn vec2 "texCoord"
    color <- inn vec3 "color"
    textureId <- inn float "textureId"

    -- Uniform variables.
    -- projectionMatrix <- uniform mat4 "projectionMatrix"
    viewMatrix <- uniform mat4 "viewMatrix"
    modelMatrix <- uniform mat4 "modelMatrix"
    mvpMatrix <- uniform mat4 "mvpMatrix"

    -- Out variables.
    positionCS <- out vec3 "positionCS"
    positionMS <- out vec3 "positionMS"
    normalCS <- out vec4 "normalCS"
    fragColor <- out vec3 "fragColor"
    textureCoord <- out vec2 "textureCoord"
    texId <- out int "texId"
    fogFactor <- out float "fogFactor"

    -- Pass frag color.
    fragColor #= color

    -- Create normal matrix.
    let normalMatrixE = transpose . inverse $ viewMatrix .* modelMatrix
    normalMatrix <- none mat4 "normalMatrix" $= normalMatrixE

    -- Pass the normal in camera space.
    let normalVec4 = "vec4" .$ [pack normal, pack (fltd 0.0)] :: Expression "vec4"
    normalCS #= normalMatrix .* normalVec4

    -- Pass model space position.
    positionMS #= position

    -- Pass position in camera space.
    let positionVec4 = "vec4" .$ [pack position, pack (fltd 1.0)] :: Expression "vec4"
        positionCS4 = viewMatrix .* modelMatrix .* positionVec4
    positionCS #= positionCS4 .! X .& Y .& Z

    -- Pass texture coord.
    textureCoord #= texCoord
    -- Pass texture id.
    texId #= "int" <. textureId

    -- Pass position in clip space to gl_Position.
    glPosition #= mvpMatrix .* positionVec4

    -- Fog coord is the length of gl_Position.
    fogCoord <- none float "fogCoord" $= vlength glPosition

    fogDensity <- none float "fogDensity" $= fltd 0.03
    log2 <- none float "log2" $= fltd 1.442695

    fogFactor #= "exp2" <. 
        (fogDensity .* fogDensity .* intd (-1) .*
         fogCoord .* fogCoord .* log2)

    fogFactor #= clamp (ref float "fogFactor") (fltd 0.0) (fltd 1.0)

----------------
-- Assignment --
----------------

(#=) :: (HasString a, HasString b,
         WritableQ a, ReadableQ b,
         TypeOf a ~ TypeOf b) =>
    a -> b -> GLSL ()
(#=) to from =
    tells $ AssignStatement (getString to) (getString from)
infixr 1 #=

($=) :: (HasString a, HasString b,
         WritableQ a, ReadableQ b,
         TypeOf a ~ TypeOf b) =>
    GLSL a -> b -> GLSL a
($=) to from = do
    toVal <- to
    toVal #= from
    return toVal
infixr 1 $=

------------------------
-- Numeric operations --
------------------------

(.+) :: (HasString a, HasString b,
         ReadableQ a, ReadableQ b) =>
    a -> b -> Expression (Math (TypeOf a) (TypeOf b))
(.+) left right =
    Expression (paren (getString left) ++ " + " ++ paren (getString right))
                Proxy
infixl 6 .+

(.-) :: (HasString a, HasString b,
         ReadableQ a, ReadableQ b) =>
    a -> b -> Expression (Math (TypeOf a) (TypeOf b))
(.-) left right =
    Expression (paren (getString left) ++ " - " ++ paren (getString right))
                Proxy
infixl 6 .-

(.*) :: (HasString a, HasString b,
         ReadableQ a, ReadableQ b) =>
    a -> b -> Expression (Math (TypeOf a) (TypeOf b))
(.*) left right =
    Expression (paren (getString left) ++ " * " ++ paren (getString right))
                Proxy
infixl 7 .*

(./) :: (HasString a, HasString b,
         ReadableQ a, ReadableQ b) =>
    a -> b -> Expression (Math (TypeOf a) (TypeOf b))
(./) left right =
    Expression (paren (getString left) ++ " / " ++ paren (getString right))
                Proxy
infixl 7 ./

--------------------
-- GLSL Built-ins --
--------------------

clamp :: (HasString value, ReadableQ value, NumT (TypeOf value),
          HasString bottom, ReadableQ bottom, NumT (TypeOf bottom),
          HasString top, ReadableQ top, NumT (TypeOf top),
          TypeOf value ~ TypeOf bottom,
          TypeOf value ~ TypeOf top) =>
    value -> bottom -> top -> Expression (TypeOf value)
clamp value bottom top =
    Expression ("clamp(" ++ getString value ++ "," ++
                            getString bottom ++ "," ++
                            getString top ++ ")") Proxy

transpose :: (HasString mat, ReadableQ mat,
              TypeOf mat ~ "mat4") =>
    mat -> Expression "mat4"
transpose matrix =
    Expression ("transpose(" ++ getString matrix ++ ")") Proxy

inverse :: (HasString mat, ReadableQ mat,
            TypeOf mat ~ "mat4") =>
    mat -> Expression "mat4"
inverse matrix =
    Expression ("inverse(" ++ getString matrix ++ ")") Proxy

vlength :: (HasString vec, ReadableQ vec,
            VecT (TypeOf vec)) =>
    vec -> Expression "float"
vlength vec =
    Expression ("length(" ++ getString vec ++ ")") Proxy


normalize :: (HasString vec, ReadableQ vec,
              VecT (TypeOf vec)) =>
    vec -> Expression "float"
normalize vec =
    Expression ("normalize(" ++ getString vec ++ ")") Proxy

reflect :: (HasString vec, ReadableQ vec,
            VecT (TypeOf vec)) =>
    vec -> vec -> Expression "float"
reflect veca vecb =
    Expression ("reflect(" ++ getString veca ++ ", " ++ getString vecb ++ ")")
               Proxy

glPosition :: Value "none" "vec4"
glPosition = builtIn vec4 "gl_Position"

--------------------------
-- Function application --
--------------------------

(.$) :: (HasString a,
         ReadableQ a) =>
    String -> [a] -> Expression b
(.$) = apply
infixr 3 .$

(<.) :: (HasString a,
         ReadableQ a) =>
    String -> a -> Expression b
(<.) func x = apply func [x]
infixr 3 <.

apply :: (HasString a,
          ReadableQ a) =>
    String -> [a] -> Expression b
apply func args = Expression
    (func ++ paren (intercalate ", " $ map getString args))
    Proxy

--------------------------
-- Variable declaration --
--------------------------

decl :: (KnownSymbol q, KnownSymbol t) =>
    SymbolProxy q -> SymbolProxy t -> String ->
    GLSL (Value q t)
decl qualifier glType name = do
    tells $ Decl (qualifierSymbol qualifier) (typeSymbol glType) name
    return $ Value name qualifier glType

uniform :: KnownSymbol t => SymbolProxy t -> String -> GLSL (Value "uniform" t)
uniform = decl (Proxy :: SymbolProxy "uniform")

out :: KnownSymbol t => SymbolProxy t -> String -> GLSL (Value "out" t)
out = decl (Proxy :: SymbolProxy "out")

inn :: KnownSymbol t => SymbolProxy t -> String -> GLSL (Value "in" t)
inn = decl (Proxy :: SymbolProxy "in")

none :: KnownSymbol t => SymbolProxy t -> String -> GLSL (Value "none" t)
none = decl (Proxy :: SymbolProxy "none")

builtIn :: KnownSymbol t => SymbolProxy t -> String -> Value "none" t
builtIn glType name = Value name nonep glType

ref :: KnownSymbol t => SymbolProxy t -> String -> Value "none" t
ref = builtIn

constant :: KnownSymbol t => SymbolProxy t -> String -> Expression t
constant glType name = Expression name glType

constNum :: (KnownSymbol t, Num a, Show a) => SymbolProxy t -> a -> Expression t
constNum glType value = Expression (show value) glType

constInt :: Int -> Expression "int"
constInt = constant (Proxy :: SymbolProxy "int") . show

constFloat :: Float -> Expression "float"
constFloat = constant (Proxy :: SymbolProxy "float") . show

-----------------
-- Other utils --
-----------------

version :: String -> GLSL ()
version = tells . Version

tells :: GLSLUnit -> GLSL ()
tells s = tell [s]

paren :: String -> String
paren s = '(' : s ++ ")"

fltd :: Float -> Float
fltd = id

intd :: Int -> Int
intd = id
