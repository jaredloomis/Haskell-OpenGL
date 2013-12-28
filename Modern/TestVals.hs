module TestVals where

import Graphics.Rendering.OpenGL.Raw

vertexBufferData :: [GLfloat]
vertexBufferData = [-0.5, -0.5, 0.0,
                    0.5, -0.5, 0.0, 
                    -0.5, 0.5, 0.0]

vertexBufferDataWithNormals :: [GLfloat]
vertexBufferDataWithNormals = [0, 0, 0,   0, 0, 1,
                               1, 0, 0,   0, 0, 1,
                               0, 1, 0,   0, 0, 1]
