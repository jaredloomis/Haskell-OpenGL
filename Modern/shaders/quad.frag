#version 430 core

#define screenWidth (800)
#define screenHeight (600)

#define waveIntensity (0.005)
#define waveSpeed (5)

in vec2 textureCoord;

out vec3 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main()
{
/*
    color = texture(renderedTexture,
            textureCoord + 0.001 * vec2(sin(time+800*textureCoord.x),
                        cos(time+600*textureCoord.y))).xyz;
*/
    color = texture(renderedTexture,
                textureCoord + waveIntensity *
                vec2(
                    sin(time * waveSpeed + screenWidth  * textureCoord.x),
                    cos(time * waveSpeed + screenHeight * textureCoord.y)
                )
            ).xyz;
}
