#version 330 core

uniform sampler2D[10] textures;
uniform samplerCube skybox;

in vec4 varyingColour;
in vec3 varyingNormal;
in vec4 varyingVertex;

in float fogFactor;
in float isLit;

in int texID;

out vec4 fragColor;

void main()
{
	//Position of vertex in modelview space
    vec3 vertexPosition = (gl_ModelViewMatrix * varyingVertex).xyz;
    
    //Surface normal of current vertex
    vec3 surfaceNormal = normalize((gl_NormalMatrix * varyingNormal).xyz);
    
    //Direction light has traveled to get to vertexPosition
    vec3 lightDirection = normalize(gl_LightSource[0].position.xyz - vertexPosition);
    
    //Basically how much light is hitting the vertex
    float diffuseLightIntensity = max(0.0, dot(surfaceNormal, lightDirection));
    
    //"Main color"(diffuse) of vertex
    vec3 diffColor = diffuseLightIntensity * varyingColour.rgb;
    
    //Adjust color depending upon distance from light
    diffColor /= max(distance(gl_LightSource[0].position.xyz, vertexPosition)/10, 1);
    
    //Lowest light level possible
    vec3 ambColor = gl_LightModel.ambient;
    
    //"View vector" 
    vec3 viewVec = normalize(-vertexPosition);
    
    
    //// SPEC LIGHTING ///
    
    /// WARNING: Do not use this shader with models with a shininess of 0 ////
    
    //Direction light is reflected off of surface normal
    vec3 reflectionDirection = normalize(reflect(-lightDirection, surfaceNormal));
    
    //The intensity of reflection (specular)
    float specular = max(0.0, dot(reflectionDirection, viewVec));	
    
    //Raise specular to exponent of shininess
    float fspecular = pow(specular, gl_FrontMaterial.shininess);
    
    fspecular /= max(distance(gl_LightSource[0].position.xyz, vertexPosition)/4, 1);
    
    vec3 specColor = fspecular;
    
    /// END SPEC LIGHTING ///
    
    if(texID == -1)
	{
		//Does not have a texture, just use diffuse, specular, and ambient colors
		fragColor = vec4(ambColor, 1.0) + vec4(diffColor + specColor, varyingColour.w);
	}
	else 
	{
		//Fragment has texture, use the texture's color, and diffuse, specular, and ambient colors
		fragColor = vec4(ambColor, 1.0) + vec4(diffColor * vec3(texture(textures[texID], gl_TexCoord[0].st)) + specColor, varyingColour.w);
	}
	
	if(isLit!=1)
	{
		fragColor.xyz = 0;
	}
	
	fragColor = mix(gl_Fog.color, fragColor, fogFactor);
}