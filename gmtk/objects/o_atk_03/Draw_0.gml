shader_set(sh_outline)

var texture		= sprite_get_texture(sprite_index,image_index)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)
draw_sprite(s_p_shadow,0,x,y)

if interval_is_off(alarm[1], 8) {
	draw_sprite_billboard(sprite_index,bol_life,x,y)
}

shader_reset()
