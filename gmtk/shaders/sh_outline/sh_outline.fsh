//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 in_texel;

void main()
{
	vec4 new_color	= v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	vec2 pixel_size	= in_texel*1.0;
	
	if(texture2D(gm_BaseTexture, v_vTexcoord).a <= 0.0) {
		float alpha = 0.0;
		
		alpha	= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixel_size.x, v_vTexcoord.y)).a);
		alpha	+= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixel_size.x, v_vTexcoord.y- pixel_size.y)).a);
		alpha	+= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixel_size.x, v_vTexcoord.y)).a);
		alpha	+= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixel_size.x, v_vTexcoord.y+ pixel_size.y)).a);
		alpha	+= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x , v_vTexcoord.y- pixel_size.y)).a);
		alpha	= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixel_size.x, v_vTexcoord.y- pixel_size.y)).a);
		alpha	= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x , v_vTexcoord.y+ pixel_size.y)).a);
		alpha	= max(alpha,texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixel_size.x, v_vTexcoord.y+ pixel_size.y)).a);
		
		if (alpha > 0.0) {
			new_color	= vec4(0.141,0.18,0.216,1.0);
		}
	}
	
	gl_FragColor	= new_color;
	
}

