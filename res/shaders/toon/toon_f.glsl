#version 430

in vec3 fragColor;
in vec3 vertex;
in vec3 norm;
in vec2 textureCoord;
in flat int texId;
in mat4 modelMat;
in mat4 viewMat;

layout(location = 8) uniform vec3 cameraPosition;
layout(location = 9) uniform vec3 lightPos;
layout(location = 10) uniform float time;
layout(location = 11) uniform sampler2D textures[7];

layout(location = 0) out vec4 outColor;

void main()
{
    outColor = vec4(1, 0, 0, 1);
}
