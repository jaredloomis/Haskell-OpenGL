#version 330 core
layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec3 color;
layout(location = 3) in vec3 color2;

out vec3 fragColor;

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
    fragColor = color2;
}
