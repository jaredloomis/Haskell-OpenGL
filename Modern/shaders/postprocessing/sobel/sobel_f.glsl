#version 430 core

#define radius (3)

in vec2 textureCoord;

out vec4 color;

layout(location = 1) uniform sampler2D renderedTexture;
layout(location = 2) uniform float time;

float intensity(in vec4 color)
{
    return sqrt((color.x*color.x)+(color.y*color.y)+(color.z*color.z));
}

vec3 radial_edge_detection(float s, vec2 center)
{
    vec4 centerColor = texture(renderedTexture, center);
    // let's learn more about our center pixel
    float center_intensity = intensity(centerColor);
    // counters we need
    int darker_count = 0;
    float max_intensity = center_intensity;
    // let's look at our neighbouring points
    for(int i = -radius; i <= radius; i++)
    {
        for(int j = -radius; j<= radius; j++)
        {
            vec2 current_location = center + vec2(i*s, j*s);
            float current_intensity = intensity(texture(renderedTexture, current_location));
            if(current_intensity < center_intensity)
            {
                darker_count++;
            }
            if(current_intensity > max_intensity)
            {
                max_intensity = current_intensity;
            }
        }
    }
    // do we have a valley pixel?
    if((max_intensity - center_intensity) > 0.01*radius)
    {
        if(darker_count/(radius*radius) < (1-(1/radius)))
        {
            return centerColor.xyz; // yep, it's a valley pixel.
        }
    }
    return vec3(0.1,0.1,0.1); // no, it's not.

}

void main()
{
    vec4 sum = vec4(0.0);
    vec4 s0 = texture(renderedTexture, textureCoord);
    vec4 s1 = texture(renderedTexture, textureCoord - 1.0 / 300.0 - 1.0 / 200.0);
    vec4 s2 = texture(renderedTexture, textureCoord + 1.0 / 300.0 - 1.0 / 200.0);
    vec4 s3 = texture(renderedTexture, textureCoord - 1.0 / 300.0 + 1.0 / 200.0);
    vec4 s4 = texture(renderedTexture, textureCoord + 1.0 / 300.0 + 1.0 / 200.0);

    //vec4 sx = 4.0 * ((s4 + s3) - (s2 + s1));
    //vec4 sy = 4.0 * ((s2 + s4) - (s1 + s3));
    //vec4 sobel = sqrt(sx * sx + sy * sy);
    //color = sobel;
 
    vec4 d1 = s0 - s1;
    vec4 d2 = s0 - s2;
    vec4 d3 = s0 - s3;
    vec4 d4 = s0 - s4;

    vec4 sobel = clamp(d1 + d2 + d3 + d4, 0.0, 1.0);
    color = sobel;
/*
    float s = 1.0 / 800.0;
    vec2 center_color = textureCoord;
    color = vec4(radial_edge_detection(s,center_color), 1.0);
*/
/*
    vec4 center = texture(DiffuseSampler, texCoord);
    vec4 left   = texture(DiffuseSampler, texCoord - vec2(oneTexel.x, 0.0));
    vec4 right  = texture(DiffuseSampler, texCoord + vec2(oneTexel.x, 0.0));
    vec4 up     = texture(DiffuseSampler, texCoord - vec2(0.0, oneTexel.y));
    vec4 down   = texture(DiffuseSampler, texCoord + vec2(0.0, oneTexel.y));
    vec4 leftDiff  = s1 - left;
    vec4 rightDiff = center - right;
    vec4 upDiff    = center - up;
    vec4 downDiff  = center - down;
    vec4 total = clamp(leftDiff + rightDiff + upDiff + downDiff, 0.0, 1.0);
    color = vec4(total.rgb, center.a);
*/
}
