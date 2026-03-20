uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
vec3 draw(vec2 uv) {
    return texture2D(gm_BaseTexture,vec2(uv.x,uv.y)).rgb;   
    //return texture2D(gm_BaseTexture,uv).rgb;  
}

float grid(float var, float size) {
    return floor(var*size)/size;
}

float rand(vec2 co){
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

void main( void )
{
    float time = iGlobalTime;
    vec2 uv = (fragCoord.xy / iResolution.xy);
    
    float bluramount = 0.004;

    //float dists = 5.;
    vec3 blurred_image = vec3(0.);
    #define repeats 60.
    for (float i = 0.; i < repeats; i++) { 
        //Older:
        //vec2 q = vec2(cos(degrees((grid(i,dists)/repeats)*360.)),sin(degrees((grid(i,dists)/repeats)*360.))) * (1./(1.+mod(i,dists)));
        vec2 q = vec2(cos(degrees((i/repeats)*360.)),sin(degrees((i/repeats)*360.))) *  (rand(vec2(i,uv.x+uv.y))+bluramount); 
        vec2 uv2 = uv+(q*bluramount);
        blurred_image += draw(uv2)/2.;
        //One more to hide the noise.
        q = vec2(cos(degrees((i/repeats)*360.)),sin(degrees((i/repeats)*360.))) *  (rand(vec2(i+2.,uv.x+uv.y+24.))+bluramount); 
        uv2 = uv+(q*bluramount);
        blurred_image += draw(uv2)/2.;
    }
    blurred_image /= repeats;
        
    gl_FragColor = vec4(blurred_image,1.0);
}