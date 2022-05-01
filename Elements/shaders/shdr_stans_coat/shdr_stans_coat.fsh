//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

uniform float grid_size;
uniform float seperation_width;
uniform float shape;
uniform vec3 col_seperation;


void main()
{
	vec4 base_col = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float weight;
	
	if (shape == 1.0) {
		//grid:
		weight = step(seperation_width,fract(gl_FragCoord.x /grid_size));
		weight *= step(seperation_width,fract(gl_FragCoord.y /grid_size));
	} else {
		//circle:
		vec2 centre = 1.4 * (fract(gl_FragCoord.xy/grid_size) - 0.5);
		weight = step(seperation_width, length(centre));
	}
	
	base_col.rgb = mix(col_seperation,base_col.rgb,weight);
	
	gl_FragColor = base_col;
}
