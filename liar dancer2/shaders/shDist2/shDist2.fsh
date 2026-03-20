varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;
uniform vec2 u_resolution;

#define AA

void main()
{
    float strength = 0.03 + u_time / 1.0;
    float t = u_time / 3.0;

    vec3 col = vec3(0.0);
    vec2 fC;

#ifdef AA
    for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
            fC = v_vTexcoord + vec2(i, j) / (3.0 * u_resolution);
#else
            fC = v_vTexcoord;
#endif

            vec2 uv = fC;
            vec2 pos = uv;
            pos.y /= u_resolution.x / u_resolution.y;
            pos = pos - 0.5;

            for (float k = 1.0; k < 5.0; k += 1.0) {
                pos.x += strength * sin(2.0 * t + k * 1.5 * pos.y);
                pos.y += strength * cos(2.0 * t + k * 1.5 * pos.x);
            }
            vec2 warpedUV = uv + pos * 0.03;
            col += texture2D(gm_BaseTexture, warpedUV).rgb;

#ifdef AA
        }
    }
    col /= 9.0;
#endif
    col = pow(col, vec3(1.));
    gl_FragColor = vec4(col, 1.0) * v_vColour;
}
