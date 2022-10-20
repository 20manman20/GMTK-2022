globalvar cam_angle, max_radio, min_radio;

spd				= [0,0]
vec_spd			= [0,0]
spd_final		= [0,0]
vec_spd_final	= [0,0]

spd_max		= 2

invincible	= false

key_dash	= false
bol_dash	= false

spd			= [0,0]
spd_push	= [0,0]
spd_push_acc	= .1
spd_final	= [0,0]

spr_walk[0]	= s_p_right
spr_walk[1]	= s_p_up
spr_walk[2]	= s_p_left
spr_walk[3]	= s_p_down

grav		= 1.5


sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

i_angle	= 0

solid_touch	= noone

enum s_st {
	idle, walk, jump
}

dice_time_spd	= 1
dice_time		= 0

instance_create_depth(x,y,depth-10,o_fx, {
	sprite_index : s_fx_01,
	z : -32,
	image_xscale : .5,
	image_yscale : .5
})

max_radio	= [(756)/2,(756-90*2)/2,(756)/2-24]
min_radio	= [(756-90*5)/2,(756-90*3)/2,(756-90*5)/2+8]