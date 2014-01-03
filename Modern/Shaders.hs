{-# LANGUAGE RankNTypes #-}
module Shaders where

import Foreign
import Foreign.C.String
import Control.Applicative ((<$>), (<*>))

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw

import qualified Graphics.GLUtil as GU

import Types

-- | Loads a pair of vertex and fragment shaders
--   given the two FilePaths.
loadProgram :: FilePath -> FilePath -> IO GLuint
loadProgram vertFP fragFP = do
    shaderIds <- mapM (uncurry loadShader)
        [(gl_VERTEX_SHADER, vertFP)
        ,(gl_FRAGMENT_SHADER, fragFP)]
    progId <- glCreateProgram
    mapM_ (glAttachShader progId) shaderIds
    glLinkProgram progId
    mapM_ glDeleteShader shaderIds

    return progId

-- | Loads a single shader of given type,
--   usually either gl_VERTEX_SHADER or
--   gl_FRAGMENT_SHADER.
--   Uses given FilePath as shader.
loadShader :: GLenum -> FilePath -> IO GLuint
loadShader shaderTypeFlag filePath = do
    code <- readFile filePath
    sid <- glCreateShader shaderTypeFlag
    withCString code $ \codePtr ->
        with codePtr $ \codePtrPtr ->
            glShaderSource sid 1 codePtrPtr nullPtr
    glCompileShader sid
    return sid

-- | Old Shader Func.
--   Creates a Shaders value from given information.
createShaders :: FilePath -> FilePath -> String -> String -> String -> IO Shaders
createShaders vert frag vertsVar normsVar colorVar = do
    prog <- createShaderProgram vert frag
    Shaders prog
        <$> GL.get (GL.attribLocation prog vertsVar)
        <*> GL.get (GL.attribLocation prog normsVar)
        <*> GL.get (GL.attribLocation prog colorVar)

-- | Old Shader Func.
--   Creates a Program from given information.
createShaderProgram :: FilePath -> FilePath -> IO GL.Program
createShaderProgram vert frag = do
    vs <- GU.loadShader GL.VertexShader vert
    fs <- GU.loadShader GL.FragmentShader frag
    GU.linkShaderProgram [vs, fs]

-- | Takes two [GLuint] arguments:
--      - IDs of buffers
--      - Location of attribute values in the shader
--   Binds the buffers to the attribute values.
bindAll :: [GLuint] -> [GLuint] -> IO ()
bindAll (curId:otherIds) (attribLoc:otherLocs) = do
    -- Enable the 1st attribute buffer, vertices.
    glEnableVertexAttribArray attribLoc
    -- Give OpenGL the object's vertices.
    --GL.bindBuffer GL.ArrayBuffer $= Just bufferObj
    glBindBuffer gl_ARRAY_BUFFER curId
    -- Tell OpenGL about the info.
    glVertexAttribPointer attribLoc 3 gl_FLOAT 0 0 GU.offset0
    bindAll otherIds otherLocs
bindAll _ [] = glEnableVertexAttribArray 0

bindUniforms :: GLuint -> [ShaderUniform] -> IO ()
bindUniforms shader ((name, len, vals):xs) = do
    loc <- withCString name $ glGetUniformLocation shader

    case len of
        1 -> glUniform1f loc $ head vals
        2 -> glUniform2f loc (head vals) $ vals !! 1
        3 -> glUniform3f loc (head vals) (vals !! 1) (vals !! 2)
        4 -> glUniform4f loc (head vals) (vals !! 1) (vals !! 2) (vals !! 3)
        _ -> putStrLn $ "Bad length value in ShaderUniform " 
                        ++ name ++ ": " ++ show len

    bindUniforms shader xs
bindUniforms _ [] = return ()

quickGetUniform :: GLuint -> String -> IO GLint
quickGetUniform shader name = withCString name $ glGetUniformLocation shader
