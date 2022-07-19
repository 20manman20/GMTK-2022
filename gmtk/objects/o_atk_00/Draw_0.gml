
draw_sprite(s_p_shadow,0,x,y)

shader_set(sh_outline)

var texture		= sprite_get_texture(sprite_index,image_index)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)

draw_sprite_ext(s_atk_00_0, image_index, x+lengthdir_x(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), y+lengthdir_y(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), 1, cam_angle_z, -cam_angle, c_white, 1);
draw_sprite_ext(s_atk_00_1, image_index, x+lengthdir_x(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), y+lengthdir_y(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), 1, cam_angle_z, -cam_angle, c_white, 1);
draw_sprite_ext(s_atk_00_2, image_index, x+lengthdir_x(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), y+lengthdir_y(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), 1, cam_angle_z, -cam_angle, make_color_hsv(col,125,255), 1);

shader_reset()
