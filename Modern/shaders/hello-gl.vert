#version 330 core
// vertexBufferData, comes from Entity.
layout(location = 0) in vec3 position;
// normalBufferData, comes from Entity.
layout(location = 1) in vec3 normal;
// colorBufferData, comes from Entity
layout(location = 2) in vec3 color;
// textureBufferData, comes from Entity.
layout(location = 3) in vec2 texCoord;
// textureIdBufferData, comes from Entity.
layout(location = 4) in float textId;
// colorBufferData, comes from world.
layout(location = 3) in vec3 color2;
// 0.5, comes from World.
layout(location = 4) uniform float test;

out vec2 texCoordFrag;
out int textureId;

out vec3 fragColor;

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * vec4(position, 1.0);
    fragColor = color;
    texCoordFrag = texCoord;
    textureId = int(textId);
}
