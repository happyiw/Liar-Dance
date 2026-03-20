varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    texColor *= v_vColour; 

    float grey;
	float grey1;
	float grey2;

        grey = (texColor.r + texColor.g + texColor.b) / 3.0;
		grey1 = (texColor.r + texColor.g + texColor.b) / 3.0;
		grey2 = (texColor.r + texColor.g + texColor.b) / 3.0;


    gl_FragColor = vec4(grey, grey1, grey2, texColor.a);
}