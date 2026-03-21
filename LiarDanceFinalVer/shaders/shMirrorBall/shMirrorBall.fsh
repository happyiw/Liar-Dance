uniform float iGlobalTime; 
uniform float ix; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 


#ifdef GL_ES
precision mediump float;
#endif


vec3 random3(vec3 c) {
	float j = 4096.0*sin(dot(c,vec3(17.0, 59.4, 15.0)));
	vec3 r;
	r.z = fract(512.0*j);
	j *= .125;
	r.x = fract(512.0*j);
	j *= .125;
	r.y = fract(512.0*j);
	return r-0.5;
}

const float F3 =  0.3333333;
const float G3 =  0.1666667;
float snoise(vec3 p) {

	vec3 s = floor(p + dot(p, vec3(F3)));
	vec3 x = p - s + dot(s, vec3(G3));

	vec3 e = step(vec3(0.0), x - x.yzx);
	vec3 i1 = e*(1.0 - e.zxy);
	vec3 i2 = 1.0 - e.zxy*(1.0 - e);

	vec3 x1 = x - i1 + G3;
	vec3 x2 = x - i2 + 2.0*G3;
	vec3 x3 = x - 1.0 + 3.0*G3;

	vec4 w, d;

	w.x = dot(x, x);
	w.y = dot(x1, x1);
	w.z = dot(x2, x2);
	w.w = dot(x3, x3);

	w = max(0.6 - w, 0.1);

	d.x = dot(random3(s), x);
	d.y = dot(random3(s + i1), x1);
	d.z = dot(random3(s + i2), x2);
	d.w = dot(random3(s + 1.0), x3);

	w *= w;
  	w *= w;
	w *= 1.1;
	d *= w;

	return dot(d, vec4(52.0));
}



const float PI = 3.14159265;

float map(float v, float v_min, float v_max, float out1, float out2)
{
    if ( v_max - v_min == 0. )
        return out2;
        
     return (clamp(v,v_min,v_max) - v_min) / (v_max - v_min) * (out2-out1)+out1;
}

float fmod(float t,float a){
  return fract(t/a)*a;
}




#define  NZ1  (sin (10. * iGlobalTime) + sin(PI * iGlobalTime))
#define  NZ2  (sin (10. * (iGlobalTime/2.+100.)) + sin(PI * (iGlobalTime/2.+100.)))
#define  NZ3  (sin (2. * (-.15)) + sin(PI * (-.15)))
#define  NZ4  (sin (2. * (.0)) + sin(PI * (.0)))


vec4 disco_asteroid_v2(vec2 uv) {

    
    vec2 xy = uv + vec2( .0,  - 0.35 );
    
    float z_far  = map(NZ3, -2.,2.,  2.,  30. );
    float z_near = map(NZ4, -2.,2.,  .5, .25);
    float z =  clamp( 1.0  / length(xy), z_near, z_far);

    float color = clamp( pow(abs( abs( snoise(vec3( xy.x*z,xy.y*z, iGlobalTime )) )), 8.) * 150., 0., 1.);

    float r = map(NZ1,-2.,2.,0.,3.);
    float g = map(NZ2,-2.,2.,0.,3.);
    float b = map(NZ3,-2.,2.,0.,3.);
    return vec4( vec3(r,g,b)*color, 1.0 ); 
    
}


void main( void )
{
    
               
    gl_FragColor =disco_asteroid_v2( (fragCoord.xy - iResolution.xy/2.) / min(iResolution.x, 1.-iResolution.y) );
    
}