{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
module Engine.Graphics.Primitive where

import Control.Applicative ((<$>))
import GHC.TypeLits

import Graphics.Rendering.OpenGL.Raw
    (GLuint, gl_VERTEX_SHADER, gl_FRAGMENT_SHADER,
     gl_GEOMETRY_SHADER, glCreateProgram, glAttachShader,
     glLinkProgram, glDeleteShader)

import Engine.Graphics.GLSL
import Engine.Graphics.Shaders (loadShaderCode)

data Shader (p :: Symbol) where
    Shader :: SymbolProxy p -> GLSL () -> Shader p
    Sequence :: KnownSymbol p =>
            SymbolProxy p ->
            Shader p -> Shader (NextShaderPhase p) ->
            Shader (NextShaderPhase p)

type family NextShaderPhase (s :: Symbol) :: Symbol where
    NextShaderPhase "vertex" = "geometry"
    NextShaderPhase "geometry" = "fragment"

(&) :: KnownSymbol p =>
       Shader p -> Shader (NextShaderPhase p) -> Shader (NextShaderPhase p)
(&) = Sequence Proxy

shader :: KnownSymbol p => GLSL () -> Shader p
shader = Shader Proxy

vertex :: GLSL () -> Shader "vertex"
vertex = shader

geometry :: GLSL () -> Shader "geometry"
geometry = shader

fragment :: GLSL () -> Shader "fragment"
fragment = shader

compile :: KnownSymbol p => Shader p -> IO GLuint
compile wrapped = do
    shaderIds <- compile' wrapped
    progId <- glCreateProgram
    mapM_ (glAttachShader progId) shaderIds
    glLinkProgram progId
    mapM_ glDeleteShader shaderIds
    return progId

compile' :: KnownSymbol p => Shader p -> IO [GLuint]
compile' (Sequence _ shader1 shader2) = do
    prog1 <- compile' shader1
    prog2 <- compile' shader2
    return $ prog1 ++ prog2
compile' (Shader proxy glsl) =
    let code = generateGLSL glsl
        shaderType =
            case symbolVal proxy of
                "vertex"   -> gl_VERTEX_SHADER
                "fragment" -> gl_FRAGMENT_SHADER
                "geometry" -> gl_GEOMETRY_SHADER
                _          -> error "Engine.Graphics.Primitive.compile"
    in (\x -> [x]) <$> loadShaderCode shaderType code
