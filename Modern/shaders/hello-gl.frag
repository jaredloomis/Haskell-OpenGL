#version 330 core

out vec4 outColor;

in vec3 fragColor;

void main()
{
    outColor = vec4(fragColor, 1.0); //vec4(0.0, 0.0, 1.0, 1.0);
}
