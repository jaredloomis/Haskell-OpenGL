#version 430

in vec3 fragColor;
in vec3 vertex;
in vec3 norm;
in vec2 textureCoord;
in flat int texId;

layout(location = 6) uniform vec3 cameraPosition;
layout(location = 7) uniform vec3 lightPos;
layout(location = 8) uniform float time;
layout(location = 9) uniform sampler2D textures[7];

layout(location = 0) out vec4 outColor;
//out vec4 outColor;

void main()
{
    //Constants.
    const float shininess = 8.0;
    const float maxSpec = 0.8;
    const vec3 ambColor = vec3(0.01, 0.01, 0.01);

    //Position of vertex in modelview space.
    vec3 vertexPosition = vec3(gl_ModelViewMatrix * vec4(vertex, 1.0));

    //Surface normal of current vertex.
    vec3 surfaceNormal = normalize(vec3(gl_NormalMatrix * norm));


    //Light pos in model space.
    vec3 lightPosTrans = vec3(gl_ModelViewMatrix * vec4(lightPos, 1.0));

    //Direction light has traveled to get to vertexPosition.
    vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

    //Basically how much light is hitting the vertex.
    float diffuseLightIntensity = clamp(
                dot(surfaceNormal, lightDirection), 0.0, 1.0);

    //Distance from vertex to light.
    float dist = length(lightPos - vertex);


    //"View vector".
    vec3 viewVec = normalize(-vertexPosition);

    //Direction light is reflected off of surface normal.
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));

    //The intensity of reflection (specular).
    float specular = max(0.0, dot(reflectionDirection, viewVec));

    float totalSpec = clamp(pow(specular, shininess), 0.0, maxSpec) /
                            (dist * dist / 1000.0);

    vec3 specColor = vec3(totalSpec, totalSpec, totalSpec);

    if(texId != -1)
    {
        vec4 textureColor = texture(textures[texId],
                textureCoord + 0.005 *
                vec2(sin(5 * time + 1024.0 * textureCoord.x),
                     cos(5 * time + 768.0 * textureCoord.y))) / ((dist*dist)/1000.0);

        outColor = vec4(ambColor, 1.0) + textureColor +
                   vec4(specColor, 1.0);
    }
    else
    {
        //"Main color"(diffuse) of vertex.
        vec3 diffColor = diffuseLightIntensity * fragColor / ((dist*dist)/1000.0);

        outColor = vec4(ambColor, 1.0) +
                   vec4(specColor, 1.0) +
                   vec4(diffColor, 1.0);
    }
}
