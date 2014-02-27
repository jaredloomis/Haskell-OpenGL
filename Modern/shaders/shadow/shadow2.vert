#version 430 core

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 position;
//layout(location = 1) in vec2 vertexUV;
//layout(location = 1) in vec3 normal;
layout(location = 1) in float textureId;

// Output data ; will be interpolated for each fragment.
//out vec2 UV;
out vec4 shadowCoord;

// Values that stay constant for the whole mesh.
uniform mat4 mvpMatrix;
uniform mat4 mvpBiasMatrix;

void main()
{
    // Output position of the vertex, in clip space : MVP * position
    gl_Position =  mvpMatrix * vec4(position, 1.0);
    
    shadowCoord = mvpBiasMatrix * vec4(position, 1.0);
    
    // UV of the vertex. No special space for this one.
    //UV = vertexUV;
}
