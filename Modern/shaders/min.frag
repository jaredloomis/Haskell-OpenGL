#version 330 core

in vec3 fragColor;
in vec3 vertex;
in vec3 norm;
in vec2 textureCoord;
in int texId;

out vec4 outColor;

layout(location = 5) uniform vec3 lightPos;
layout(location = 6) uniform sampler2D[7] textures;

void main()
{
    //vec3 lightPos = vec3(2.0, 2.0, 0.0);
    //Position of vertex in modelview space
    vec3 vertexPosition = (gl_ModelViewMatrix * vec4(vertex, 1.0)).xyz;
    
    //Surface normal of current vertex
    vec3 surfaceNormal = normalize((gl_NormalMatrix * norm).xyz);
    
    //Direction light has traveled to get to vertexPosition
    vec3 lightDirection = normalize(lightPos - vertexPosition);
    
    //Basically how much light is hitting the vertex
    float diffuseLightIntensity = max(0.0, dot(surfaceNormal, lightDirection));
    
    //"Main color"(diffuse) of vertex
    vec3 diffColor = diffuseLightIntensity * fragColor;

    //Adjust color depending upon distance from light
    diffColor /= max(distance(lightPos, vertexPosition)/10, 1);

    
    //Lowest light level possible
    vec3 ambColor = vec3(0.01, 0.01, 0.01);
    
    //"View vector" 
    vec3 viewVec = normalize(-vertexPosition);
    
    //Direction light is reflected off of surface normal
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));
    
    //The intensity of reflection (specular)
    float specular = max(0.0, dot(reflectionDirection, viewVec));

    float shininess = 2.0;

    float totalSpec = pow(specular, shininess);

    totalSpec /= max(distance(gl_LightSource[0].position.xyz, vertexPosition)/4, 1);

    vec3 specColor = vec3(totalSpec, totalSpec, totalSpec);

    if(texId != -1)
    {
        vec4 textureColor = texture(textures[texId], textureCoord);
        outColor = vec4(ambColor, 1.0) + textureColor + vec4(specColor, 1.0);
    }
    else
    {
        outColor = vec4(ambColor, 1.0) + vec4(diffColor + specColor, 1.0);
    }

    //outColor = vec4(1, 0, 0, 1);
    //outColor = vec4(ambColor, 1.0) + vec4(diffColor + specColor, 1.0);
    //outColor = textureColor;
    //outColor = vec4(1, 0, 0, 1);
    //outColor = vec4(texId, 1, 0, 1);
}
