globalvar cam_angle;

radius		= 200
angle		= 270

spd				= [0,0]
vec_spd			= [0,0]
spd_final		= [0,0]
vec_spd_final	= [0,0]

spd_max		= 4

x	= CENTER_X+lengthdir_x(radius,angle)
y	= CENTER_Y+lengthdir_y(radius,angle)

spd			= [0,0]
spd_final	= [0,0]

spr_walk[0]	= s_p_right
spr_walk[1]	= s_p_up
spr_walk[2]	= s_p_left
spr_walk[3]	= s_p_down

grav		= .5

cam_angle	= 0


sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

i_angle	= 0

solid_touch	= noone

enum s_st {
	idle, walk, jump
}
