#version 430

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;

out vec3 vertex;
out vec3 norm;

void main()
{
    vertex = position;
    norm = normal;
    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
}
