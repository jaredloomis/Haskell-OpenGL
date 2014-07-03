{-# LANGUAGE NoMonomorphismRestriction #-}
module Engine.Matrix.Matrix where

import Data.Vec

import Foreign.Marshal.Array (withArray)
import Graphics.Rendering.OpenGL.Raw
    (GLfloat, glUniformMatrix4fv, gl_FALSE)

import Engine.Core.Types (Player(..))
import Engine.Core.HasPosition (HasPosition(..), HasRotation(..))
import Engine.Graphics.Shaders (Shader, findUniformLocationAndRemember)

data WorldMatrices = WorldMatrices {
    matrixModel :: Mat44 GLfloat,
    matrixView :: Mat44 GLfloat,
    matrixProjection :: Mat44 GLfloat
} deriving (Show, Eq)
emptyMatrices :: WorldMatrices
emptyMatrices = WorldMatrices 1 1 1

-- | Pass matrices to OpenGL shader.
setMatrixUniforms :: Shader -> WorldMatrices -> IO Shader
setMatrixUniforms shader wm = do
    -- Set model matrix.
    (shader', modelMatrix) <- findUniformLocationAndRemember shader "modelMatrix"
    withArray (toGLFormat $ matrixModel wm)
        $ glUniformMatrix4fv modelMatrix 1 (fromIntegral gl_FALSE)

    -- Set projection matrix.
    (shader'', projectionMatrix) <- findUniformLocationAndRemember shader'
                                    "projectionMatrix"
    withArray (toGLFormat $ matrixProjection wm)
        $ glUniformMatrix4fv projectionMatrix 1 (fromIntegral gl_FALSE)

    -- Set view matrix.
    (shader''', viewMatrix) <- findUniformLocationAndRemember shader'' "viewMatrix"
    withArray (toGLFormat $ matrixView wm)
        $ glUniformMatrix4fv viewMatrix 1 (fromIntegral gl_FALSE)

    -- Set mvp matrix.
    (shader'''', mvpMatrix) <- findUniformLocationAndRemember shader''' "mvpMatrix"
    withArray
        (toGLFormat $ matrixProjection wm `multmm` matrixView wm `multmm` matrixModel wm)
        $ glUniformMatrix4fv mvpMatrix 1 (fromIntegral gl_FALSE)

    return shader''''

-- | Calculate the "WorldMatrices" from Player
--   and dimensions of the window.
calculateMatricesFromPlayer :: Player a -> (Int, Int) -> WorldMatrices
calculateMatricesFromPlayer p (width, height) =
    let px :. py :. pz :. () = playerPosition p
        rx :. ry :. rz :. () = playerRotation p
        -- Calculate projection matrix.
        projMat = perspective 0.1 100 45 (fromIntegral width / fromIntegral height)
        -- Calculate view matrix.
        rotatedX = rotationX $ -radians rx
        rotatedY = rotationY $ -radians ry
        rotatedZ = rotationZ $ -radians rz
        rotatedMat = rotatedX `multmm` rotatedY `multmm` rotatedZ
        viewMat = rotatedMat `multmm` translation ((-px) :. (-py) :. (-pz) :. ())
        -- Model matrix is identity.
        modelMat = identity 
    in WorldMatrices modelMat viewMat projMat
  where
    radians = (*(pi/180))

-- | Calculate the model matrix of something
--   with position and rotation.
calculateModelMatrix :: (HasPosition a, HasRotation a) => a -> Mat44 GLfloat
calculateModelMatrix object =
    let rx :. ry :. rz :. () = getRot object
        x :. y :. z :. () = getPos object
    in translate (x :. y :. z :. ()) $ rotationEuler (rx :. ry :. rz :. ())

-- | Translate from Vec's format (row-major) to
--   OpenGL format (column-major).
toGLFormat :: Mat44 GLfloat -> [GLfloat]
toGLFormat = toRowMajor . matToLists
  where
    toRowMajor [(a:as), (b:bs), (c:cs), (d:ds)] =
        a : b : c : d : toRowMajor [as, bs, cs, ds]
    toRowMajor [[],[],[],[]] = []
    toRowMajor _ = error "Engine.Matrix.NewMatrix.toGLFormat"
