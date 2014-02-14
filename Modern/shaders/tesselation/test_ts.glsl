#version 430 core

#define tessLevelInner 3
#define tessLevelOuter 2

layout(vertices = 3) out;
in vec3 vVertex[];
out vec3 tcVertex[];

void main()
{
    tcVertex[gl_InvocationID] = vVertex[gl_InvocationID];
    if (gl_InvocationID == 0)
    {
        gl_TessLevelInner[0] = tessLevelInner;
        gl_TessLevelOuter[0] = tessLevelOuter;
        gl_TessLevelOuter[1] = tessLevelOuter;
        gl_TessLevelOuter[2] = tessLevelOuter;
    }
}
