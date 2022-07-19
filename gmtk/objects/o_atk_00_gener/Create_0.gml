
state	= 0

alarm[0]	= 1

point_l	= irandom_range(6,8)

if BOL_PLAYER {
	for (var i = 0; i < 8; ++i) {
		point[i]		= [limit_inf[0]-45*2.5,point_direction(CENTER_X,CENTER_Y,o_player.x,o_player.y)+i*360/point_l]
	}
}