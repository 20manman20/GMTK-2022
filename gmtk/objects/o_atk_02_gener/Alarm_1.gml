image_index	= 0
state = 0

point_l	= irandom_range(10,13)

instance_destroy(o_atk_02)
if BOL_PLAYER {
	for (var i = 0; i < point_l; ++i) {
		point[i]		= [random_range(limit_inf[player_mode],limit_sup[player_mode]),point_direction(CENTER_X,CENTER_Y,o_player.x,o_player.y)+i*360/point_l]
	}
}
alarm[0]	= 60