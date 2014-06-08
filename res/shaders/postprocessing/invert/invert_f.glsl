#version 430 core


in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

vec3 invert(vec3 start)
{
    return vec3(1.0-start.x, 1.0-start.y, 1.0-start.z);
}

void main()
{
    vec4 realColor = texture(renderedTexture, textureCoord);
    color = vec4(invert(realColor.xyz), realColor.w);
}
