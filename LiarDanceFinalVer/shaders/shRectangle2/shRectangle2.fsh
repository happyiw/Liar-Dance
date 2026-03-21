uniform float iGlobalTime;
uniform vec3 iResolution;
uniform float toggle;
varying vec2 fragCoord;

void main(void)
{
    vec2 uv = fragCoord / iResolution.xy;
    uv.x *= iResolution.x / iResolution.y;
    float cols = 8.0;
    float rows = 8.0;
    float spacing = 0.15;
    float rowId = floor(uv.y * rows);
    float dir = mod(rowId, 2.0) * 2.0 - 1.0;
    float shift = iGlobalTime * 0.4 * dir;
    uv.x += shift;
    vec2 grid = vec2(cols, rows);
    vec2 gv = fract(uv * grid) - 0.5;
    vec2 id = floor(uv * grid);
    float pattern = mod(id.y, 2.0);
    float mask = abs(pattern - toggle);
    float smoothMask = smoothstep(0.0, 1.0, mask);
    float minSize = 0.2;
    float maxSize = 0.45;
    float size = mix(minSize, maxSize, smoothMask);
    size *= (1.0 - spacing);
    float box =
        step(abs(gv.x), size) *
        step(abs(gv.y), size);

    gl_FragColor = vec4(vec3(box), 1.0);
}
