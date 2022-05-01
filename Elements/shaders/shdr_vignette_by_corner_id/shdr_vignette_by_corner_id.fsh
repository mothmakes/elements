//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//varying float cornerTest;
varying vec2 cornerCoord;

uniform float vignette_opacity;
uniform float vignette_outer;
uniform float vignette_falloff;


void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float len = length(cornerCoord);
	float vignette = smoothstep(vignette_outer, vignette_outer - vignette_falloff, len);
	base_col.rgb = mix(base_col.rgb, base_col.rgb * vignette, vignette_opacity);
    gl_FragColor = base_col;
	
	//gl_FragColor = vec4(cornerTest, cornerTest, cornerTest, 1.0);
}
