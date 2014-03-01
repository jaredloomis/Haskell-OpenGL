#version 430 core

#define BIAS (0.025)
#define BLUR_CLAMP (0.3)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

layout(location = 0) out vec4 outColor;

void main()
{
    float focus = 0.1;
    float aspectratio = 800.0/600.0;
    vec2 aspectcorrect = vec2(1.0,aspectratio);

    float factor = cos((textureCoord.y) * 2 + 0.5);
         
        vec2 dofblur = vec2 (clamp(factor * BIAS, -BLUR_CLAMP, BLUR_CLAMP));
 
 
        vec4 col = vec4(0.0);
       
        col += texture(renderedTexture, textureCoord);
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,0.4 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( 0.15,0.37 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,0.29 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( -0.37,0.15 )*aspectcorrect) * dofblur);       
        col += texture(renderedTexture, textureCoord + (vec2( 0.4,0.0 )*aspectcorrect) * dofblur);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.37,-0.15 )*aspectcorrect) * dofblur);       
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,-0.29 )*aspectcorrect) * dofblur);       
        col += texture(renderedTexture, textureCoord + (vec2( -0.15,-0.37 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,-0.4 )*aspectcorrect) * dofblur); 
        col += texture(renderedTexture, textureCoord + (vec2( -0.15,0.37 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,0.29 )*aspectcorrect) * dofblur);
        col += texture(renderedTexture, textureCoord + (vec2( 0.37,0.15 )*aspectcorrect) * dofblur); 
        col += texture(renderedTexture, textureCoord + (vec2( -0.4,0.0 )*aspectcorrect) * dofblur); 
        col += texture(renderedTexture, textureCoord + (vec2( -0.37,-0.15 )*aspectcorrect) * dofblur);       
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,-0.29 )*aspectcorrect) * dofblur);       
        col += texture(renderedTexture, textureCoord + (vec2( 0.15,-0.37 )*aspectcorrect) * dofblur);
       
        col += texture(renderedTexture, textureCoord + (vec2( 0.15,0.37 )*aspectcorrect) * dofblur*0.9);
        col += texture(renderedTexture, textureCoord + (vec2( -0.37,0.15 )*aspectcorrect) * dofblur*0.9);           
        col += texture(renderedTexture, textureCoord + (vec2( 0.37,-0.15 )*aspectcorrect) * dofblur*0.9);           
        col += texture(renderedTexture, textureCoord + (vec2( -0.15,-0.37 )*aspectcorrect) * dofblur*0.9);
        col += texture(renderedTexture, textureCoord + (vec2( -0.15,0.37 )*aspectcorrect) * dofblur*0.9);
        col += texture(renderedTexture, textureCoord + (vec2( 0.37,0.15 )*aspectcorrect) * dofblur*0.9);            
        col += texture(renderedTexture, textureCoord + (vec2( -0.37,-0.15 )*aspectcorrect) * dofblur*0.9);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.15,-0.37 )*aspectcorrect) * dofblur*0.9);   
       
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,0.29 )*aspectcorrect) * dofblur*0.7);
        col += texture(renderedTexture, textureCoord + (vec2( 0.4,0.0 )*aspectcorrect) * dofblur*0.7);       
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,-0.29 )*aspectcorrect) * dofblur*0.7);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,-0.4 )*aspectcorrect) * dofblur*0.7);     
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,0.29 )*aspectcorrect) * dofblur*0.7);
        col += texture(renderedTexture, textureCoord + (vec2( -0.4,0.0 )*aspectcorrect) * dofblur*0.7);     
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,-0.29 )*aspectcorrect) * dofblur*0.7);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,0.4 )*aspectcorrect) * dofblur*0.7);
                         
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,0.29 )*aspectcorrect) * dofblur*0.4);
        col += texture(renderedTexture, textureCoord + (vec2( 0.4,0.0 )*aspectcorrect) * dofblur*0.4);       
        col += texture(renderedTexture, textureCoord + (vec2( 0.29,-0.29 )*aspectcorrect) * dofblur*0.4);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,-0.4 )*aspectcorrect) * dofblur*0.4);     
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,0.29 )*aspectcorrect) * dofblur*0.4);
        col += texture(renderedTexture, textureCoord + (vec2( -0.4,0.0 )*aspectcorrect) * dofblur*0.4);     
        col += texture(renderedTexture, textureCoord + (vec2( -0.29,-0.29 )*aspectcorrect) * dofblur*0.4);   
        col += texture(renderedTexture, textureCoord + (vec2( 0.0,0.4 )*aspectcorrect) * dofblur*0.4);       
                       
        outColor = col/41.0;
        outColor.a = 1.0;
}
