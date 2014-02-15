#version 430 core

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

void main()
{
    vec4 c = texture(renderedTexture, textureCoord);
    vec4 u = texture(renderedTexture, textureCoord + vec2(0.0, -1.0));
    vec4 d = texture(renderedTexture, textureCoord + vec2(0.0, 1.0));
    vec4 l = texture(renderedTexture, textureCoord + vec2(-1.0, 0.0));
    vec4 r = texture(renderedTexture, textureCoord + vec2(1.0, 0.0));

    vec4 nc = normalize(c);
    vec4 nu = normalize(u);
    vec4 nd = normalize(d);
    vec4 nl = normalize(l);
    vec4 nr = normalize(r);

    float du = dot(nc, nu);
    float dd = dot(nc, nd);
    float dl = dot(nc, nl);
    float dr = dot(nc, nr);

    float i = 64.0;

    float f = 1.0;
    f += (du * i) - (dd * i);
    f += (dr * i) - (dl * i);

    vec4 colorA = c * clamp(f, 0.5, 2.0);
    color = vec4(colorA.rgb, c.a);
}
