
state	= 0

alarm[0]	= 60

point_l	= irandom_range(8,13)

if BOL_PLAYER {
	for (var i = 0; i < 13; ++i) {
		point[i]		= [random_range(min_radio[player_mode],max_radio[player_mode]),point_direction(CENTER_X,CENTER_Y,o_player.x,o_player.y)+i*360/point_l]
	}
}