-- | Taken from / based on:
--   https://github.com/kig/tomtegebra/blob/master/Tomtegebra/Matrix.hs
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Engine.Matrix.Matrix where

import Data.List (transpose)
import Foreign.Marshal.Array (withArray)
--import Data.Time (utctDayTime)

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

import Engine.Core.World
import Engine.Graphics.Shaders
import Engine.Object.GameObject
import Engine.Model.Model
import Engine.Core.Vec

data WorldMatrices = WorldMatrices {
    matrixModel :: Matrix4x4,
    matrixView :: Matrix4x4,
    matrixProjection :: Matrix4x4
}

-- | 4x4 Matrix in the OpenGL orientation:
--   translation column is the last 4 elements.
type Matrix4x4 = [[GLfloat]]
-- | 3x3 Matrix in the OpenGL orientation.
type Matrix3x3 = [[GLfloat]]
-- | Four element GLfloat vector.
type GVector4 = [GLfloat]
-- | Three element GLfloat vector.
type GVector3 = [GLfloat]

instance Num Matrix4x4 where
    a * b =
        map (\row -> map (gdotVec row) at) b
        where at = transpose a
    a + b = applyToIndices2 a b (+)
    abs = map (map abs)
    fromInteger i =
        [
        [fromInteger i, 0, 0, 0],
        [0, fromInteger i, 0, 0],
        [0, 0, fromInteger i, 0],
        [0, 0, 0, fromInteger i]
        ]
    signum = map (map signum)

applyToIndices2 :: [[a]] -> [[b]] -> (a -> b -> c) -> [[c]]
applyToIndices2 (a:as) (b:bs) f =
    applyToIndices a b f : applyToIndices2 as bs f
applyToIndices2 _ _ _ = []

applyToIndices :: [a] -> [b] -> (a -> b -> c) -> [c]
applyToIndices (a:as) (b:bs) f =
    f a b : applyToIndices as bs f
applyToIndices _ _ _ = []

renderWorldMat :: World t -> IO ()
renderWorldMat world =
    let worldMats = calculateMatricesFromPlayer
                        (worldPlayer world)
    in renderObjectsMat world worldMats (worldEntities world)

renderObjectsMat :: World t -> WorldMatrices -> [GameObject t] -> IO ()
renderObjectsMat world wm (object:rest) = do
    let model = pentityModel object
        Vec3 objx objy objz = getPos object
        mShader = modelShader model

        -- Move Object
        modelMat = gtranslationMatrix [objx, objy, objz]

    -- Use object's shader
    glUseProgram mShader

    -- Set Matrices.
    setMatrixUniforms mShader wm{matrixModel = modelMat}

    -- Bind buffers to variable names in shader.
    setShaderAttribs $ modelShaderVars model
    --setWorldUniforms world mShader
    --bindTextures (modelTextures model) mShader

    -- Set time uniform.
    --let wState = worldState world
    --    utcTime = stateTime wState
    --    dayTime = realToFrac $ utctDayTime utcTime
    --setUniforms mShader [("time", return [dayTime])]

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (modelVertCount model)

    -- TODO: Remove if not necessary.
    -- Disable textures.
    --unBindTextures (fromIntegral . length . modelTextures $ model)

    -- Turn off VBO/VAO
    disableShaderAttribs $ modelShaderVars model

    -- Disable the object's shader.
    glUseProgram 0

    -- Continue rendering the rest of the entities in the world.
    renderObjectsMat world wm rest
renderObjectsMat _ _ [] = return ()

setMatrixUniforms :: GLuint -> WorldMatrices -> IO ()
setMatrixUniforms shader wm = do

    printMatrix $ toGLFormat $ matrixView wm
    --printMatrix $ toGLFormat $ matrixModel wm
    putStrLn "--------"

    modelMatrix <- quickGetUniform shader "modelMatrix"
    withArray (toGLFormat $ matrixModel wm)
        $ glUniformMatrix4fv modelMatrix 1 (fromIntegral gl_FALSE)

    projectionMatrix <- quickGetUniform shader "projectionMatrix"
    withArray (toGLFormat $ matrixProjection wm)
        $ glUniformMatrix4fv projectionMatrix 1 (fromIntegral gl_FALSE)

    viewMatrix <- quickGetUniform shader "viewMatrix"
    withArray (toGLFormat $ matrixView wm)
        $ glUniformMatrix4fv viewMatrix 1 (fromIntegral gl_FALSE)

calculateMatricesFromPlayer :: GameObject a -> WorldMatrices
calculateMatricesFromPlayer p@(Player{}) =
    let Vec3 px py pz = playerPosition p
        Vec3 rx ry _ = playerRotation p
        projMat = gperspectiveMatrix 45 (800/600) 0.1 100
        rotatedMatX = grotationMatrix rx [-1, 0, 0]
        rotatedMatXY = rotatedMatX * grotationMatrix ry [0, -1, 0]
        translatedMat = gtranslationMatrix [-px, -py, -pz]
        viewMat = rotatedMatXY * translatedMat
        --viewMat = calculatePlayerViewMatrix p
        modelMat = gidentityMatrix
    in WorldMatrices modelMat viewMat projMat

calculatePlayerViewMatrix :: GameObject a -> Matrix4x4
calculatePlayerViewMatrix p@(Player{}) =
    let Vec3 px py pz = playerPosition p
        Vec3 rx ry _ = playerRotation p
        eye = [px, py, pz]
        cosPitch = cos rx
        sinPitch = sin rx
        cosYaw = cos ry
        sinYaw = sin ry

        xaxis = [cosYaw, -sinPitch * sinYaw, -cosPitch * sinYaw]
        yaxis = [0, cosPitch, -sinPitch]
        zaxis = [sinYaw, sinPitch * cosYaw, cosPitch * cosYaw]
    in [
        xaxis ++ [0],
        yaxis ++ [0],
        zaxis ++ [0],
        [-gdotVec xaxis eye, -gdotVec yaxis eye, -gdotVec zaxis eye, 1]
       ]

toGLFormat :: [[GLfloat]] -> [GLfloat]
toGLFormat = concat

-- | The 'Matrix4x4' identity matrix.
gidentityMatrix :: Matrix4x4
gidentityMatrix =
    [
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,0],
        [0,0,0,1]
    ]

-- | Multiplies two matrices together.
gmatrixMul :: Matrix4x4 -> Matrix4x4 -> Matrix4x4
gmatrixMul a =
    map (\row -> map (gdotVec row) at)
    where at = transpose a

-- | Multiplies a vector by a matrix.
gmatrixMulVec :: Matrix4x4 -> GVector4 -> GVector4
gmatrixMulVec m v = map (gdotVec v) (transpose m)

-- | Returns the upper-left 3x3 matrix of a 4x4 matrix.
gmatrix4x4To3x3 :: Matrix4x4 -> Matrix3x3
gmatrix4x4To3x3 m = take 3 $ map gvec4To3 m

-- | Pads the 3x3 matrix to a 4x4 matrix with a 1 in 
--   bottom right corner and 0 elsewhere.
gmatrix3x3To4x4 :: Matrix3x3 -> Matrix4x4
gmatrix3x3To4x4 [x,y,z] = [x ++ [0], y ++ [0], z ++ [0], [0,0,0,1]]
gmatrix3x3To4x4 m = m

-- | Inverts a 4x4 orthonormal matrix with the special case trick.
ginvertMatrix4x4ON :: Matrix4x4 -> Matrix4x4
ginvertMatrix4x4ON m = -- orthonormal matrix inverse
    let [a,b,c] = transpose $ gmatrix4x4To3x3 m
        [_,_,_,t4] = m in
    let t = gvec4To3 t4 in
    [
        gvec3To4 a 0, gvec3To4 b 0, gvec3To4 c 0,
        [gdotVec a t, gdotVec b t, gdotVec c t, t4 !! 3]
    ]

--gtranslateMatrix :: Matrix4x4 -> GVector3 -> Matrix4x4
--gtranslateMatrix mat vec =
    

-- | Creates the translation matrix that translates points by the given vector.
gtranslationMatrix :: GVector3 -> Matrix4x4
gtranslationMatrix [x,y,z] =
    [[1,0,0,0],
     [0,1,0,0],
     [0,0,1,0],
     [x,y,z,1]]
gtranslationMatrix _ = gidentityMatrix

-- | Creates the scaling matrix that scales points by the factors given by the
--   vector components.
gscalingMatrix :: GVector3 -> Matrix4x4
gscalingMatrix [x,y,z] =
   [[x,0,0,0],
    [0,y,0,0],
    [0,0,z,0],
    [0,0,0,1]]
gscalingMatrix _ = gidentityMatrix

{-
-- | Creates a rotation matrix from the given angle and axis.
grotationMatrix :: GLfloat -> GVector3 -> Matrix4x4
grotationMatrix angle [x, y, z]
    | abs x == 1 = grotateX angle
    | abs y == 1 = grotateY angle
    | abs z == 1 = grotateZ angle
    | otherwise = []
grotationMatrix _ _ = []
    
grotateX :: GLfloat -> Matrix4x4
grotateX a =
    let c = cos a
        s = sin a
    in [
        [1, 0, 0, 0],
        [0, c, -s, 0],
        [0, s, c, 0],
        [0, 0, 0, 1]
       ]

grotateY :: GLfloat -> Matrix4x4
grotateY a =
    let c = cos a
        s = sin a
    in [
        [c, 0, s, 0],
        [0, 1, 0, 0],
        [-s, 0, c, 0],
        [0, 0, 0, 1]
       ]

grotateZ :: GLfloat -> Matrix4x4
grotateZ a =
    let c = cos a
        s = sin a
    in [
        [c, -s, 0, 0],
        [s, c, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
       ]
-}

grotationMatrix :: GLfloat -> GVector3 -> Matrix4x4
grotationMatrix angle axis =
    let [x,y,z] = gnormalizeVec axis
        c = cos angle
        s = sin angle
        c1 = 1-c
    in [
      [x*x*c1+c, y*x*c1+z*s, z*x*c1-y*s, 0],
      [x*y*c1-z*s, y*y*c1+c, y*z*c1+x*s, 0],
      [x*z*c1+y*s, y*z*c1-x*s, z*z*c1+c, 0],
      [0,0,0,1]
    ]

glookAtMatrix :: Vec3 GLfloat -> Vec3 GLfloat -> Vec3 GLfloat -> Matrix4x4
glookAtMatrix eye center up =
    glookAtMatrixG (vecToGVec3 eye) (vecToGVec3 center) (vecToGVec3 up)

vecToGVec3 :: Vec3 GLfloat -> GVector3
vecToGVec3 (Vec3 x y z) = [x, y, z]

-- | Creates a lookAt matrix from three vectors: the eye position, the point the
--   eye is looking at and the up vector of the eye.
glookAtMatrixG :: GVector3 -> GVector3 -> GVector3 -> Matrix4x4
glookAtMatrixG eye center up =
    let z = gdirectionVec eye center in
    let x = gnormalizeVec $ gcrossVec3 up z in
    let y = gnormalizeVec $ gcrossVec3 z x in
    gmatrixMul
        (gmatrix3x3To4x4 $ transpose [x,y,z])
        (gtranslationMatrix (gnegateVec eye))

-- | Creates a frustumMatrix from the given
--   left, right, bottom, top, znear and zfar
--   values for the view frustum.
gfrustumMatrix ::
    GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Matrix4x4
gfrustumMatrix left right bottom top znear zfar =
    let x = 2*znear/(right-left)
        y = 2*znear/(top-bottom)
        a = (right+left)/(right-left)
        b = (top+bottom)/(top-bottom)
        c = -(zfar+znear)/(zfar-znear)
        d = -2*zfar*znear/(zfar-znear)
    in
       [[x, 0, 0, 0],
        [0, y, 0, 0],
        [a, b, c, -1],
        [0, 0, d, 0]]

-- | Creates a perspective projection matrix for the given field-of-view,
--   screen aspect ratio, znear and zfar.
gperspectiveMatrix :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> Matrix4x4
gperspectiveMatrix fovy aspect znear zfar =
    let ymax = znear * tan (fovy * pi / 360.0)
        ymin = -ymax
        xmin = ymin * aspect
        xmax = ymax * aspect
    in gfrustumMatrix xmin xmax ymin ymax znear zfar

-- | Normalizes a vector to a unit vector.
gnormalizeVec :: [GLfloat] -> [GLfloat]
gnormalizeVec v = gscaleVec (recip $ glengthVec v) v
-- | Scales a vector by a scalar
gscaleVec :: GLfloat -> [GLfloat] -> [GLfloat]
gscaleVec s = map (s*)
-- | Computes the length of a vector.
glengthVec :: [GLfloat] -> GLfloat
glengthVec v = sqrt.sum $ map square v

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
gsubV3 :: (Num a) => GL.Vertex3 a -> GL.Vertex3 a -> GL.Vertex3 a
gsubV3 (GL.Vertex3 u0 u1 u2) (GL.Vertex3 v0 v1 v2) =
    GL.Vertex3 (u0-v0) (u1-v1) (u2-v2)
-- | Cross product of two 3-vectors.
gcrossV3 :: (Num a) => GL.Vertex3 a -> GL.Vertex3 a -> GL.Vertex3 a
gcrossV3 (GL.Vertex3 u0 u1 u2) (GL.Vertex3 v0 v1 v2) = 
    GL.Vertex3 (u1*v2-u2*v1) (u2*v0-u0*v2) (u0*v1-u1*v0)
-- | Normalizes a vector to a unit vector.
gnormalizeV3 :: (Floating a, Fractional a) => GL.Vertex3 a -> GL.Normal3 a
gnormalizeV3 v = let GL.Vertex3 a b c = gscaleV3 (recip $ glengthV3 v) v
                 in GL.Normal3 a b c
-- | Scales a vector by a scalar
gscaleV3 :: (Num a) => a -> GL.Vertex3 a -> GL.Vertex3 a
gscaleV3 s (GL.Vertex3 a b c) = GL.Vertex3 (s*a) (s*b) (s*c)
-- | Computes the length of a vector.
glengthV3 :: (Floating a) => GL.Vertex3 a -> a
glengthV3 (GL.Vertex3 a b c) = sqrt (a*a + b*b + c*c)

-- | Converts a 4-vector into a 3-vector by dropping the fourth element.
gvec4To3 :: GVector4 -> GVector3
gvec4To3 = take 3

-- | Converts a 3-vector into a 4-vector by appending the given value to it.
gvec3To4 :: GVector3 -> GLfloat -> GVector4
gvec3To4 v i = v ++ [i]

-- | Multiplies a GLfloat by itself.
square :: GLfloat -> GLfloat
square x = x * x
