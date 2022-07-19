
sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")
spd		= [0,0]
angle_spd	= 0
dis		= point_distance(CENTER_X,CENTER_Y,x,y)
angle	= point_direction(CENTER_X,CENTER_Y,x,y)
col		= random_range(0,255)

spd_z	= 0
ang_z	= 0

state	= 0

