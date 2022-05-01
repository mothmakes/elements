//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//varying float cornerTest;
varying vec2 cornerCoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
	
	float corner_red = mod(in_Colour.r * 255.0, 2.0);
	float corner_blue = mod(in_Colour.b * 255.0, 2.0);
	cornerCoord.x = abs(corner_blue - corner_red) - 0.5;
	cornerCoord.y = corner_blue - 0.5;
	
	//Corner ID Tests:
	//cornerTest = 0.5;
	//cornerTest = mod(in_Colour.r * 255.0, 2.0);
	//cornerTest = abs(mod(in_Colour.b * 255.0, 2.0) - mod(in_Colour.r * 255.0, 2.0));
}
