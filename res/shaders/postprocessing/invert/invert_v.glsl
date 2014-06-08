#version 430 core

layout(location = 0) in vec3 position;

out vec2 textureCoord;

void main()
{
    gl_Position = vec4(position, 1);
    textureCoord = (position.xy+vec2(1,1))/2.0;
}
