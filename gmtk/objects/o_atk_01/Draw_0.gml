shader_set(sh_outline)

var texture		= sprite_get_texture(sprite_index,image_index)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)

var im_angle	= (-angle - cam_angle + 720) % 360
draw_sprite_billboard(sprite_index, interpol(im_angle,0,360,0,64), x, y)

shader_reset()
