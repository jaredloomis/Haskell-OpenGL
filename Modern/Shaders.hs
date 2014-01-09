{-# LANGUAGE RankNTypes #-}
module Shaders where

import Foreign
import Foreign.C.String
import Foreign.C.Types
import Control.Monad (when)
import Control.Applicative

import Graphics.Rendering.OpenGL as GL
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

    checkStatus gl_COMPILE_STATUS glGetShaderiv glGetShaderInfoLog sid

    return sid

checkStatus :: (Storable a1, Num a1, Eq a1, Ord a1, Integral a1) =>
    GLenum ->
    (t -> GLenum -> Ptr a1 -> IO a) ->
    (t -> a1 -> Ptr a3 -> Ptr CChar -> IO a2) ->
    t ->
    IO Bool
checkStatus statusFlag glGetFn glInfoLogFn idT = do
    let fetch info = withNewPtr (glGetFn idT info)
    status <- toBool <$> fetch statusFlag
    logLength <- fetch gl_INFO_LOG_LENGTH
    when (logLength > 0) $
        allocaArray0 (fromIntegral logLength) $ \msgPtr -> do
            glInfoLogFn idT logLength nullPtr msgPtr
            peekCString msgPtr >>=
                if status 
                    then \t -> do
                        putStr "Good: "
                        print t
                else \t -> do
                    putStr "Bad: "
                    print t
    return status

bindTextures :: [(GL.TextureObject, GLint)] -> GLuint -> IO ()
bindTextures textures shader =
    bindTexturesi shader textures 0

    where
    bindTexturesi :: GLuint -> [(GL.TextureObject, GLint)] -> GLuint -> IO ()
    bindTexturesi s ((GL.TextureObject tid, activeId):ts) i = do
        print i
        when (activeId >= 0) $ do
            glActiveTexture $ gl_TEXTURE0 + fromIntegral activeId
            glBindTexture gl_TEXTURE_2D tid

        loc <- quickGetUniform s $ "textures[" ++ show i ++ "]"
        glUniform1i loc (fromIntegral i)
        bindTexturesi s ts (i+1)
    bindTexturesi _ [] _ = return ()

unBindTextures :: GLuint -> IO ()
unBindTextures =
    unBindTexturesi 0

    where
    unBindTexturesi :: GLuint -> GLuint -> IO ()
    unBindTexturesi i amt =
        when (i < amt) $ do
            glActiveTexture $ gl_TEXTURE0 + fromIntegral i
            glBindTexture gl_TEXTURE_2D 0

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
bindUniforms shader ((name, vals):xs) = do
    let len = length vals
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

testPtr :: Ptr a -> Ptr String
testPtr = castPtr

quickGetUniform :: GLuint -> String -> IO GLint
quickGetUniform shader name = withCString name $ glGetUniformLocation shader

withNewPtr :: forall b a. Storable b => (Ptr b -> IO a) -> IO b
withNewPtr f = alloca (\p -> f p >> peek p)
