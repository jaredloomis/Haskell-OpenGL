#version 430 core

#define pixelWidth (10)
#define pixelHeight (10)

#define screenWidth (800)
#define screenHeight (600)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main(void)
{
    vec2 uv = gl_TexCoord[0].xy;
  
    float dx = pixelWidth  * (1.0 / screenWidth);
    float dy = pixelHeight * (1.0 / screenHeight);

    vec2 coord = vec2(dx*floor(textureCoord.x/dx),
                      dy*floor(textureCoord.y/dy));

    vec3 tc = texture(renderedTexture, coord).rgb;
    color = vec4(tc, 1.0);
}
