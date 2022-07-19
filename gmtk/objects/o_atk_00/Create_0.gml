sprite_index	= choose(s_atk_00_0,s_atk_00_1,s_atk_00_2)
sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")
spd		= [2*choose(-1,1),2*choose(-1,1)]
angle	= random_range(0,360)
col		= random_range(0,255)

spd_z	= 0
ang_z	= 0