#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;

out vec3 fragColor;
out vec3 vertex;
out vec2 textureCoord;
out vec3 norm;

void main()
{
    vertex = position;
    textureCoord = texCoord;
    norm = normal;
    fragColor = vec3(1.0, 0.0, 0.0);

    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
}
