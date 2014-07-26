module Engine.Graphics.Shaders (
    ShaderAttrib(..), ShaderUniform, Shader(..),
    createShaderAttribs, loadProgram, bindTextures, unBindTextures,
    setShaderAttribs, disableShaderAttribs, setUniforms,
    getMatrixFromGL, quickGetUniform, getAttrLocs,
    printMatrix, setUniform, setUniformAndRemember,
    setUniformsAndRemember, findUniformLocation,
    findMaybeUniformLocation, findUniformLocationAndRemember,
    loadShadersProgram, emptyShader,
    wrapShader, loadShaderCode
) where

import Control.Monad (when)
import Data.Maybe (fromJust, isJust)
import Control.Applicative ((<$>))
import Foreign
    (with, nullPtr, Ptr, Storable, toBool, allocaArray0)
import Foreign.C.String (withCString, peekCString)
import Foreign.C.Types (CChar)

import Graphics.Rendering.OpenGL.Raw

import Engine.Graphics.GraphicsUtils
    (withNewPtr, withNewPtrArray, offset0)
import Engine.Graphics.Textures (Texture)

-- | An OpenGL program id and some uniform
--   ids so that glUniform* doesn't have to be
--   called more than once.
data Shader = Shader {
    shaderId :: GLuint,
    shaderUniforms :: [(String, GLint)]
} deriving (Show, Eq)

-- | Attrib id, Buffer id, size of attrib.
data ShaderAttrib = ShaderAttrib !GLuint !GLuint !GLuint
    deriving (Show, Eq)
-- | Name, Values
type ShaderUniform = (String, IO [GLfloat])

emptyShader :: Shader
emptyShader = Shader (-1) []
{-# INLINE emptyShader #-}

wrapShader :: GLuint -> Shader
wrapShader program = Shader program []
{-# INLINE wrapShader #-}

-- | Simply pack the arguments together into a list of
--   ShaderAttribs.
createShaderAttribs :: [GLuint] -> [GLuint] -> [GLuint] -> [ShaderAttrib]
createShaderAttribs (attr:attrs) (buff:buffs) (size:sizes) =
    ShaderAttrib attr buff size : createShaderAttribs attrs buffs sizes
createShaderAttribs [] [] [] = []
createShaderAttribs _ _ _ =
    error $ "Model.createShaderAttribs: "
        ++ "given lists are not the same length."

-- | Loads a pair of vertex and fragment shaders
--   given the two FilePaths.
loadProgram :: FilePath -> FilePath -> IO GLuint
loadProgram vertFP fragFP =
    loadShadersProgram
        [(gl_VERTEX_SHADER,   vertFP),
         (gl_FRAGMENT_SHADER, fragFP)]

-- | Loads a list of (shader type, shader files).
loadShadersProgram :: [(GLuint, FilePath)] -> IO GLuint
loadShadersProgram shaders = do
    shaderIds <- mapM (uncurry loadShader) shaders
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
loadShader shaderTypeFlag filePath =
    readFile filePath >>= loadShaderCode shaderTypeFlag


loadShaderCode :: GLenum -> String -> IO GLuint
loadShaderCode shaderTypeFlag code = do
    sid <- glCreateShader shaderTypeFlag
    withCString code $ \codePtr ->
        with codePtr $ \codePtrPtr ->
            glShaderSource sid 1 codePtrPtr nullPtr
    glCompileShader sid

    _ <- checkStatus gl_COMPILE_STATUS glGetShaderiv glGetShaderInfoLog sid

    return sid

-- | Gets status from OpenGL. Supply flag to check,
--   function to get status with, infoLog function,
--   and shader id.
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
            _ <- glInfoLogFn idT logLength nullPtr msgPtr
            peekCString msgPtr >>=
                if status 
                    then \t -> do
                        putStr "Successfully loaded shader: "
                        print t
                else \t -> do
                    putStr "Error loading shader: "
                    print t
    return status

-- | Binds textures to prepare for being sent to the
--   shader. Calls glBindTexture and sets the "textures[]"
--   uniform in shader.
bindTextures :: [Texture] -> GLuint -> IO ()
bindTextures textures shader =
    bindTexturesi shader textures 0

  where
    bindTexturesi :: GLuint -> [Texture] -> GLuint -> IO ()
    bindTexturesi s ((tid, _):ts) i = do
        glActiveTexture $ gl_TEXTURE0 + i
        glBindTexture gl_TEXTURE_2D tid

        loc <- quickGetUniform s $ "textures[" ++ show i ++ "]"
        glUniform1i loc (fromIntegral i)
        bindTexturesi s ts (i+1)
    bindTexturesi _ [] _ = return ()

-- | Clear out active textures. Call after drawing?
unBindTextures :: GLuint -> IO ()
unBindTextures =
    unBindTexturesi 0

    where
    unBindTexturesi :: GLuint -> GLuint -> IO ()
    unBindTexturesi i amt =
        when (i < amt) $ do
            glActiveTexture $ gl_TEXTURE0 + fromIntegral i
            glBindTexture gl_TEXTURE_2D 0

-- | Binds a list of ShaderAttribs.
setShaderAttribs :: [ShaderAttrib] -> IO ()
setShaderAttribs (ShaderAttrib attr buf len : rest) = do
    -- Enable the attribute buffer.
    glEnableVertexAttribArray attr
    -- Give OpenGL the information.
    glBindBuffer gl_ARRAY_BUFFER buf
    -- Tell OpenGL about the info.
    glVertexAttribPointer attr (fromIntegral len) gl_FLOAT 0 0 offset0
    setShaderAttribs rest
setShaderAttribs [] = return ()

-- | Disables a list of ShaderAttribs. Call after drawing?
disableShaderAttribs :: [ShaderAttrib] -> IO ()
disableShaderAttribs (ShaderAttrib attr _ _ : rest) = do
    -- Disable the attribute buffer.
    glDisableVertexAttribArray attr
    disableShaderAttribs rest
disableShaderAttribs [] = return ()

setUniformsAndRemember :: Shader -> [ShaderUniform] -> IO Shader
setUniformsAndRemember shader ((name, valsIo):rest) = do
    vals <- valsIo
    let len = length vals
    let uniloc = findMaybeUniformLocation shader name
    loc <- maybe
        (withCString name $ glGetUniformLocation $ shaderId shader)
        return uniloc

    case len of
        1 -> glUniform1f loc $ head vals
        2 -> glUniform2f loc (head vals) $ vals !! 1
        3 -> glUniform3f loc (head vals) (vals !! 1) (vals !! 2)
        4 -> glUniform4f loc (head vals) (vals !! 1) (vals !! 2) (vals !! 3)
        _ -> putStrLn $ "Bad length value in ShaderUniform " 
                        ++ name ++ ": " ++ show len

    if isJust uniloc
        then
            let newShader = shader{shaderUniforms =
                    (name, loc) : shaderUniforms shader}
            in setUniformsAndRemember newShader rest
    else setUniformsAndRemember shader rest
setUniformsAndRemember shader _ = return shader

setUniformAndRemember :: Shader -> ShaderUniform -> IO Shader
setUniformAndRemember shader (name, valsIo) = do
    vals <- valsIo
    let len = length vals
    
    loc <- let uniloc = findMaybeUniformLocation shader name
           in maybe (withCString name $ glGetUniformLocation $ shaderId shader)
                    return uniloc

    case len of
        1 -> glUniform1f loc $ head vals
        2 -> glUniform2f loc (head vals) $ vals !! 1
        3 -> glUniform3f loc (head vals) (vals !! 1) (vals !! 2)
        4 -> glUniform4f loc (head vals) (vals !! 1) (vals !! 2) (vals !! 3)
        _ -> putStrLn $ "Bad length value in ShaderUniform " 
                        ++ name ++ ": " ++ show len

    return $ shader{shaderUniforms = (name, loc) : shaderUniforms shader}

findUniformLocationAndRemember :: Shader -> String -> IO (Shader, GLint)
findUniformLocationAndRemember shader name =
    let found = findMaybeUniformLocation shader name
    in if isJust found
            then return (shader, fromJust found)
        else do
            loc <- quickGetUniform (shaderId shader) name
            return (shader{
                shaderUniforms =
                    (name, loc) : shaderUniforms shader
            }, loc)

findUniformLocation :: Shader -> String -> IO GLint
findUniformLocation shader name =
    let found = findMaybeUniformLocation shader name
    in maybe (quickGetUniform (shaderId shader) name) return found

findMaybeUniformLocation :: Shader -> String -> Maybe GLint
findMaybeUniformLocation shader =
    findUniformLocation' (shaderUniforms shader)
    where
        findUniformLocation' ((curName, curId):rest) searchName =
            if curName == searchName
                then Just curId
            else findUniformLocation' rest searchName
        findUniformLocation' _ _ = Nothing

-- | Calls glUniformxf on all Uniforms, given the
--   shader.
setUniforms :: GLuint -> [ShaderUniform] -> IO ()
setUniforms = mapM_ . setUniform

setUniform :: GLuint -> ShaderUniform -> IO ()
setUniform shader (name, valsIo) = do
    vals <- valsIo
    let len = length vals
    
    loc <- withCString name $ glGetUniformLocation shader

    case len of
        1 -> glUniform1f loc $ head vals
        2 -> glUniform2f loc (head vals) $ vals !! 1
        3 -> glUniform3f loc (head vals) (vals !! 1) (vals !! 2)
        4 -> glUniform4f loc (head vals) (vals !! 1) (vals !! 2) (vals !! 3)
        _ -> putStrLn $ "Bad length value in ShaderUniform " 
                        ++ name ++ ": " ++ show len

-- | Retrieve location of each shader attrib
--   in the given program.
getAttrLocs :: GLuint -> [String] -> IO [GLuint]
getAttrLocs prog (attrName:xs) = do
    curN <- withCString attrName $ glGetAttribLocation prog
    let cur = fromIntegral curN
    rest <- getAttrLocs prog xs
    return $ cur:rest
getAttrLocs _ [] = return []

-- | Get a matrix from OpenGL.
getMatrixFromGL :: GLenum -> IO [GLfloat]
getMatrixFromGL mat = withNewPtrArray (glGetFloatv mat) 16

printMatrix :: [GLfloat] -> IO ()
printMatrix (a:b:c:d:xs) = do
    print [a, b, c, d]
    printMatrix xs
printMatrix _ = return ()

-- | Utility function to get a uniform location from a shader.
quickGetUniform :: GLuint -> String -> IO GLint
quickGetUniform shader name =
    withCString name $ glGetUniformLocation shader
