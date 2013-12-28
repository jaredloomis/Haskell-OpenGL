#version 330 core
layout(location = 0) in vec3 position;

//in vec3 position;
in vec3 normal;

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
    //gl_Position = vec4(position, 1.0);
    //gl_Normal = vec4(normal, 1.0);
}
