
sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

angle	= 200
spd		= .6

//angle	= (angle+1+360) % 360

x	= CENTER_X + lengthdir_x(265.5,angle)
y	= CENTER_Y + lengthdir_y(265.5,angle)

