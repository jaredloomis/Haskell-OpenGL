#version 430 core

#define PI (3.1415926535)
#define aperture (178.0)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main()
{
    float apertureHalf = 0.5 * aperture * (PI / 180.0);
    float maxFactor = sin(apertureHalf);

    vec2 uv;
    vec2 xy = 2.0 * textureCoord - 1.0;
    float d = length(xy);
    if (d < (2.0-maxFactor))
    {
        d = length(xy * maxFactor);
        float z = sqrt(1.0 - d * d);
        float r = atan(d, z) / PI;
        float phi = atan(xy.y, xy.x);
    
        uv.x = r * cos(phi) + 0.5;
        uv.y = r * sin(phi) + 0.5;
    }
    else
    {
        uv = textureCoord;
    }
    vec4 c = texture(renderedTexture, uv);
    color = c;
}
