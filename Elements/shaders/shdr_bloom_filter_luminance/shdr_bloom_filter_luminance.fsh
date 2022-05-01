//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float bloom_threshold;
uniform float bloom_range;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float lum = dot(base_col.rgb, vec3(0.229, 0.587, 0.114));
	float weight = smoothstep(bloom_threshold, bloom_threshold + bloom_range,lum);
	
	base_col.rgb = mix(vec3(0.0),base_col.rgb,weight);
	
    gl_FragColor = base_col;
}
