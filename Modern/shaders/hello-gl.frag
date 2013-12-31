#version 330 core

out vec4 outColor;

in vec3 fragColor;
in vec2 texCoordFrag;

layout(location = 5) uniform sampler2D tex;

void main()
{
    //outColor = vec4(fragColor, 1.0); //vec4(0.0, 0.0, 1.0, 1.0);
    outColor = texture2D(tex, texCoordFrag);
}
