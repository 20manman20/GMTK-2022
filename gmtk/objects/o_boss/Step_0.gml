switch (boss_state) {
    case bs_st.entry:
		if image_index >= image_number-2 {
			boss_state		= bs_st.idle
			sprite_index	= s_boss_idle_00
			game_state		= 3
			image_index		= 0
		}
		
        break;
    case bs_st.idle:
		var _ran	= irandom(96)
		if _ran == 64 {
			sprite_index	= choose(s_boss_confuse,s_boss_hit,s_boss_idle_00)
		}
        break;
}

image_scale[hh]	= lerp(image_scale[hh],1,.02)
image_scale[vv]	= lerp(image_scale[vv],1,.02)


if hp_ <= 0 {
	instance_destroy()
	game_state	= -2
}