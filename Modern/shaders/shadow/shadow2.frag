#version 330 core

// Interpolated values from the vertex shaders
//in vec2 UV;
in vec4 shadowCoord;

// Ouput data
layout(location = 0) out vec4 color;

// Values that stay constant for the whole mesh.
//uniform sampler2D myTextureSampler;
uniform sampler2DShadow shadowMap;

vec2 poissonDisk[16] = vec2[]( 
   vec2( -0.94201624, -0.39906216 ), 
   vec2( 0.94558609, -0.76890725 ), 
   vec2( -0.094184101, -0.92938870 ), 
   vec2( 0.34495938, 0.29387760 ), 
   vec2( -0.91588581, 0.45771432 ), 
   vec2( -0.81544232, -0.87912464 ), 
   vec2( -0.38277543, 0.27676845 ), 
   vec2( 0.97484398, 0.75648379 ), 
   vec2( 0.44323325, -0.97511554 ), 
   vec2( 0.53742981, -0.47373420 ), 
   vec2( -0.26496911, -0.41893023 ), 
   vec2( 0.79197514, 0.19090188 ), 
   vec2( -0.24188840, 0.99706507 ), 
   vec2( -0.81409955, 0.91437590 ), 
   vec2( 0.19984126, 0.78641367 ), 
   vec2( 0.14383161, -0.14100790 ) 
);

void main()
{
    // Light emission properties
    vec3 lightColor = vec3(1.0, 1.0, 1.0);
    
    // Material properties
    //vec3 MaterialDiffuseColor = texture(myTextureSampler, UV).rgb;
    //vec3 diffuseColor = vec3(0.0, 0.0, 1.0);
    vec3 diffuseColor = vec3(0,0,1.0);

    //float visibility = texture(shadowMap, vec3(shadowCoord.xy, (shadowCoord.z)/shadowCoord.w));
    //float bias = 0.005;

    float visibility=1.0;

    // Fixed bias, or...
    float bias = 0.005;

    // ...variable bias
    // float bias = 0.005*tan(acos(cosTheta));
    // bias = clamp(bias, 0,0.01);

    // Sample the shadow map 4 times
    for (int index=0;index<4;index++)
        visibility -= 0.2*(1.0 -
            texture(shadowMap,
                vec3(shadowCoord.xy + poissonDisk[index]/700.0,
                    (shadowCoord.z-bias)/shadowCoord.w)));

    color = vec4(visibility * diffuseColor * lightColor, 1.0);
}
