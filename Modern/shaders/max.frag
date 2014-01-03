#version 330 core

out vec4 outColor;

in vec3 fragColor;
in vec2 texCoordFrag;
in int textureId;

layout(location = 5) uniform sampler2D[7] tex;

void main()
{
    outColor = texture(tex[textureId], texCoordFrag);
}
