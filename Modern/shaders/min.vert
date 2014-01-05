#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;
layout(location = 3) in vec3 color;
layout(location = 4) in float textureId;

out vec3 fragColor;
out vec3 vertex;
out vec2 textureCoord;
out vec3 norm;
out int texId;

void main()
{
    vertex = position;
    textureCoord = texCoord;
    norm = normal;
    fragColor = color;

    texId = int(textureId);

    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
}
