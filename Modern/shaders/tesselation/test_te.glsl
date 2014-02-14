#version 430 core

layout(triangles, equal_spacing, cw) in;
in vec3 tcVertex[];
out vec3 teVertex;
out vec3 tePatchDistance;
uniform mat4 mvpMatrix;

void main()
{
    vec3 p0 = gl_TessCoord.x * tcVertex[0];
    vec3 p1 = gl_TessCoord.y * tcVertex[1];
    vec3 p2 = gl_TessCoord.z * tcVertex[2];
    tePatchDistance = gl_TessCoord;
    teVertex = normalize(p0 + p1 + p2);
    gl_Position = mvpMatrix * vec4(teVertex, 1);
}
