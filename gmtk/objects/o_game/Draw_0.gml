if BOL_PLAYER {
	for (var i = 0; i < 40; ++i) {
		if o_player.dice_time < 60*9 {
			var _ind	= 60*10/40*i > o_player.dice_time
		} else {
			var _ind	= -1
		}
		draw_sprite(s_time,_ind,CENTER_X+lengthdir_x(420,270+i*360/(40)),CENTER_Y+lengthdir_y(420,270+i*360/(40)))
	}
}

