uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
void main(void)
{
    // 正規化座標
    vec2 uv = fragCoord / iResolution.xy;
    uv.x *= iResolution.x / iResolution.y;

    // グリッド設定
    float cols = 14.0;
    float rows = 14.0;
    float spacing = 0.15;

    // 横列ごとの左右移動（交互）
    float rowId = floor(uv.y * rows);
    float dir = mod(rowId, 2.0) * 2.0 - 1.0; // -1 or +1
    float shift = iGlobalTime * 0.1 * dir;

    // 横方向にシフト
    uv.x += shift;

    // グリッド計算
    vec2 grid = vec2(cols, rows);
    vec2 gv = fract(uv * grid) - 0.5;
    vec2 id = floor(uv * grid);

    // 縦列ごとの sin 波でサイズ変化
    float wave = sin(id.y * 2.6 + iGlobalTime) * 0.5 + 0.5;
    float size = mix(0.15, 0.45, wave);
    size *= (1.0 - spacing);

    // 四角形マスク
    float box =
        step(abs(gv.x), size) *
        step(abs(gv.y), size);

    gl_FragColor = vec4(vec3(box), 1.0);
}