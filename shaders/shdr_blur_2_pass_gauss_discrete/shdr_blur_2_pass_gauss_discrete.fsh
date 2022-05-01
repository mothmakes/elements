//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float blur_steps;
uniform vec2 texel_size;
uniform float sigma;
uniform vec2 blur_vector;

float weight(float pos) { //Gauss 2D
	return exp(-(pos*pos)/ (2.0 * sigma * sigma));
}

void main()
{
	highp vec4 blurred_col = texture2D(gm_BaseTexture, v_vTexcoord);
	
	vec2 sample;
	float offset, sample_weight;
	float total_weight = 1.0;
	float kernel = 2.0 * blur_steps + 1.0;
	for(offset = 1.0; offset <= blur_steps; offset++) {
		sample_weight = weight(offset/kernel);
		total_weight += 2.0 * sample_weight;
		
		sample = v_vTexcoord - offset * texel_size * blur_vector;
		blurred_col += texture2D(gm_BaseTexture, sample) * sample_weight;
		
		sample = v_vTexcoord + offset * texel_size * blur_vector;
		blurred_col += texture2D(gm_BaseTexture, sample) * sample_weight;
	}
    gl_FragColor = v_vColour * blurred_col / total_weight;
	
}
