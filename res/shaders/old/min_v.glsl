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
layout(location = 10) uniform vec3 lightPos;

out vec3 vColor;
out vec3 vVertex;
out vec2 vTextureCoord;
out vec3 vNormal;
out flat int vTextureId;
out mat4 vModelMatrix;
out mat4 vViewMatrix;
out float vFogFactor;

out vec3 positionWS;
out vec3 normalCS;
out vec3 eyeDirCS;
out vec3 lightDirCS;

out mat4 normalMatrix;

void main()
{
    gl_Position = mvpMatrix * vec4(position, 1.0);
    positionWS = (modelMatrix * vec4(position, 1.0)).xyz;
    vec3 vertPosCS = ((viewMatrix * modelMatrix) * vec4(vVertex, 1.0)).xyz;
    eyeDirCS = -vertPosCS;
    vec3 lightPosCS = (viewMatrix * vec4(lightPos, 1.0)).xyz;
    lightDirCS = lightPosCS + eyeDirCS;

    normalMatrix = transpose(inverse(viewMatrix * modelMatrix));
    normalCS = (normalMatrix * vec4(normal, 0.0)).xyz;

    vVertex = position;
    vTextureCoord = texCoord;
    vNormal = normal;
    vColor = color;
    vTextureId = int(textureId);

    vModelMatrix = modelMatrix;
    vViewMatrix = viewMatrix;
    
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
