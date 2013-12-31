#version 330 core

out vec4 outColor;

in vec3 fragColor;
in vec2 texCoordFrag;
in int textureId;

layout(location = 5) uniform sampler2D[7] tex;

void main()
{
    //outColor = vec4(fragColor, 1.0); //vec4(0.0, 0.0, 1.0, 1.0);
    outColor = texture(tex[textureId], texCoordFrag);
}
