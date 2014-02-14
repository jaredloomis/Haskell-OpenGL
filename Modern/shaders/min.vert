#version 430 core

#define LOG2 1.442695
#define FOG_DENSITY 0.03

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;
layout(location = 3) in vec3 color;
layout(location = 4) in float textureId;
layout(location = 5) uniform mat4 projectionMatrix;
layout(location = 6) uniform mat4 viewMatrix;
layout(location = 7) uniform mat4 modelMatrix;
layout(location = 8) uniform mat4 mvpMatrix;

out vec3 vColor;
out vec3 vVertex;
out vec2 vTextureCoord;
out vec3 vNormal;
out flat int vTextureId;
out mat4 vModelMatrix;
out mat4 vViewMatrix;
out float vFogFactor;

void main()
{
    vVertex = position;
    vTextureCoord = texCoord;
    vNormal = normal;
    vColor = color;
    vTextureId = int(textureId);

    vModelMatrix = modelMatrix;
    vViewMatrix = viewMatrix;

    gl_Position = mvpMatrix * vec4(position, 1.0);
    
    //Set fogCoord
    float fogCoord = length(gl_Position);
    
    //exp2(x) -same as- pow(2, x)
    vFogFactor = exp2(
        -FOG_DENSITY *
        FOG_DENSITY  *
        fogCoord *
        fogCoord *
        LOG2
        );
        
    //Make sure the value is between 0 and 1
    vFogFactor = clamp(vFogFactor, 0.0, 1.0);
}
