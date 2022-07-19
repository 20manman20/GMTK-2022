
sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

enum bs_st	{
	entry,
	idle
}

alarm[0]	= 160

boss_state	= bs_st.entry
image_scale	= [1,1]