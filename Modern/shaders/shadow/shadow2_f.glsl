#version 430 core

#define AMBIENT_LIGHT (vec3(0.01, 0.01, 0.01))
#define FOG_COLOR (vec4(0.01, 0.01, 0.01, 0.075))
#define SHININESS (40.0)
#define MIN_SPEC (0.01)
#define MAX_SPEC (0.8)

in vec3 positionCS;
in vec3 positionMS;
in vec3 normalCS;
in vec3 fragColor;
in vec2 textureCoord;
in flat int texId;
in float fogFactor;
in vec4 shadowCoord;

layout(location = 5) uniform mat4 viewMatrix;
layout(location = 9) uniform vec3 lightPos;
layout(location = 10) uniform sampler2D textures[7];
layout(location = 17) uniform sampler2DShadow shadowMap;
layout(location = 18) uniform float time;

layout(location = 0) out vec4 outColor;

const vec2 poissonDisk[16] = vec2[](
    vec2(-0.94201624, -0.39906216), 
    vec2(0.94558609, -0.76890725), 
    vec2(-0.094184101, -0.92938870), 
    vec2(0.34495938, 0.29387760), 
    vec2(-0.91588581, 0.45771432), 
    vec2(-0.81544232, -0.87912464), 
    vec2(-0.38277543, 0.27676845), 
    vec2(0.97484398, 0.75648379), 
    vec2(0.44323325, -0.97511554), 
    vec2(0.53742981, -0.47373420), 
    vec2(-0.26496911, -0.41893023), 
    vec2(0.79197514, 0.19090188), 
    vec2(-0.24188840, 0.99706507), 
    vec2(-0.81409955, 0.91437590), 
    vec2(0.19984126, 0.78641367), 
    vec2(0.14383161, -0.14100790) 
);

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
    float attenuation = 1.0;//1.0 / max(lightDist * lightDist * 0.001, 1.0);

    //Calculate the intensity of diffuse light.
    float diffuse = max(0.0, dot(realNormCS, lightDir));

    //Calculate intensity of specular light.
    vec3 eyeDir = normalize(-positionCS);
    float rawSpec = max(0.0, dot(reflectionDirection, eyeDir));
    float specular = pow(rawSpec, SHININESS);
    //Make specular have a minimum val.
    specular = specular < MIN_SPEC ? 0 : specular;

    //Calculate "scattered" light (basically diffuse).
    vec3 scatteredLight = AMBIENT_LIGHT + diffuse * attenuation;

    //Specular value.
    vec3 reflectedLight = vec3(specular) * attenuation;

    vec3 totalColor;
    if(texId == -1)
        totalColor = min(fragColor * scatteredLight + reflectedLight, vec3(1.0));
    else
        totalColor = min(
            texture(textures[texId], textureCoord).rgb *
                scatteredLight + reflectedLight,
            vec3(1.0));

    // Light emission properties
    vec3 lightColor = vec3(1.0, 1.0, 1.0);

    float visibility=1.0;

    //Variable bias.
    float bias = 0.005 * tan(acos(diffuse));
    bias = clamp(bias, 0.0, 0.01);

    // Sample the shadow map 4 times
    for (int index=0;index<10;index++)
    {
        //int realIndex = genRandom(index);
        visibility -= 0.2*(1.0 -
            texture(shadowMap,
                vec3(shadowCoord.xy + poissonDisk[index]/700.0,
                    (shadowCoord.z-bias)/shadowCoord.w)));
    }

    outColor = vec4(visibility * totalColor * lightColor, 1.0);
}
