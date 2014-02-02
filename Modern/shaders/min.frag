#version 420

in vec3 fragColor;
in vec3 vertex;
in vec3 norm;
in vec2 textureCoord;
in flat int texId;

out vec4 outColor;

// Not used
layout(location = 6) uniform vec3 cameraPosition;
layout(location = 7) uniform vec3 lightPos;
layout(location = 8) uniform sampler2D[7] textures;

void main()
{
    vec3 lightPosTrans = vec3(gl_ModelViewMatrix * vec4(lightPos, 1.0));

    //Position of vertex in modelview space
    vec3 vertexPosition = vec3(gl_ModelViewMatrix * vec4(vertex, 1.0));

    //Surface normal of current vertex
    vec3 surfaceNormal = normalize(vec3(gl_NormalMatrix * norm));

    //Direction light has traveled to get to vertexPosition
    vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

    //Basically how much light is hitting the vertex
    float diffuseLightIntensity = clamp(dot(surfaceNormal, -lightDirection), 0.0, 1.0);

    //"Main color"(diffuse) of vertex
    vec3 diffColor = diffuseLightIntensity * fragColor;

    //Adjust color depending upon distance from light
    //diffColor /= max(distance(lightPos, vertexPosition)/10, 1);

    //Lowest light level possible
    vec3 ambColor = vec3(0.01, 0.01, 0.01);

    //"View vector" 
    vec3 viewVec = normalize(-vertexPosition);

    //Direction light is reflected off of surface normal
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));

    //The intensity of reflection (specular)
    float specular = max(0.0, dot(reflectionDirection, viewVec));

    float shininess = 8.0;

    float maxSpec = 0.8;

    float totalSpec = clamp(pow(specular, shininess), 0.0, maxSpec);

    //totalSpec /= max(distance(gl_LightSource[0].position.xyz, vertexPosition)/4, 1);

    vec3 specColor = vec3(totalSpec, totalSpec, totalSpec);

    if(texId != -1)
    {
        vec4 textureColor = texture(textures[texId], textureCoord);
        outColor = vec4(ambColor, 1.0) + textureColor + vec4(specColor, 1.0);
    }
    else
    {
        //vec3 lightPos = vec3(0, 40.0, 0);

        vec3 lightPosTrans = vec3(gl_ModelViewMatrix * vec4(lightPos, 1.0));

        vec3 vertexPosition = vec3(gl_ModelViewMatrix * vec4(vertex, 1.0));

        //Surface normal of current vertex
        vec3 surfaceNormal = normalize(vec3(gl_NormalMatrix * norm));

        //Direction light has traveled to get to vertexPosition
        vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

        //Basically how much light is hitting the vertex
        float diffuseLightIntensity = clamp(dot(surfaceNormal, lightDirection), 0.0, 1.0);

        //"Main color"(diffuse) of vertex
        vec3 diffColor = diffuseLightIntensity * fragColor;

        outColor = vec4(ambColor, 1.0) + vec4(specColor, 1.0) + vec4(diffColor, 1.0);
        //outColor = vec4(ambColor, 1.0) + vec4(diffColor + specColor, 1.0);
    }
}
