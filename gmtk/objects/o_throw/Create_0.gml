sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")


spd_z	= -7

grav		= .5

enum dc_st {
	fly,
	rand,
	gold
}
state	= dc_st.fly