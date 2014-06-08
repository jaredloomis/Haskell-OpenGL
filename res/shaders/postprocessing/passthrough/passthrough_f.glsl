#version 430 core

/*
#define screenWidth (800)
#define screenHeight (600)

#define waveIntensity (0.005)
#define waveSpeed (5)
*/

/*
#define waveSpeed (5)
*/

#define blurSize (0.00390625)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main()
{
/*
    color = texture(renderedTexture,
            textureCoord + 0.001 * vec2(sin(time+800*textureCoord.x),
                        cos(time+600*textureCoord.y))).xyz;
*/
/*
    color = texture(renderedTexture,
                textureCoord + waveIntensity *
                vec2(
                    sin(time * waveSpeed + screenWidth  * textureCoord.x),
                    cos(time * waveSpeed + screenHeight * textureCoord.y)
                )
            ).xyz;
*/

/*
    float offset = time / 1 * 2*3.14159 * 0.3;
    vec2 newTexCoord = vec2(textureCoord.x + sin(textureCoord.y * 1*2*3.14159 + offset) / 100, textureCoord.y);
    color = texture(renderedTexture, newTexCoord);
*/
/*
    vec4 sum = vec4(0.0);
    sum += texture(renderedTexture, vec2(textureCoord.x - 4.0*blurSize, textureCoord.y)) * 0.05;
    sum += texture(renderedTexture, vec2(textureCoord.x - 3.0*blurSize, textureCoord.y)) * 0.09;
    sum += texture(renderedTexture, vec2(textureCoord.x - 2.0*blurSize, textureCoord.y)) * 0.12;
    sum += texture(renderedTexture, vec2(textureCoord.x - blurSize, textureCoord.y)) * 0.15;
    sum += texture(renderedTexture, vec2(textureCoord.x, textureCoord.y)) * 0.16;
    sum += texture(renderedTexture, vec2(textureCoord.x + blurSize, textureCoord.y)) * 0.15;
    sum += texture(renderedTexture, vec2(textureCoord.x + 2.0*blurSize, textureCoord.y)) * 0.12;
    sum += texture(renderedTexture, vec2(textureCoord.x + 3.0*blurSize, textureCoord.y)) * 0.09;
    sum += texture(renderedTexture, vec2(textureCoord.x + 4.0*blurSize, textureCoord.y)) * 0.05;
*/
    color = texture(renderedTexture, textureCoord);
}
