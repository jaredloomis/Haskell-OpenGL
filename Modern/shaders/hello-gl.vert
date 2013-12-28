#version 110

attribute vec3 position;
attribute vec3 normal;

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
    //gl_Position = vec4(position, 1.0);
    //gl_Normal = vec4(normal, 1.0);
}
