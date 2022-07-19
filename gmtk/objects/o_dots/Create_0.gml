
sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")
col			= irandom_range(0,5)*256/6

image_index	= random_range(0,360)

image_speed	= 1

depth = dot_product(x, y, lengthdir_x(1, CAMERA_UP), lengthdir_y(1, CAMERA_UP))+z*2 + 100