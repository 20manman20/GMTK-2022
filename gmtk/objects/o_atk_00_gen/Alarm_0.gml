 state = 1
if BOL_PLAYER {
	for (var i = 0; i < point_l; ++i) {
			instance_create_depth(CENTER_X+lengthdir_x(point[i,0],point[i,1]),CENTER_Y+lengthdir_y(point[i,0],point[i,1]),depth,o_atk_00)
	}
}