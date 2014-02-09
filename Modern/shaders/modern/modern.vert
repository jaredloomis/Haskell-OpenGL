#version 330

layout(location = 0) in vec3 position;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

void main()
{
    //mat4 newView = inverse(modelMatrix);
    mat4 mvp = projectionMatrix * viewMatrix * modelMatrix;
    //mat4 mvp = projectionMatrix * newView * modelMatrix;
    gl_Position = mvp * vec4(position, 1.0);
}
