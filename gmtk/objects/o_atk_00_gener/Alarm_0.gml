if BOL_PLAYER {
	for (var i = 0; i < 6; ++i) {
			instance_create_depth(CENTER_X+lengthdir_x(limit_inf[0]-45*2.5,i*360/6),CENTER_Y+lengthdir_y(limit_inf[0]-45*2.5,i*360/6),depth,o_atk_00)
	}
}