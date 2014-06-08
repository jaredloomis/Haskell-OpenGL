#version 430 core

#define gamma (0.6)
#define numColors (8.0)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main() 
{ 
    vec3 c = texture(renderedTexture, textureCoord).rgb;
    c = pow(c, vec3(gamma, gamma, gamma));
    c = c * numColors;
    c = floor(c);
    c = c / numColors;
    c = pow(c, vec3(1.0/gamma));
    color = vec4(c, 1.0);
}
