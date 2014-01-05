{-# LANGUAGE RankNTypes #-}
module Shaders where

import Foreign
import Foreign.C.String

import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL (($=))
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

bindTextures :: GLuint -> IO ()
bindTextures shader = --return ()
    bindTexturesi shader 0

    where
    bindTexturesi s i = do

        --GL.textureBinding GL.Texture2D $= Just t
        loc <- quickGetUniform s $ "textures[" ++ show i ++ "]"
        glUniform1i loc i
        --bindTexturesi shader others (i+1)

bindShaderAttribs :: [ShaderAttrib] -> IO ()
bindShaderAttribs ((attr, buf, len):rest) = do
    -- Enable the attribute buffer.
    glEnableVertexAttribArray attr
    -- Give OpenGL the information.
    glBindBuffer gl_ARRAY_BUFFER buf
    -- Tell OpenGL about the info.
    glVertexAttribPointer attr (fromIntegral len) gl_FLOAT 0 0 GU.offset0
    bindShaderAttribs rest
bindShaderAttribs [] = return ()

disableShaderAttribs :: [ShaderAttrib] -> IO ()
disableShaderAttribs ((attr, _, _):rest) = do
    -- Disable the attribute buffer.
    glDisableVertexAttribArray attr
    disableShaderAttribs rest
disableShaderAttribs [] = return ()

bindWorld :: World -> GLuint -> IO ()
bindWorld world shader =
    bindUniforms shader $ worldUniforms world

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
