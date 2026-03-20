uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
void main(void)
{
    vec2 uv = ( 2.*fragCoord - iResolution.xy ) / iResolution.y;

    float halfLines = 5.0; 
    float time = iGlobalTime; 
    float spinSpeed = 0.75;

    float maxBands = 20.;
    float numBands = abs(sin(iGlobalTime/7.)*maxBands);

    float bandStep = 1.0 / numBands;
    float spiralFactor = 3.0;
    float groupSize = 2.5;
    float groupOffset = 0.25;


    float rotationOffset = 0.75;
    float clockwiseRotation = cos(iGlobalTime/11.)/5.;
    float antiClockwiseRotation = -clockwiseRotation + rotationOffset;

    float distance = length(uv);

    vec2 angle = atan(uv.y, uv.x) + length(uv) * spiralFactor * vec2(1.,-1.);

    float bandIndex = groupSize + floor(distance / bandStep);
    float speedAdjust = mod(bandIndex, groupSize) * (groupOffset / groupSize) + 1.0; 
    float groupIndex = floor(bandIndex / groupSize);
	
    speedAdjust += mod(groupIndex, groupSize) * (groupOffset / groupSize);
    float rotation = speedAdjust * time * spinSpeed;

    angle += vec2(antiClockwiseRotation,clockwiseRotation) * rotation;

    vec2 linePatterns = abs(sin(angle * halfLines));
    float radialFade = smoothstep(0.0, 0.1, distance);

    vec2 intensity = radialFade * smoothstep(0.6, 0.9, linePatterns);

    float combinedIntensity = intensity.x + intensity.y*mix(-1.,1.,sin(time/17.));

    vec3 color = vec3(combinedIntensity);
    gl_FragColor = vec4(color, 1.0);
}