#version 430 core

#define blurSize (0.00290625)

#define blurSizeH (0.3 * 0.00333333333)
#define blurSizeV (0.3 * 0.005)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main()
{
    vec4 sum = vec4(0.0);

    for (int x = -4; x <= 4; x++)
        for (int y = -4; y <= 4; y++)
            sum += texture(
                renderedTexture,
                vec2(textureCoord.x + x * blurSizeH, textureCoord.y + y * blurSizeV)
            ) / 81.0;
    color = sum;
}
