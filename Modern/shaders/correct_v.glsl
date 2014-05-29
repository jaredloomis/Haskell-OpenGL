#version 430 core

#define LOG2 (1.442695)
#define FOG_DENSITY (0.03)

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;
layout(location = 3) in vec3 color;
layout(location = 4) in float textureId;
layout(location = 5) uniform mat4 projectionMatrix;
layout(location = 6) uniform mat4 viewMatrix;
layout(location = 7) uniform mat4 modelMatrix;
layout(location = 8) uniform mat4 mvpMatrix;

out vec3 positionCS;
out vec3 positionMS;
out vec3 normalCS;
out vec3 fragColor;
out vec2 textureCoord;
out flat int texId;
out float fogFactor;

void main()
{
    //Pass color info.
    fragColor = color;

    //Calculate normal matrix and translate the in normal
    //from model space to camera space.
    mat4 normalMatrix = transpose(inverse(viewMatrix * modelMatrix));
    normalCS = (normalMatrix * vec4(normal, 0.0)).xyz;

    positionMS = position;

    //Translate vertex position from model space to camera space.
    positionCS = ((viewMatrix * modelMatrix) * vec4(position, 1.0)).xyz;

    //Pass texture info.
    textureCoord = texCoord;
    texId = int(textureId);

    //Set gl_Position (clip space).
    gl_Position = mvpMatrix * vec4(position, 1.0);

    //Set fogCoord
    float fogCoord = length(gl_Position);
    
    //exp2(x) -same as- pow(2, x)
    fogFactor = exp2(
        -FOG_DENSITY *
        FOG_DENSITY  *
        fogCoord *
        fogCoord *
        LOG2
        );
        
    //Make sure the value is between 0 and 1
    fogFactor = clamp(fogFactor, 0.0, 1.0);
}
