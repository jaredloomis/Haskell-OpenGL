module TestVals where

import Control.Applicative ((<$>), (<*>))
import System.FilePath ((</>))

import qualified Graphics.Rendering.OpenGL as GL
import qualified Graphics.Rendering.GLU.Raw as GLU
import Graphics.Rendering.OpenGL (($=))
import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.Rendering.OpenGL as GL

import qualified Graphics.GLUtil as GU

import Types
import Graphics
import Util

vertexBufferData :: [GLfloat]
vertexBufferData = [0, 0, 0,
                    1, 0, 0, 
                    0, 1, 0]

normalBufferData :: [GLfloat]
normalBufferData = [0, 0, 1,
                    0, 0, 1, 
                    0, 0, 1]

colorBufferData :: [GLfloat]
colorBufferData = [1, 0, 0,
                   0, 1, 0,
                   0, 0, 1]


vertexBufferDataWithNormals :: [GLfloat]
vertexBufferDataWithNormals = [0, 0, 0,   0, 0, 1,
                               1, 0, 0,   0, 0, 1,
                               0, 1, 0,   0, 0, 1]

mkObj :: IO Object
mkObj =
    Entity (0, 0, -3) <$> mkModel

{-
mkModel :: IO Model
mkModel =
    Model
        <$> GU.makeBuffer GL.ArrayBuffer vertexBufferData
        <*> GU.makeBuffer GL.ArrayBuffer normalBufferData
        <*> GU.makeBuffer GL.ArrayBuffer colorBufferData
        <*> return 3
        <*> createShaders
                ("shaders" </> "hello-gl.vert")
                ("shaders" </> "hello-gl.frag")
                "position"
                "normal"
                "color"
-}

mkModel :: IO Model
mkModel = do
    vb <- GU.makeBuffer GL.ArrayBuffer vertexBufferData
    nb <- GU.makeBuffer GL.ArrayBuffer normalBufferData
    cb <- GU.makeBuffer GL.ArrayBuffer colorBufferData

    createModel 
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ["position", "normal", "color"]
        [vb, nb, cb]
        3



createSuperShaders ::
    FilePath ->  -- ^ Vertex Shader.
    FilePath ->  -- ^ Fragment Shader.
    [String] ->  -- ^ Attribute Variable names.
    [GL.BufferObject] ->  -- ^ Corresponding values for attributes.
    GLint ->  -- ^ Number of vertices.
    IO SuperObject
createSuperShaders vert frag attrNames buffers vertCount = do
    program <- createShaderProgram vert frag
    attribs <- createAttribs program attrNames
    return $ SO program attribs buffers vertCount

    where
        createAttribs :: GL.Program -> [String] -> IO [GL.AttribLocation]
        createAttribs prog (attrName:xs) = do
            cur <- GL.get (GL.attribLocation prog attrName)
            rest <- createAttribs prog xs
            return $ cur:rest
        createAttribs _ [] = return []

ss1 :: IO SuperObject
ss1 = do
    vb <- GU.makeBuffer GL.ArrayBuffer vertexBufferData
    nb <- GU.makeBuffer GL.ArrayBuffer normalBufferData
    cb <- GU.makeBuffer GL.ArrayBuffer colorBufferData

    createSuperShaders
        ("shaders" </> "hello-gl.vert")
        ("shaders" </> "hello-gl.frag")
        ["position", "normal", "color"]
        [vb, nb, cb]
        3

renderSO :: SuperObject -> IO ()
renderSO object = do
    print $ (soBufferObjs object !! 0)
    glPushMatrix

    -- Move Object
    --glTranslatef objx objy objz

    -- Use object's shader
    GL.currentProgram $= Just (soShaders object)

    bindAll (soBufferObjs object) 0

    -- Do the drawing.
    glDrawArrays gl_TRIANGLES 0 (soVertCount object)

    glDisableVertexAttribArray 0

    -- Disable the object's shader.
    GL.currentProgram $= Nothing

    -- End transformations so that later commands are not
    -- affected.
    glPopMatrix
    
    where
        bindAll :: [GL.BufferObject] -> GLuint -> IO ()
        bindAll (bufferObj:others) i = do
            -- Enable the 1st attribute buffer, vertices.
            glEnableVertexAttribArray i
            -- Give OpenGL the object's vertices.
            GL.bindBuffer GL.ArrayBuffer $= Just bufferObj
            -- Tell OpenGL about the info.
            glVertexAttribPointer i 3 gl_FLOAT 0 0 GU.offset0
            bindAll others (i+1)
        bindAll [] _ = return ()
----

data SuperObject = SO {
    soShaders :: GL.Program,
    soAttribLocs :: [GL.AttribLocation],
    soBufferObjs :: [GL.BufferObject],
    soVertCount :: GLint
}

--type RenderItem = (GL.AttribLocation, GL.BufferObject)
----
