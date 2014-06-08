#version 430 core
 
// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 position;
 
// Values that stay constant for the whole mesh.
uniform mat4 mvpMatrix;
 
void main(){
    gl_Position =  mvpMatrix * vec4(position, 1.0);
}
