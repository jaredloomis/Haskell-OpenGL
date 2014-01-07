#version 330 core

in int textureID;
in float lit;

out vec4 varyingColour;
out vec4 varyingVertex;
out vec3 varyingNormal;

out float fogFactor;
out float isLit;

out int texID;

void main()
{
	//Pass the in variables to fragment
	//shader through out variables
	isLit = lit;
	texID = textureID;

    // Pass the vertex colour attribute to the fragment shader.
    varyingColour = gl_Color;
    
    // Pass the vertex normal attribute to the fragment shader.
    varyingNormal =  gl_Normal;
    
    // Pass the vertex position attribute to the fragment shader.
    varyingVertex = gl_Vertex;
    
    //Set gl_Position
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
    
    //Set texture coords
    gl_TexCoord[0] = gl_MultiTexCoord0;
    
    /// FOG STUFF ///
    //Log 2
    const float LOG2 = 1.442695;
    
    //Set fogCoord
	gl_FogFragCoord = length(gl_Position);
	
	//exp2(x) -same as- pow(2, x)
	fogFactor = exp2(
		-gl_Fog.density *
		gl_Fog.density  *
		gl_FogFragCoord *
		gl_FogFragCoord *
		LOG2
		);
		
	//Make sure the value is between 0 and 1
	fogFactor = clamp(fogFactor, 0.0, 1.0);
}