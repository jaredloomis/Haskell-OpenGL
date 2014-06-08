#version 430 core

#define tessLevelInner 3
#define tessLevelOuter 3

layout(vertices = 3) out;
in vec3 vPosition[];
out vec3 tcPosition[];

void main()
{
    tcPosition[gl_InvocationID] = vPosition[gl_InvocationID];
    if (gl_InvocationID == 0)
    {
        gl_TessLevelInner[0] = tessLevelInner;
        gl_TessLevelOuter[0] = tessLevelOuter;
        gl_TessLevelOuter[1] = tessLevelOuter;
        gl_TessLevelOuter[2] = tessLevelOuter;
    }
}
