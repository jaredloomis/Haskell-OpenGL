#version 430 core

layout(triangles, equal_spacing, ccw) in;
in vec3 tcPosition[];
out vec3 tePosition;
out vec3 tePatchDistance;
uniform mat4 mvpMatrix;

void main()
{
    vec3 p0 = gl_TessCoord.x * tcPosition[0];
    vec3 p1 = gl_TessCoord.y * tcPosition[1];
    vec3 p2 = gl_TessCoord.z * tcPosition[2];
    tePatchDistance = gl_TessCoord;
    tePosition = p0 + p1 + p2;
    //tePosition = mix(p0, p1, 0.5);
    //tePosition = mix(tePosition, p2, 0.5);
    gl_Position = mvpMatrix * vec4(tePosition, 1.0);
}
