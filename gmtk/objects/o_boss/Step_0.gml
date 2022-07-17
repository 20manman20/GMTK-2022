switch (boss_state) {
    case bs_st.entry:
		if image_index >= image_number-2 {
			boss_state		= bs_st.idle
			sprite_index	= s_boss_idle_00
			image_index		= 0
		}
		
        break;
    case bs_st.idle:
        break;
}