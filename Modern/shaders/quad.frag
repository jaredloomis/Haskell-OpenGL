#version 430

in vec2 texCoord;

out vec3 color;

layout(location = 0) uniform sampler2D renderedTexture;
layout(location = 1) uniform float time;

void main(){
    color = texture(renderedTexture, texCoord + 0.005*vec2( sin(time+1024.0*UV.x),cos(time+768.0*UV.y))).xyz ;
}


