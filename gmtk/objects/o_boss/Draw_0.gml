shader_set(sh_outline)

var texture		= sprite_get_texture(sprite_index,image_index)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)


draw_sprite_ext(sprite_index, image_index, x+lengthdir_x(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), y+lengthdir_y(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), image_scale[hh], image_scale[vv]*cam_angle_z, -cam_angle, c_white, 1);

shader_reset()
