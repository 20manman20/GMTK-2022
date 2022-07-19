
state	= 0

alarm[0]	= 60

point_l	= irandom_range(10,13)

if BOL_PLAYER {
	for (var i = 0; i < 13; ++i) {
		point[i]		= [random_range(limit_inf[player_mode],limit_sup[player_mode]),point_direction(CENTER_X,CENTER_Y,o_player.x,o_player.y)+i*360/point_l]
	}
}