enum st_atk_02 {
	blink,
	u_d,
	l_r
}

state		= st_atk_02.blink

spd_vdir	= 0

spd_hdir	= 0

alarm[0]	= 60

point_l	= irandom_range(10,13)

function point_atk_02(_length) {
	if BOL_PLAYER {
		for (var i = 0; i < _length; ++i) {
			point[i]		= [random_range(min_radio[player_mode]+16,max_radio[player_mode]-18),point_direction(CENTER_X,CENTER_Y,o_player.x,o_player.y)+i*360/_length]
		}
	}
}

point_atk_02(point_l)

