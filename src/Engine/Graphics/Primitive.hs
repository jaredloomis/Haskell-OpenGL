{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE OverloadedStrings #-}
module Engine.Graphics.Primitive where

import Control.Monad (unless, when)
import Control.Applicative ((<$>))
import Data.Monoid ((<>), mempty)

import Foreign (Word8)
import Unsafe.Coerce (unsafeCoerce)
import Foreign.Ptr (Ptr, nullPtr)
import Foreign.Marshal.Array (withArray, withArrayLen)
import Foreign.Storable (Storable, sizeOf)

import Data.Vec
    ((:.)(..), Vec3, Vec2, Mat44, matToLists, perspective,
     multmm, translation, matToList,
     rotationEuler)
import qualified Data.Vec as V (map)

import Data.Time.Clock (utctDayTime, getCurrentTime)

import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C


import qualified Codec.Picture as Juicy
import qualified Codec.Picture.Types as JTypes
import qualified Data.Vector.Storable as V (unsafeWith)

import Graphics.Rendering.OpenGL (($=))
import qualified Graphics.Rendering.OpenGL as GL
import Graphics.Rendering.OpenGL.Raw (glUniformMatrix4fv)
import qualified Graphics.UI.GLFW as GLFW

import Engine.Graphics.GLSL hiding (($=), simpleProgram)

-------------
-- Testing --
-------------

data World = World {
    worldPlayer :: Player,
    worldObj :: Object
    }

testWorld :: World
testWorld = World (Player
    (0 :. 0 :. 0 :. ()) (0 :. 0 :. 0 :. ())
    (0 :. 0 :. ()) (0 :. 0 :. ())) testObj

data Player = Player (Vec3 GL.GLfloat) (Vec3 GL.GLfloat)
                     (Vec2 GL.GLfloat) (Vec2 GL.GLfloat)

data Object = Object (Vec3 GL.GLfloat) [Vec3 GL.GLfloat] GL.GLfloat

getObjVerts :: Object -> [Vec3 GL.GLfloat]
getObjVerts (Object _ verts _) = verts

getObjPos :: Object -> Vec3 GL.GLfloat
getObjPos (Object pos _ _) = pos

getObjMat :: Object -> Mat44 GL.GLfloat
getObjMat (Object pos _ _) = translation pos

getObjTime :: Object -> GL.GLfloat
getObjTime (Object _ _ time) = time

updateObjTime :: Object -> IO Object
updateObjTime (Object (x :. y :. z :. ()) verts _) =
    Object (x :. y :. z :. ()) verts . realToFrac . utctDayTime
        <$> getCurrentTime

testObj :: Object
testObj = Object
        (0 :. 0 :. 0 :. ())
        (moveVerts [(-1) :. (-1) :. 0 :. (),
         1 :. (-1) :. 0 :. (),
         0 :. 1 :. 0 :. ()])
        0

moveVerts :: [Vec3 GL.GLfloat] -> [Vec3 GL.GLfloat]
moveVerts ((x :. y :. z :. ()) : xs) =
    (x :. y :. (z-5) :. ()) : moveVerts xs
moveVerts [] = []

simpleTest :: IO ()
simpleTest = do
    let world = testWorld

    win <- openWindow
    initGL win
    prog <- simpleProgram
    postProg <- postProgram
    let galaxy = MonadicGalaxy prog (updateStep win prog) world
    mainLoop win $ ShaderUniverse [galaxy] [postProg]

updateStep :: GLFW.Window -> ShaderProgram World -> World -> IO World
updateStep win _ (World (Player ppos prot _ curPos) obj) = do
    (mouseX, mouseY) <- GLFW.getCursorPos win
    let newMousePos = realToFrac mouseX :. realToFrac mouseY :. ()
        deltaMousePos = newMousePos - curPos
    newObj <- updateObjTime obj
    return $ World (playerMouseUpdate $ Player ppos prot deltaMousePos curPos) newObj

worldMatrix :: World -> Mat44 GL.GLfloat
worldMatrix (World player obj) =
    playerMat player `multmm` getObjMat obj

playerMat :: Player -> Mat44 GL.GLfloat
playerMat (Player pos rot _ _) =
    let ratio = 800 / 600
        realPosition = V.map negate pos
        realRotation = V.map (negate . toRadians) rot
    in perspective 0.1 100 45 ratio `multmm`
        rotationEuler realRotation `multmm`
        translation realPosition

------------
-- Player --
------------

-- | Calculate delta movement from Player and raw input movement.
calculateLookMovement :: Player -> Vec3 GL.GLfloat -> Vec3 GL.GLfloat
calculateLookMovement (Player _ rot _ _) (idx :. idy :. idz :. ()) =
    let _ :. rry :. _ :. () = rot
        dx = uC idx
        dz = uC idz
        
        ry = uC rry :: Float

        mx = dx * sinDeg (ry - 90) + dz * sinDeg ry
        my = idy
        mz = dx * cosDeg (ry - 90) + dz * cosDeg ry
    in uC mx :. my :. uC mz :. ()
  where
    uC = unsafeCoerce

-- | Calculate new velocity from current object
--   and raw movement.
setPosFromLook :: Player -> Vec3 GL.GLfloat -> Player
setPosFromLook player@(Player pos rot d p) idVec =
    let movement = calculateLookMovement player idVec
    in Player (pos + movement) rot d p

-- | Update rotation from mouse input.
playerMouseUpdate :: Player -> Player
playerMouseUpdate (Player pos rot mouseDelta lastMousePos) =
    let rawdx :. rawdy :. () = mouseDelta
        lastX :. lastY :. () = lastMousePos
        -- TODO: adjust multipliers
        (dxx, dy) = (rawdx*0.1, rawdy*0.1)

        rx :. ry :. rz :. () = rot

        dx = -dxx

        curPos = (lastX + rawdx) :. (lastY + rawdy) :. ()

        -- Basic calculation of degrees, 0 is minimum,
        -- 360 is maximum.
        newRy
            | ry + dx >= 360 = ry + dx - 360
            | dx + ry < 0    = 360 - ry + dx
            | otherwise      = ry + dx

        -- Lowest angle player can look
        maxLookDown = -90
        -- Highest angle player can look
        maxLookUp = 90

        -- Basic calculation for x axis (looking up and down).
        -- Make sure that look direction stays between maxLookDown
        -- and maxLookUp.
        newRx
            -- If rotation is in bounds, allow rotation.
            | rx - dy >= maxLookDown && rx - dy <= maxLookUp      = rx - dy
            -- If player is trying to look down too far, set rotation to maxLookDown.
            | rx - dy < maxLookDown                             = maxLookDown
            -- If player is trying to look up too far, set rotation to maxLookUp.
            | rx - dy > maxLookUp                               = maxLookUp
            -- I don't think this will ever happen.
            | otherwise                                         = rx

        newRot = newRx :. newRy :. rz :. ()
        -- Update rotation and lastMousePos.
    in Player pos newRot mouseDelta curPos

{-# INLINE toRadians #-}
toRadians :: Floating a => a -> a
toRadians degrees = degrees * (pi/180)

{-# INLINE sinDeg #-}
sinDeg :: Float -> Float
sinDeg = sin . toRadians
{-# INLINE cosDeg #-}
cosDeg :: Float -> Float
cosDeg = cos . toRadians

------------
-- Shader --
------------

simpleProgram :: IO (ShaderProgram World)
simpleProgram = do
    texture <- juicyLoadTexture "../res/textures/grass.jpg"
    texture2 <- juicyLoadTexture "../res/objects/ibanez/texture0.jpg"
    let shSeq = simpleVert -&> lastly (simpleFrag [texture, texture2])
    createProgram shSeq testWorld

postProgram :: IO (ShaderProgram FBO)
postProgram = do
    let (Shader _ glsl) = postFrag
    C.putStrLn $ generateGLSL glsl
    createProgram
        (postVert -&> lastly postFrag)
        (FBO GL.defaultFramebufferObject (GL.Size 800 600) (GL.TextureObject 0))

simpleVert :: Shader GL.VertexShader World
simpleVert = Shader Proxy $ do
    version "430 core"

    position <- inn vec3 ("position", getObjVerts . worldObj)
    texCoord <- inn vec2 ("texCoord" ,const [(-1) :. (-1) :. (), 1 :. (-1), 0 :. 1])
    textureCoord <- out vec2 "textureCoord"

    textureCoord #= texCoord

    let position4 = "vec4" .$ [pack position, pack $ constant float "1.0"]
            :: Expression "vec4"

    matrix <- uniform mat4 ("matrix", worldMatrix)

    glPosition #= matrix .* position4

simpleFrag :: [GL.TextureObject] -> Shader GL.FragmentShader World
simpleFrag [texObject, texObject2] = Shader Proxy $ do
    version "430 core"
    textureCoord <- inn vec2 "textureCoord"
    textures <- layoutUniformArray ["location=10"] sampler2D "textures" (NProxy :: NatProxy 2)
        [const $ Sampler2DInfo texObject (GL.TextureUnit 0),
         const $ Sampler2DInfo texObject2 (GL.TextureUnit 1)]
    color <- out vec3 "color"

    let textureColor4 = "texture" .$ [pack $ textures .! 0, pack textureCoord]
            :: Expression "vec4"
        totalColor = (textureColor4 .@ X .& Y .& Z :: Expression "vec3")
                        -- .+ constant vec3 "vec3(1,0,0)"
    color #= totalColor

postVert :: Shader GL.VertexShader FBO
postVert = Shader Proxy $ do
    version "430 core"
    position <- inn vec3 ("position", const screenBufferData)
    textureCoord <- out vec2 "textureCoord"
    glPosition #= "vec4" .$ [pack position, pack $ fltd 1.0]
    textureCoord #= ((position .@ X .& Y :: Expression "vec2")
                    .+ ("vec2" .$ [fltd 1.0, fltd 1.0] :: Expression "vec2")) ./ fltd 2.0

postFrag :: Shader GL.FragmentShader FBO
postFrag = Shader Proxy $ do
    version "430 core"
    textureCoord <- inn vec2 "textureCoord"
    framebuffer <- uniform sampler2D ("framebuffer",
        \(FBO _ _ texObj) -> Sampler2DInfo texObj $ GL.TextureUnit 0)

    color <- out vec4 "color"
    let realColor = "texture" .$ [pack framebuffer, pack textureCoord] :: Expression "vec4"
        inverted = "vec4" .$ [pack $ fltd 1.0 .- (realColor .@ X :: Expression "float"),
                              pack $ fltd 1.0 .- (realColor .@ Y :: Expression "float"),
                              pack $ fltd 1.0 .- (realColor .@ Z :: Expression "float"),
                              pack $ fltd 1.0] :: Expression "vec4"
    color #= inverted

---------------------
-- Default actions --
---------------------

openWindow :: IO GLFW.Window
openWindow = do
    _ <- GLFW.init

    -- Give GLFW some hints.
    mapM_ GLFW.windowHint
        [GLFW.WindowHint'OpenGLProfile GLFW.OpenGLProfile'Core,
         GLFW.WindowHint'DepthBits 16,
         GLFW.WindowHint'Samples 4,
         GLFW.WindowHint'Resizable True,
         GLFW.WindowHint'ClientAPI GLFW.ClientAPI'OpenGL,
         GLFW.WindowHint'ContextVersionMajor 4,
         GLFW.WindowHint'ContextVersionMinor 3]

    -- Open window.
    Just win <- GLFW.createWindow
                    800
                    600
                    "GLFW Window" Nothing Nothing
    GLFW.makeContextCurrent (Just win)

    -- Set resize callback.
    GLFW.setFramebufferSizeCallback win (Just resizeScene)

    -- Enable VSync
    GLFW.swapInterval 1

    return win

initGL :: GLFW.Window -> IO ()
initGL win = do
    -- Set "background color" to black
    GL.clearColor $= GL.Color4 0 0 0 1

    -- Enables clearing of the depth buffer
    GL.clearDepth $= 1
    -- Allow depth testing (3D)
    -- Tells OpenGL how to deal with overlapping shapes
    GL.depthFunc $= Just GL.Less

    -- Do not render the backs of faces. Increases performance.
    GL.cullFace $= Just GL.Back

    -- Call resize function.
    (w, h) <- GLFW.getFramebufferSize win
    resizeScene win w h 

resizeScene :: GLFW.WindowSizeCallback
-- Prevent divide by 0
resizeScene win w 0 = resizeScene win w 1
resizeScene _ width _ = do
    let height' = heightFromWidth width

    -- Make viewport the same size as the window.
    GL.viewport $= (GL.Position 0 0,
                    GL.Size (fromIntegral width) $ height')

getViewportSize :: GLFW.Window -> IO (GL.GLsizei, GL.GLsizei)
getViewportSize win = do
    (width, _) <- GLFW.getFramebufferSize win
    return (fromIntegral width, heightFromWidth width)

heightFromWidth :: Int -> GL.GLsizei
heightFromWidth width =
    floor $ fromIntegral width / (8 / 6 :: GL.GLfloat)

cleanup :: ShaderProgram t -> IO ()
cleanup (ShaderProgram program _ attrs _) = do
    GL.deleteObjectName program
    mapM_ (\(AttribGPU buffer _ _ _ _) -> GL.deleteObjectName buffer) attrs

------------------
-- Buffer utils --
------------------

makeBuffer :: forall a. (Storable a) =>
    GL.BufferTarget -> [a] -> IO GL.BufferObject
makeBuffer target elems = do
    arrayBuffer <- GL.genObjectName

    GL.bindBuffer target $= Just arrayBuffer

    withArrayLen elems $ \len ptr ->
        let n = fromIntegral $ len * sizeOf (error "makeBuffer" :: a)
        in GL.bufferData target $= (n, ptr, GL.StaticDraw)

    return arrayBuffer

replaceBuffer :: forall a. Storable a =>
    GL.BufferTarget -> [a] -> Int -> IO ()
replaceBuffer target elems len =
    withArray elems $ \ptr -> do
        let dataSize = fromIntegral $ len * sizeOf (error "replaceBuffer" :: a)
        GL.bufferData target $= (dataSize, ptr, GL.StaticDraw)


--------------------
-- ShaderGalaxy's --
--------------------

data ShaderUniverse t =
    ShaderUniverse [ShaderGalaxy t] [ShaderProgram FBO]

allGalaxies :: ShaderUniverse t -> [ShaderGalaxy t]
allGalaxies (ShaderUniverse xs _) = xs

allPostPrograms :: ShaderUniverse t -> [ShaderProgram FBO]
allPostPrograms (ShaderUniverse _ xs) = xs

hasPostShaders :: ShaderUniverse t -> Bool
hasPostShaders (ShaderUniverse _ []) = False
hasPostShaders _ = True

data ShaderGalaxy t =
    PureGalaxy (ShaderProgram t) (t -> t) t
  | MonadicGalaxy (ShaderProgram t) (t -> IO t) t

mainLoop ::
    GLFW.Window ->
    ShaderUniverse t ->
    IO ()
mainLoop win univ = do
    if not . hasPostShaders $ univ
        then loop univ
    else do
        size <- getViewportSize win
        fbo <- makeFramebuffer size
        loopPP fbo univ
    mapM_ cleanupGalaxy $ allGalaxies univ
    GLFW.destroyWindow win
    GLFW.terminate
  where
    loop (ShaderUniverse galaxies posts) = do
        GL.clear [GL.ColorBuffer, GL.DepthBuffer]
        galaxies' <- mapM drawGalaxy galaxies
        endFrame
        shouldClose <- GLFW.windowShouldClose win
        unless shouldClose $
            loop $ ShaderUniverse galaxies' posts

    drawGalaxy (PureGalaxy prog updateFunc global) = do
        drawProgram prog global
        return . PureGalaxy prog updateFunc $ updateFunc global
    drawGalaxy (MonadicGalaxy prog updateFunc global) = do
        drawProgram prog global
        MonadicGalaxy prog updateFunc <$> updateFunc global

    loopPP fbo@(FBO fbuf size _) (ShaderUniverse galaxies posts) = do
        GL.bindFramebuffer GL.Framebuffer $= fbuf
        GL.viewport $= (GL.Position 0 0, size)
        GL.clear [GL.ColorBuffer, GL.DepthBuffer]

        galaxies' <- mapM drawGalaxy galaxies

        GL.bindFramebuffer GL.Framebuffer $= GL.defaultFramebufferObject
        GL.clear [GL.ColorBuffer, GL.DepthBuffer]
        drawPosts fbo posts fbo

        endFrame
        shouldClose <- GLFW.windowShouldClose win
        unless shouldClose $
            loopPP fbo $ ShaderUniverse galaxies' posts

    endFrame = do
        GLFW.swapBuffers win
        GLFW.pollEvents

    cleanupGalaxy (PureGalaxy prog _ _) = cleanup prog
    cleanupGalaxy (MonadicGalaxy prog _ _) = cleanup prog


{-
type MixedShaderUniverse = [WrappedGalaxy]
data WrappedGalaxy = forall t. WrappedGalaxy (ShaderGalaxy t)
test :: MixedShaderUniverse
test = [WrappedGalaxy (undefined :: ShaderGalaxy Int),
        WrappedGalaxy (undefined :: ShaderGalaxy Float)]
-}


------------------------------------------
-- Different representations of Shaders --
------------------------------------------

data Shader (p :: GL.ShaderType) t =
    Shader (ShaderTypeProxy p) (ShaderM p t ())

{-
data ShaderSequence t = ShaderSequence {
    mainShaders :: [WrappedShader t],
    postShaders :: [WrappedShader t]
    }
-}
type ShaderSequence t = [WrappedShader t]
data WrappedShader t =
    forall p. (ShaderTypeVal (ShaderTypeProxy p)) =>
        Wrapped (Shader p t)

(-&>) :: ShaderTypeVal (ShaderTypeProxy p) =>
    Shader p t -> ShaderSequence t -> ShaderSequence t
(-&>) shader1 wrappedOnes =
    Wrapped shader1 : wrappedOnes
infixr 5 -&>

lastly :: ShaderTypeVal (ShaderTypeProxy p) =>
    Shader p t -> [WrappedShader t]
lastly = return . Wrapped

data ShaderProgram t =
    ShaderProgram
        GL.Program
        (GLSLInfo t)
        [AttribGPU t]
        [UniformGPU t]

data ShaderTypeProxy (t :: GL.ShaderType) = Proxy

class ShaderTypeVal a where
    typeVal :: a -> GL.ShaderType
instance ShaderTypeVal (ShaderTypeProxy GL.VertexShader) where
    typeVal = const GL.VertexShader
instance ShaderTypeVal (ShaderTypeProxy GL.TessControlShader) where
    typeVal = const GL.TessControlShader
instance ShaderTypeVal (ShaderTypeProxy GL.TessEvaluationShader) where
    typeVal = const GL.TessEvaluationShader
instance ShaderTypeVal (ShaderTypeProxy GL.GeometryShader) where
    typeVal = const GL.GeometryShader
instance ShaderTypeVal (ShaderTypeProxy GL.FragmentShader) where
    typeVal = const GL.FragmentShader
instance ShaderTypeVal (ShaderTypeProxy GL.ComputeShader) where
    typeVal = const GL.ComputeShader

-----------------------------------
-- Type family for shader phases --
-----------------------------------

type family NextShaderPhase (s :: GL.ShaderType) :: GL.ShaderType where
    NextShaderPhase GL.VertexShader = GL.TessControlShader
    NextShaderPhase GL.TessControlShader = GL.TessEvaluationShader
    NextShaderPhase GL.TessEvaluationShader = GL.GeometryShader
    NextShaderPhase GL.GeometryShader = GL.FragmentShader
    NextShaderPhase GL.FragmentShader = GL.ComputeShader
    NextShaderPhase GL.ComputeShader = GL.VertexShader

-----------------------
-- Lower level types --
-----------------------

data AttribGPU t =
    forall a. AttribGPU
        GL.BufferObject
        (t -> IO ())
        GL.AttribLocation
        (GL.VertexArrayDescriptor a)
        GL.NumArrayIndices

data UniformGPU t = UniformGPU GL.UniformLocation (t -> IO ())

--------------------------
-- Using ShaderPrograms --
--------------------------

drawProgram :: ShaderProgram t -> t -> IO ()
drawProgram (ShaderProgram prog _ attribs unis) global = do
    -- Use shader program.
    GL.currentProgram $= Just prog

    -- Bind all vars.
    mapM_ (bindAttrib global) attribs
    mapM_ (bindUniform global) unis

    -- Draw.
    let len = lenAttr $ head attribs
    GL.drawArrays GL.Triangles 0 len

    -- Unbind ArrayBuffer.
    GL.bindBuffer GL.ArrayBuffer $= Nothing
    -- Turn off shader.
    GL.currentProgram $= Nothing
  where
    lenAttr (AttribGPU _ _ _ _ len) = len

-----------------------------------
-- Shader t p -> ShaderProgram t --
-----------------------------------

createProgram :: ShaderSequence t -> t -> IO (ShaderProgram t)
createProgram shaderSequence global = do
    program <- compileAndLink shaderSequence
    let info@(GLSLInfo ins uniforms _) = gatherInfo shaderSequence

    attrs <- if null ins
                then return []
            else createAttrList program global ins
    unis <- if null uniforms
                then return []
            else createUniformList program uniforms
    return $ ShaderProgram program info attrs unis

compileAndLink :: ShaderSequence t -> IO GL.Program
compileAndLink shaderSeq = do
    shaders <- compileAll shaderSeq
    program <- GL.createProgram
    --mapM_ (GL.attachShader program) shaders
    mapM_ (\s -> GL.attachShader program s >> GL.deleteObjectName s) shaders
    GL.linkProgram program
    return program

compileAll :: ShaderSequence t -> IO [GL.Shader]
compileAll (Wrapped current : rest) = do
    firstPrograms <- compile current
    otherPrograms <- compileAll rest
    return $ firstPrograms : otherPrograms
compileAll [] = return []

compile :: ShaderTypeVal (ShaderTypeProxy p) =>
            Shader p t -> IO GL.Shader
compile (Shader proxy glsl) =
    let code = generateGLSL glsl
        shaderType = typeVal proxy
    in compileShader shaderType code

compileShader :: GL.ShaderType -> B.ByteString -> IO GL.Shader
compileShader shaderType src = do
    -- Create GL.Shader
    shader <- GL.createShader shaderType
    GL.shaderSourceBS shader $= src
    -- Compile GL.Shader.
    GL.compileShader shader
    -- Check status.
    ok <- GL.get $ GL.compileStatus shader
    unless ok $
        print =<< GL.get (GL.shaderInfoLog shader)

    return shader

gatherInfo :: ShaderSequence t -> GLSLInfo t
gatherInfo (Wrapped (Shader proxy glsl) : shaders) =
    let GLSLInfo ins uniforms outs = evalShaderM glsl
        ins' = case typeVal proxy of
            GL.VertexShader -> ins
            _               -> []
        outs' = case typeVal proxy of
            GL.FragmentShader -> outs
            _                 -> []
    in GLSLInfo ins' uniforms outs' <> gatherInfo shaders
gatherInfo [] = mempty

-- = Dealing with Ins

createAttrList :: GL.Program -> t -> [In t] -> IO [AttribGPU t]
createAttrList progId global ins = do
    mapM (getInGPUInfo progId global) ins

getInGPUInfo :: GL.Program -> t -> In t -> IO (AttribGPU t)
getInGPUInfo prog global i = do
    let name = inName i
        lenValues = inLength i global

    buffer <- inMkBuffer i global

    let updateFunc g = do
            GL.bindBuffer GL.ArrayBuffer $= Just buffer
            inReplaceBuffer i g lenValues

    location <- GL.get . GL.attribLocation prog $ C.unpack name

    let (elemCount, glType) = inDescriptor i
        descriptor = GL.VertexArrayDescriptor elemCount glType 0 nullPtr

    return $ AttribGPU buffer updateFunc location descriptor
                       (fromIntegral $ lenValues)

inMkBuffer :: In t -> t -> IO GL.BufferObject
inMkBuffer (InFloat valFunc _) global = makeBuffer GL.ArrayBuffer $ valFunc global
inMkBuffer (InInt valFunc _) global = makeBuffer GL.ArrayBuffer $ valFunc global
inMkBuffer (InVec2 valFunc _) global = makeBuffer GL.ArrayBuffer $ valFunc global
inMkBuffer (InVec3 valFunc _) global = makeBuffer GL.ArrayBuffer $ valFunc global
inMkBuffer (InVec4 valFunc _) global = makeBuffer GL.ArrayBuffer $ valFunc global
inMkBuffer (InMat4 _ _) _ =
    error "Primitive.inMkBuffer Given Mat4. Idk what to do."
    --map VAOIndex . valFunc

inReplaceBuffer :: In t -> t -> Int -> IO ()
inReplaceBuffer (InFloat valFunc _) global lenVals =
    replaceBuffer GL.ArrayBuffer (valFunc global) lenVals
inReplaceBuffer (InInt valFunc _) global lenVals =
    replaceBuffer GL.ArrayBuffer (valFunc global) lenVals
inReplaceBuffer (InVec2 valFunc _) global lenVals =
    replaceBuffer GL.ArrayBuffer (valFunc global) lenVals
inReplaceBuffer (InVec3 valFunc _) global lenVals =
    replaceBuffer GL.ArrayBuffer (valFunc global) lenVals
inReplaceBuffer (InVec4 valFunc _) global lenVals =
    replaceBuffer GL.ArrayBuffer (valFunc global) lenVals
inReplaceBuffer (InMat4 _ _) _ _ =
    error "Primitive.inReplaceBuffer: InMat4"

inLength :: In t -> t -> Int
inLength (InFloat valFunc _) = length . valFunc
inLength (InInt valFunc _) = length . valFunc
inLength (InVec2 valFunc _) = length . valFunc
inLength (InVec3 valFunc _) = length . valFunc
inLength (InVec4 valFunc _) = length . valFunc
inLength (InMat4 valFunc _) = length . valFunc

inDescriptor :: In t -> (GL.GLint, GL.DataType)
inDescriptor InFloat{} = (1, GL.Float)
inDescriptor InInt{} = (1, GL.Int)
inDescriptor InVec2{} = (2, GL.Float)
inDescriptor InVec3{} = (3, GL.Float)
inDescriptor InVec4{} = (4, GL.Float)
inDescriptor InMat4{} = (16, GL.Float)

inName :: In t -> B.ByteString
inName (InFloat _ name) = name
inName (InInt _ name) = name
inName (InVec2 _ name) = name
inName (InVec3 _ name) = name
inName (InVec4 _ name) = name
inName (InMat4 _ name) = name

bindAttrib :: t -> AttribGPU t -> IO ()
bindAttrib global (AttribGPU buffer updateFunc location descriptor _) = do
    updateFunc global
    GL.vertexAttribArray location $= GL.Enabled
    GL.bindBuffer GL.ArrayBuffer $= Just buffer
    GL.vertexAttribPointer location $= (GL.ToFloat, descriptor)

-- = Dealing with Uniforms

createUniformList :: GL.Program -> [Uniform t] -> IO [UniformGPU t]
createUniformList prog = mapM (getUniformInfo prog)

getUniformInfo :: GL.Program -> Uniform t -> IO (UniformGPU t)
getUniformInfo prog u = do
    let name = uniName u

    location <- GL.get $ GL.uniformLocation prog (C.unpack name)
    let updateFunc = uniBind u location

    return $ UniformGPU location updateFunc

uniBind :: Uniform t -> GL.UniformLocation -> t -> IO ()
uniBind (UniformFloat valueFunc _) location global =
    GL.uniform location $= GL.Index1 (valueFunc global)
uniBind (UniformInt valueFunc _) location global =
    GL.uniform location $=
        GL.Index1 (fromIntegral $ valueFunc global :: GL.GLint)
uniBind (UniformVec2 valueFunc _) location global =
    let x :. y :. () = valueFunc global
    in GL.uniform location $= GL.Vertex2 x y
uniBind (UniformVec3 valueFunc _) location global =
    let x :. y :. z :. () = valueFunc global
    in GL.uniform location $= GL.Vertex3 x y z
uniBind (UniformVec4 valueFunc _) location global =
    let x :. y :. z :. w :. () = valueFunc global
    in GL.uniform location $= GL.Vertex4 x y z w
uniBind (UniformMat4 valueFunc _) (GL.UniformLocation location) global =
    withArray (matToList $ valueFunc global) $ \ptr ->
        glUniformMatrix4fv location 1 1 ptr
uniBind (UniformSampler2D valueFunc _) location global = do
    let Sampler2DInfo textureObject textureUnit = valueFunc global
        GL.TextureUnit textureId = textureUnit
    GL.activeTexture $= textureUnit
    GL.textureBinding GL.Texture2D $= Just textureObject
    GL.uniform location $= GL.Index1 (fromIntegral textureId :: GL.GLint)

-- | Translate from Vec's format (row-major) to
--   OpenGL format (column-major).
matToGLFormat :: Mat44 GL.GLfloat -> [GL.GLfloat]
matToGLFormat = toRowMajor . matToLists
  where
    toRowMajor [(a:as), (b:bs), (c:cs), (d:ds)] =
        a : b : c : d : toRowMajor [as, bs, cs, ds]
    toRowMajor [[],[],[],[]] = []
    toRowMajor _ = error "Primitive.matToGLFormat"

boolToGLuint :: Bool -> GL.GLuint
boolToGLuint True = 1
boolToGLuint False = 0

uniName :: Uniform t -> B.ByteString 
uniName (UniformFloat _ name) = name
uniName (UniformInt _ name) = name
uniName (UniformVec2 _ name) = name
uniName (UniformVec3 _ name) = name
uniName (UniformVec4 _ name) = name
uniName (UniformMat4 _ name) = name
uniName (UniformSampler2D _ name) = name

bindUniform :: t -> UniformGPU t -> IO ()
bindUniform global (UniformGPU _ bindFunc) = bindFunc global


-- | Load an image and turn it into something OpenGL can use.
juicyLoadTexture :: FilePath -> IO GL.TextureObject
juicyLoadTexture file = do
    (w, h, ptr) <- juicyLoadImageRaw file

    texObject <- GL.genObjectName
    GL.textureBinding GL.Texture2D $= Just texObject

    GL.texImage2D GL.Texture2D
        -- No proxy.
        GL.NoProxy
        -- Mipmaps.
        0
        -- Use RGB format.
        GL.RGB'
        -- Size of image.
        (GL.TextureSize2D w h)
        -- No borders
        0
        -- The pixel data.
        (GL.PixelData GL.RGB GL.UnsignedByte ptr)

    --GL.textureBinding GL.Texture2D $= Just texObject
    GL.textureFilter GL.Texture2D $= ((GL.Linear', Nothing), GL.Linear')
    GL.textureWrapMode GL.Texture2D GL.S $= (GL.Mirrored, GL.ClampToEdge)
    GL.textureWrapMode GL.Texture2D GL.T $= (GL.Mirrored, GL.ClampToEdge)


    return texObject

-- TODO: add support for all (most) colorspaces / formats.
juicyLoadImageRaw :: FilePath -> IO (GL.GLint, GL.GLint, Ptr Word8)
juicyLoadImageRaw file = do
    image <- Juicy.readImage file

    case image of
        Left err -> error err

        Right (Juicy.ImageRGB8 (Juicy.Image w h dat)) ->
            V.unsafeWith dat $ \ptr ->
                return (fromIntegral w, fromIntegral h, ptr)
        Right (Juicy.ImageYCbCr8 img) ->
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in V.unsafeWith dat $ \ptr ->
                return (fromIntegral w, fromIntegral h, ptr)
        Right (Juicy.ImageCMYK8 img) ->
            let (Juicy.Image w h dat) =
                    JTypes.convertImage img :: Juicy.Image Juicy.PixelRGB8
            in V.unsafeWith dat $ \ptr ->
                return (fromIntegral w, fromIntegral h, ptr)
        _ -> error $
            "Engine.Graphics.Texture.juicyLoadImage:"
                ++ "bad image colorspace or format."

-----------------
-- Framebuffer --
-----------------

data FBO = FBO
    GL.FramebufferObject GL.Size GL.TextureObject
  deriving (Show)

drawProgramWithPP :: ShaderProgram t -> [ShaderProgram t] -> FBO -> t -> IO ()
drawProgramWithPP mainSh postSh fbo@(FBO fbuf size _) global = do
    GL.bindFramebuffer GL.Framebuffer $= fbuf
    GL.viewport $= (GL.Position 0 0, size)
    drawProgram mainSh global

    GL.bindFramebuffer GL.Framebuffer $= GL.defaultFramebufferObject    
    drawPosts fbo postSh global

drawPosts :: FBO -> [ShaderProgram t] -> t -> IO ()
drawPosts fbo (shader : y : xs) global = do
    drawPost fbo shader global
    drawPosts fbo (y:xs) global
drawPosts fbo [shader] global = do
    GL.bindFramebuffer GL.Framebuffer $= GL.defaultFramebufferObject
    drawPost fbo shader global
drawPosts _ _ _ = return ()

drawPost :: FBO -> ShaderProgram t -> t -> IO ()
drawPost (FBO _ _ texObj) (ShaderProgram prog _ attribs unis) global = do
    -- Use shader program.
    GL.currentProgram $= Just prog

    -- Bind all vars.
    mapM_ (bindAttrib global) attribs
    mapM_ (bindUniform global) unis

    fbufLocation <- GL.get $ GL.uniformLocation prog "framebuffer"

    -- Bind Framebuffer uniform.
    GL.activeTexture $= GL.TextureUnit 0
    GL.textureBinding GL.Texture2D $= Just texObj
    GL.uniform fbufLocation $= GL.Index1 (0 :: GL.GLint)

    -- Draw.
    let len = lenAttr $ head attribs
    GL.drawArrays GL.Triangles 0 len

    -- Unbind ArrayBuffer.
    GL.bindBuffer GL.ArrayBuffer $= Nothing
    -- Turn off shader.
    GL.currentProgram $= Nothing
  where
    lenAttr (AttribGPU _ _ _ _ len) = len

makeFramebuffer :: (GL.GLsizei, GL.GLsizei) -> IO FBO
makeFramebuffer (winW, winH) = do
    -- Create texture (color buffer).
    fbTex <- GL.genObjectName
    GL.textureBinding GL.Texture2D $= Just fbTex
    -- Specify texture filtering and wraping.
    GL.textureFilter GL.Texture2D $= ((GL.Linear', Nothing), GL.Linear')
    GL.textureWrapMode GL.Texture2D GL.S $= (GL.Mirrored, GL.ClampToEdge)
    GL.textureWrapMode GL.Texture2D GL.T $= (GL.Mirrored, GL.ClampToEdge)
    -- Fill the texture with nothing, give OpenGL
    -- its specs.
    GL.texImage2D GL.Texture2D
        GL.NoProxy
        0
        GL.RGB'
        (GL.TextureSize2D winW winH)
        0
        (GL.PixelData GL.RGB GL.UnsignedByte nullPtr)
    GL.textureBinding GL.Texture2D $= Nothing

    -- Create depth buffer.
    depthRenderbuffer <- GL.genObjectName
    GL.bindRenderbuffer GL.Renderbuffer $= depthRenderbuffer
    let rbufSize = GL.RenderbufferSize winW winH
    GL.renderbufferStorage GL.Renderbuffer GL.DepthComponent' rbufSize
    GL.bindRenderbuffer GL.Renderbuffer $= GL.noRenderbufferObject

    -- Create an FBO and bind it.
    fbName <- GL.genObjectName
    GL.bindFramebuffer GL.Framebuffer $= fbName
    -- Set Framebuffer's depth buffer.
    GL.framebufferRenderbuffer GL.Framebuffer
        GL.DepthAttachment GL.Renderbuffer depthRenderbuffer
    -- Set Framebuffer's texture.
    GL.framebufferTexture2D GL.Framebuffer (GL.ColorAttachment 0)
                            GL.Texture2D fbTex 0

    GL.drawBuffers $= [GL.FBOColorAttachment 0]

    fbufStatus <- GL.get $ GL.framebufferStatus GL.Framebuffer
    when (fbufStatus /= GL.Complete) $ do
        error $ "frambufferStatus returned a value " ++
                "other than 'Complete'. Status returned: '" ++
                show fbufStatus ++ "'."

    return $ FBO fbName (GL.Size winW winH) fbTex

screenBufferData :: [Vec3 GL.GLfloat]
screenBufferData =
    [(-1.0) :. (-1.0) :. 0.0 :. (),
     1.0    :. (-1.0) :. 0.0 :. (),
     (-1.0) :. 1.0    :. 0.0 :. (),
     (-1.0) :. 1.0    :. 0.0 :. (),
     1.0    :. (-1.0) :. 0.0 :. (),
     1.0    :. 1.0    :. 0.0 :. ()]
{-# INLINE screenBufferData #-}
