module Engine.Matrix.Matrix2 where
import Data.List
import Foreign.Ptr

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL
    (($=), GLmatrix, GLfloat)

import Engine.Core.Vec

data Mat2 a = Mat2 !(Vec2 a) !(Vec2 a)
    deriving (Show, Eq)
data Mat3 a = Mat3 !(Vec3 a) !(Vec3 a) !(Vec3 a)
    deriving (Show, Eq)
data Mat4 a = Mat4 !(Vec4 a) !(Vec4 a) !(Vec4 a) !(Vec4 a)
    deriving (Show, Eq)

grotate :: GLfloat -> GL.Vector3 GLfloat -> IO ()
grotate = GL.rotate

gtranslate :: GL.Vector3 GLfloat -> IO ()
gtranslate = GL.translate 

glScale3 :: GL.Vector3 GLfloat -> IO ()
glScale3 (GL.Vector3 x y z) = GL.scale x y z

glScale :: GLfloat -> IO ()
glScale s = GL.scale s s s

-- | Multiplies the current OpenGL matrix with the given 'Mat4'.
gmultMatrix :: Mat4 GLfloat -> IO ()
gmultMatrix m = do
    gm <- gnewMatrix m
    GL.multMatrix gm

gloadIdentity :: IO ()
gloadIdentity = gloadMatrix gidentityMatrix

-- | Loads the given 'Mat4' as the current OpenGL matrix.
gloadMatrix :: Mat4 GLfloat -> IO ()
gloadMatrix m = do
    gm <- gnewMatrix m
    GL.matrix Nothing $= gm

-- | Converts the 'Mat4' into a 'GLmatrix' 'GLfloat'
gnewMatrix :: Mat4 GLfloat-> IO (GLmatrix GLfloat)
gnewMatrix m = GL.newMatrix GL.ColumnMajor $ concat m :: IO (GLmatrix GLfloat)

-- | 'withMatrix' wrapper for 'withMat4'
gwithMat4 :: Mat4 GLfloat -> (GL.MatrixOrder -> Ptr GLfloat -> IO a) -> IO a
gwithMat4 mat4 m = do
    mat <- gnewMatrix mat4
    GL.withMatrix mat m

-- | The 'Mat4' identity matrix.
gidentityMatrix :: Mat4 GLfloat
gidentityMatrix =
    [
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,0],
        [0,0,0,1]
    ]

-- | Multiplies two matrices together.
gmatrixMul :: Mat4 GLfloat -> Mat4 GLfloat -> Mat4 GLfloat
gmatrixMul a =
    map (\row -> map (gdotVec row) at)
    where at = transpose a

-- | Multiplies a vector by a matrix.
gmatrixMulVec :: Mat4 GLfloat -> Vec4 GLfloat -> Vec4 GLfloat
gmatrixMulVec m v = map (gdotVec v) (transpose m)

-- | Returns the upper-left 3x3 matrix of a 4x4 matrix.
gmatrix4x4To3x3 :: Mat4 GLfloat -> Mat4 GLfloat
gmatrix4x4To3x3 m = take 3 $ map gvec4To3 m

-- | Pads the 3x3 matrix to a 4x4 matrix with a 1 in bottom right corner and 0 elsewhere.
gmatrix3x3To4x4 :: Mat3 GLfloat -> Mat4 GLfloat
gmatrix3x3To4x4 [x,y,z] = [x ++ [0], y ++ [0], z ++ [0], [0,0,0,1]]
gmatrix3x3To4x4 m = m

-- | Inverts a 4x4 orthonormal matrix with the special case trick.
ginvertMat4ON :: Mat4 GLfloat -> Mat4 GLfloat
ginvertMat4ON m = -- orthonormal matrix inverse
    let [a,b,c] = transpose $ gmatrix4x4To3x3 m
        [_,_,_,t4] = m in
    let t = gvec4To3 t4 in
    [
        gvec3To4 a 0, gvec3To4 b 0, gvec3To4 c 0,
        [gdotVec a t, gdotVec b t, gdotVec c t, t4 !! 3]
    ]

-- | Creates the translation matrix that translates points by the given vector.
gtranslationMatrix :: Vec3 GLfloat -> Mat4 GLfloat
gtranslationMatrix [x,y,z] = [[1,0,0,0], [0,1,0,0], [0,0,1,0], [x,y,z,1]]
gtranslationMatrix _ = gidentityMatrix

-- | Creates the scaling matrix that scales points by the factors given by the
--   vector components.
gscalingMatrix :: Vec3 GLfloat -> Mat4 GLfloat
gscalingMatrix [x,y,z] = [[x,0,0,0], [0,y,0,0], [0,0,z,0], [0,0,0,1]]
gscalingMatrix _ = gidentityMatrix

-- | Creates a rotation matrix from the given angle and axis.
grotationMatrix :: GLfloat -> Vec3 GLfloat -> Mat4 GLfloat
grotationMatrix angle axis =
    let [x,y,z] = gnormalizeVec axis
        c = cos angle
        s = sin angle
        c1 = 1-c
    in Mat4
        (Vec4 (x*x*c1+c) (y*x*c1+z*s) (z*x*c1-y*s) 0)
        (Vec4 (x*y*c1-z*s) (y*y*c1+c) (y*z*c1+x*s) 0)
        (Vec4 (x*z*c1+y*s) (y*z*c1-x*s) (z*z*c1+c) 0)
        (Vec4 0 0 0 1)

-- | Creates a lookAt matrix from three vectors: the eye position, the point the
--   eye is looking at and the up vector of the eye.
glookAtMatrix ::
    Vec3 GLfloat -> Vec3 GLfloat -> Vec3 GLfloat -> Mat4 GLfloat
glookAtMatrix eye center up =
    let z = gdirectionVec eye center in
    let x = gnormalizeVec $ gcrossVec3 up z in
    let y = gnormalizeVec $ gcrossVec3 z x in
    gmatrixMul (gmatrix3x3To4x4 $ transpose [x,y,z]) (gtranslationMatrix (gnegateVec eye))

-- | Creates a frustumMatrix from the given left, right, bottom, top, znear and zfar
--   values for the view frustum.
gfrustumMatrix ::
    GLfloat -> GLfloat ->
    GLfloat -> GLfloat ->
    GLfloat -> GLfloat ->
    Mat4 GLfloat
gfrustumMatrix left right bottom top znear zfar =
    let x = 2*znear/(right-left)
        y = 2*znear/(top-bottom)
        a = (right+left)/(right-left)
        b = (top+bottom)/(top-bottom)
        c = -(zfar+znear)/(zfar-znear)
        d = -2*zfar*znear/(zfar-znear)
    in Mat4
        (Vec4 x 0 0 0)
        (Vec4 0 y 0 0)
        (Vec4 a b c (-1))
        (Vec4 0 0 d 0)
    {-[
      [x, 0, 0, 0],
      [0, y, 0, 0],
      [a, b, c, -1],
      [0, 0, d, 0]
    ]-}

-- | Creates a perspective projection matrix for the given field-of-view,
--   screen aspect ratio, znear and zfar.
gperspectiveMatrix ::
    GLfloat -> GLfloat -> GLfloat -> GLfloat -> Mat4 GLfloat
gperspectiveMatrix fovy aspect znear zfar =
    let ymax = znear * tan (fovy * pi / 360.0) in
    let ymin = -ymax in
    let xmin = ymin * aspect
        xmax = ymax * aspect in
    gfrustumMatrix xmin xmax ymin ymax znear zfar

-- | Normalizes a vector to a unit vector.
gnormalizeVec :: [GLfloat] -> [GLfloat]
gnormalizeVec v = gscaleVec (recip $ glengthVec v) v
-- | Scales a vector by a scalar
gscaleVec :: GLfloat -> [GLfloat] -> [GLfloat]
gscaleVec s = map (s*)
-- | Computes the length of a vector.
glengthVec :: [GLfloat] -> GLfloat
glengthVec v = sqrt . sum $ map square v

-- | Inner product of two vectors.
ginnerVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
ginnerVec = zipWith (*)
-- | Adds two vectors together.
gaddVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
gaddVec = zipWith (+)
-- | Subtracts a vector from another.
gsubVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
gsubVec = zipWith (-)
-- | Negates a vector.
gnegateVec :: [GLfloat] -> [GLfloat]
gnegateVec = map negate
-- | Computes the direction unit vector between two vectors.
gdirectionVec :: [GLfloat] -> [GLfloat] -> [GLfloat]
gdirectionVec u v = gnormalizeVec (gsubVec u v)
-- | Vector dot product.
gdotVec :: [GLfloat] -> [GLfloat] -> GLfloat
gdotVec a b = sum $ ginnerVec a b
-- | Cross product of two 3-vectors.
gcrossVec3 :: [GLfloat] -> [GLfloat] -> [GLfloat]
gcrossVec3 [u0,u1,u2] [v0,v1,v2] = [u1*v2-u2*v1, u2*v0-u0*v2, u0*v1-u1*v0]
gcrossVec3 _ _ = [0,0,1]

-- | Substract two 3-vectors
--gsubV3 :: GL.Vertex3 a -> GL.Vertex3 a -> GL.Vertex3 a
--gsubV3 (GL.Vertex3 u0 u1 u2) (GL.Vertex3 v0 v1 v2) = GL.Vertex3 (u0-v0) (u1-v1) (u2-v2)
-- | Cross product of two 3-vectors.
gcrossV3 :: Vec3 GLfloat -> Vec3 GLfloat -> Vec3 GLfloat
gcrossV3 (Vec3 u0 u1 u2) (Vec3 v0 v1 v2) =
    Vec3 (u1*v2-u2*v1) (u2*v0-u0*v2) (u0*v1-u1*v0)
-- | Normalizes a vector to a unit vector.
gnormalizeV3 :: Vec3 GLfloat -> GL.Normal3 GLfloat
gnormalizeV3 v = let Vec3 a b c = gscaleV3 (recip $ glengthV3 v) v
                 in GL.Normal3 a b c
-- | Scales a vector by a scalar
gscaleV3 :: GLfloat -> Vec3 GLfloat -> Vec3 GLfloat
gscaleV3 s (Vec3 a b c) = Vec3 (s*a) (s*b) (s*c)
-- | Computes the length of a vector.
glengthV3 :: Vec3 GLfloat -> GLfloat
glengthV3 (Vec3 a b c) = sqrt (a*a + b*b + c*c)


-- | Converts a 4-vector into a 3-vector by dropping the fourth element.
gvec4To3 :: Vec4 GLfloat -> Vec3 GLfloat
gvec4To3 (Vec4 x y z w) = (Vec3 x y z)

-- | Converts a 3-vector into a 4-vector by appending the given value to it.
gvec3To4 :: Vec3 GLfloat -> GLfloat -> Vec4 GLfloat
gvec3To4 (Vec3 x y z) w = Vec4 x y z w

-- | Multiplies a GLfloat by itself.
square :: GLfloat -> GLfloat
square x = x * x
