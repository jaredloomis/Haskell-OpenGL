#version 430 core

//#define AMBIENT_LIGHT (vec3(0.01, 0.01, 0.01))
#define AMBIENT_LIGHT (vec3(0.4, 0.4, 0.4))
#define FOG_COLOR (vec4(0.01, 0.01, 0.01, 0.075))
#define SHININESS (20.0)

in vec3 positionCS;
in vec3 positionMS;
in vec3 normalCS;
in vec3 fragColor;
in vec2 textureCoord;
in flat int texId;
in float fogFactor;

layout(location = 6) uniform mat4 viewMatrix;
layout(location = 9) uniform vec3 lightPos;
layout(location = 10) uniform sampler2D textures[7];

layout(location = 0) out vec4 outColor;

void main()
{
    //Normalize per fragment to make it smooth.
    vec3 realNormCS = normalize(normalCS);

    //Calculate light position in camera space. Model matrix
    //is ommited because it is identity.
    vec3 lightPosCS = (viewMatrix * vec4(lightPos, 1.0)).xyz;
    //Calculate the direction the light travels
    //to get to fragment.
    vec3 lightDir = normalize(lightPosCS - positionCS);

    //Calculate the reflection direction.
    vec3 reflectionDirection = normalize(reflect(-lightDir, realNormCS));

    //Distance from light to fragment.
    float lightDist = length(lightPos - positionMS);
    float attenuation = 1;//1.0 / max(lightDist * lightDist * 0.001, 1.0);

    //Calculate the intensity of diffuse light.
    float diffuse = max(0.0, dot(realNormCS, lightDir));

    //Calculate intensity of specular light.
    vec3 eyeDir = normalize(-positionCS);
    float rawSpec = max(0.0, dot(reflectionDirection, eyeDir));
    float specular = pow(rawSpec, SHININESS);

    //Calculate "scattered" light (basically diffuse).
    vec3 scatteredLight = AMBIENT_LIGHT + diffuse * attenuation;

    //Specular value.
    vec3 reflectedLight = vec3(specular) * attenuation;

    vec3 rgb;
    if(texId == -1)
        rgb = min(fragColor * scatteredLight + reflectedLight, vec3(1.0));
    else
        rgb = min(
            texture(textures[texId], textureCoord).rgb *
                scatteredLight + reflectedLight,
            vec3(1.0));

    outColor = vec4(rgb, 1.0);
    //outColor = mix(FOG_COLOR, outColor, fogFactor);
}
