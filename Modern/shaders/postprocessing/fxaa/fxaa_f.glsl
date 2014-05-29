#version 430 core

#define FRAME_BUF_SIZE (vec2(800, 600))
#define SPAN_MAX (8.0)
//#define REDUCE_MUL (0.125)
#define REDUCE_MUL (0)
#define REDUCE_MIN (0.0078125)

in vec2 textureCoord;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

layout(location = 0) out vec4 outColor;

void main()
{
    vec3 rgbNW = texture(renderedTexture, textureCoord+(vec2(-1.0,-1.0)/FRAME_BUF_SIZE)).xyz;
    vec3 rgbNE = texture(renderedTexture, textureCoord+(vec2(1.0,-1.0)/FRAME_BUF_SIZE)).xyz;
    vec3 rgbSW = texture(renderedTexture, textureCoord+(vec2(-1.0,1.0)/FRAME_BUF_SIZE)).xyz;
    vec3 rgbSE = texture(renderedTexture, textureCoord+(vec2(1.0,1.0)/FRAME_BUF_SIZE)).xyz;
    vec3 rgbM = texture(renderedTexture, textureCoord).xyz;

    vec3 luma = vec3(0.299, 0.587, 0.114);
    float lumaNW = dot(rgbNW, luma);
    float lumaNE = dot(rgbNE, luma);
    float lumaSW = dot(rgbSW, luma);
    float lumaSE = dot(rgbSE, luma);
    float lumaM = dot(rgbM, luma);

    float lumaMin = min(lumaM, min(min(lumaNW, lumaNE), min(lumaSW, lumaSE)));
    float lumaMax = max(lumaM, max(max(lumaNW, lumaNE), max(lumaSW, lumaSE)));
    
    vec2 dir;
    dir.x = -((lumaNW + lumaNE) - (lumaSW + lumaSE));
    dir.y =  ((lumaNW + lumaSW) - (lumaNE + lumaSE));

    float dirReduce = max(
                (lumaNW + lumaNE + lumaSW + lumaSE) * (0.25 * REDUCE_MUL),
                REDUCE_MIN);

    float rcpDirMin = 1.0/(min(abs(dir.x), abs(dir.y)) + dirReduce);

    dir = min(vec2(SPAN_MAX,  SPAN_MAX),
                  max(vec2(-SPAN_MAX, -SPAN_MAX),
                  dir * rcpDirMin)) / FRAME_BUF_SIZE;

    vec3 rgbA = (1.0/2.0) * (
        texture(renderedTexture, textureCoord + dir * (1.0/3.0 - 0.5)).xyz +
        texture(renderedTexture, textureCoord + dir * (2.0/3.0 - 0.5)).xyz);
    vec3 rgbB = rgbA * (1.0/2.0) + (1.0/4.0) * (
        texture(renderedTexture, textureCoord + dir * (0.0/3.0 - 0.5)).xyz +
        texture(renderedTexture, textureCoord + dir * (3.0/3.0 - 0.5)).xyz);
    float lumaB = dot(rgbB, luma);

    if((lumaB < lumaMin) || (lumaB > lumaMax))
    {
        outColor = vec4(rgbA, 1.0);
    }
    else
    {
            outColor = vec4(rgbB, 1.0);
    }
}
