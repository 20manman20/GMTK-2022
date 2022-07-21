shader_set(sh_outline)

var texture		= sprite_get_texture(sprite_index,image_index)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)
draw_sprite_ext(s_dots, image_index,x,y, 1, cam_angle_z, -cam_angle, make_color_hsv(col,75,200), 1);
shader_reset()
draw_sprite_ext(s_dots_shine, image_index,x,y, 1, cam_angle_z, -cam_angle, c_white, 1);

