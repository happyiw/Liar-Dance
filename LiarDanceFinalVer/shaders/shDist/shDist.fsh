uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
void main( void ) {
	vec2 source_uv = fragCoord.xy / iResolution.xy;
    vec2 distortion_center = vec2(0.5,0.5);
    float distortion_x,distortion_y,rr,r2,theta;
    float distortion_k1 = -1.3 ,distortion_k2 = 0.5;
    vec2 dest_uv;
    rr = sqrt((source_uv.x - distortion_center.x)*(source_uv.x - distortion_center.x) + (source_uv.y - distortion_center.y)*(source_uv.y - distortion_center.y));
    r2 = rr * (1.0 + distortion_k1*(rr*rr) + distortion_k2*(rr*rr*rr*rr));
    theta = atan(source_uv.x - distortion_center.x, source_uv.y - distortion_center.y);
    distortion_x = sin(theta) * r2 * 1.0;
    distortion_y = cos(theta) * r2 * 1.0;
    dest_uv.x = distortion_x + 0.5;
    dest_uv.y = distortion_y + 0.5;
    gl_FragColor = vec4( texture2D( gm_BaseTexture, dest_uv).r, texture2D( gm_BaseTexture,dest_uv).g,texture2D( gm_BaseTexture,dest_uv).b, 1. );

}