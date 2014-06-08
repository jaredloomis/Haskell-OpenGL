#version 430 core

#define PI (3.14159265359)

layout(location = 2) uniform float time;

in vec3 vertex;
in vec3 norm;

out vec4 fragmentColor;

void main()
{
    //fragmentColor = vec4(1, 0, 0, 1);

    //vec3 fragColor = vec3(0.396078, 0.26274509, 0.12941176);
    float newTime = time * 2;
    float rColor = sin(newTime) + 0.5;
    float gColor = sin(newTime + PI) + 0.5;
    float bColor = cos(newTime) + 0.5;
    vec3 fragColor = vec3(rColor, gColor, bColor);
    vec3 lightPos = vec3(0, 40, 0);

    vec3 lightPosTrans = vec3(gl_ModelViewMatrix * vec4(lightPos, 1.0));

    vec3 vertexPosition = vec3(gl_ModelViewMatrix * vec4(vertex, 1.0));

    //Surface normal of current vertex
    vec3 surfaceNormal = normalize(vec3(gl_NormalMatrix * norm));

    //Direction light has traveled to get to vertexPosition
    vec3 lightDirection = normalize(lightPosTrans - vertexPosition);

    //Basically how much light is hitting the vertex
    float diffuseLightIntensity = clamp(dot(surfaceNormal, lightDirection), 0.0, 1.0);

    //"Main color"(diffuse) of vertex
    vec3 diffColor = diffuseLightIntensity * fragColor * 0.7;
    //diffColor = fragColor;

    fragmentColor = vec4(diffColor, 1.0);
}
