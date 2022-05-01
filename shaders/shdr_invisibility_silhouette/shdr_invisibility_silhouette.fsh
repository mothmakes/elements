//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform vec2 orb_coord;
uniform float invis_min_range;
uniform float invis_falloff_range;

void main()
{
	vec4 base_col = texture2D( gm_BaseTexture, v_vTexcoord );
	base_col.a *= v_vColour.a;
	
	float dist = length(v_vPosition - orb_coord);
	float weight = smoothstep(invis_min_range,invis_min_range+invis_falloff_range,dist);
	float alpha = base_col.a * min((0.5 + step(base_col.r + base_col.g + base_col.b,0.01)),1.0);
    gl_FragColor = mix(vec4(v_vColour.rgb,alpha),base_col,weight);
}
