module Engine.Matrix.Matrix3 where

import Graphics.Rendering.OpenGL

import Engine.Matrix.Matrix
import Engine.Core.Vec

setUp :: IO ()
setUp = do
    let projection = gperspectiveMatrix 45 (4/3) 0.1 100
        view = glookAtMatrix (Vec3 0 0 0) (Vec3 4 3 3) (Vec3 0 1 0)
        model = gidentityMatrix

    return ()
