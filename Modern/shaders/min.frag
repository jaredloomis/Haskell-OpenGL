#version 330 core

in vec3 fragColor;
in vec3 vertex;
in vec3 norm;
in vec2 textureCoord;

out vec4 outColor;

layout(location = 4) uniform sampler2D[7] textures;

void main()
{
    vec3 lightPos = vec3(2.0, 2.0, 0.0);
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
    
    //Lowest light level possible
    vec3 ambColor = vec3(0.01, 0.01, 0.01);
    
    //"View vector" 
    vec3 viewVec = normalize(-vertexPosition);
    
    
    //// SPEC LIGHTING ///
    
    /// WARNING: Do not use this shader with models with a shininess of 0 ////
    
    //Direction light is reflected off of surface normal
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));
    
    //The intensity of reflection (specular)
    float specular = max(0.0, dot(reflectionDirection, viewVec));

    vec3 shininess = vec3(0.5, 0.5, 0.5);

    vec3 specColor = shininess * vec3(specular, specular, specular);
    
    /// END SPEC LIGHTING ///

    vec4 textureColor = texture(textures[0], textureCoord);
    //outColor = vec4(ambColor, 1.0) + vec4(diffColor + specColor, 1.0);
    outColor = vec4(fragColor, 1.0); //textureColor;
}
