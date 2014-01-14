#version 430

in vec3 vertex;
in vec3 norm;

out vec4 fragmentColor;

void main()
{
    vec3 lightPos = vec3(0, 40, 0);
    vec3 fragColor = vec3(0, 1, 1);

    vec3 lightPosTrans = vec3(gl_ModelViewMatrix * vec4(lightPos, 1.0));

    vec3 vertexPosition = vec3(gl_ModelViewMatrix * vec4(vertex, 1.0));

    //Surface normal of current vertex
    vec3 surfaceNormal = normalize(vec3(gl_NormalMatrix * norm));

    //Direction light has traveled to get to vertexPosition
    vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

    //Basically how much light is hitting the vertex
    float diffuseLightIntensity = max(0.0, dot(surfaceNormal, lightDirection));

    //"Main color"(diffuse) of vertex
    vec3 diffColor = diffuseLightIntensity * fragColor;
    //diffColor = fragColor;

    fragmentColor = vec4(diffColor, 1.0);
}
