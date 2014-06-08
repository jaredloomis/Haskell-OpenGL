#version 430 core

//#define lightAttenuation(dist) (dist * dist / 1000.0)
#define fogColor (vec4(0.01, 0.01, 0.01, 0.075))
#define ambColor (vec3(0.01, 0.01, 0.01))
#define maxSpec (0.8)
#define shininess (8.0)

in vec3 vColor;
in vec3 vVertex;
in vec3 vNormal;
in vec2 vTextureCoord;
in flat int vTextureId;
in mat4 vModelMatrix;
in mat4 vViewMatrix;
in float vFogFactor;

in vec3 positionWS;
in vec3 normalCS;
in vec3 eyeDirCS;
in vec3 lightDirCS;

in mat4 normalMatrix;

layout(location = 9) uniform vec3 cameraPosition;
layout(location = 10) uniform vec3 lightPos;
layout(location = 11) uniform float time;
layout(location = 12) uniform sampler2D textures[7];

layout(location = 0) out vec4 outColor;

void main()
{
    mat4 mv = vModelMatrix * vViewMatrix;

    //mat4 normalMatrix = transpose(inverse(mv));
    //mat4 normalMatrix = mv;

    //Position of vertex in modelview space.
    vec3 vertexPosition = vec3(mv * vec4(vVertex, 1.0));

    //Surface normal of current vertex.
    //vec3 surfaceNormal = normalize(vec3(normalMatrix * vec4(vNormal, 0.0)));
    vec3 surfaceNormal = normalize(normalCS);
    //vec3 surfaceNormal = normalCS;

    //Light pos in model space.
    vec3 lightPosTrans = vec3(mv * vec4(lightPos, 1.0));

    //Direction light has traveled to get to vertexPosition.
    vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

    //Basically how much light is hitting the vertex.
    float diffuseLightIntensity = clamp(
                dot(surfaceNormal, lightDirection), 0.0, 1.0);

    //Distance from vertex to light.
    float dist = length(lightPos - vVertex);

    float lightAttenuation = max(dist*dist / 1000.0, 1.0);

    //"View vector".
    vec3 viewVec = normalize(-vertexPosition);

    //Direction light is reflected off of surface normal.
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));

    //The intensity of reflection (specular).
    float specular = max(0.0, dot(reflectionDirection, viewVec));

    float totalSpec = clamp(pow(specular, shininess), 0.0, maxSpec) /
                            lightAttenuation;

    vec3 specColor = vec3(totalSpec, totalSpec, totalSpec);

    if(vTextureId != -1)
    {
        vec4 textureColor = 3.0 * diffuseLightIntensity * texture(textures[vTextureId], vTextureCoord);// /
                        //lightAttenuation;

        outColor = vec4(ambColor, 1.0) +
                   vec4(specColor, 1.0) +
                   textureColor;
    }
    else
    {
        //"Main color"(diffuse) of vertex.
        vec3 diffColor = diffuseLightIntensity * vColor /
                            lightAttenuation;

        outColor = vec4(ambColor, 1.0) +
                   vec4(specColor, 1.0) +
                   vec4(diffColor, 1.0);
    }

    outColor = mix(fogColor, outColor, vFogFactor);
}
