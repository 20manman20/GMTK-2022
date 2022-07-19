if !state {
	for (var i = 0; i < point_l; ++i) {
		draw_sprite(s_atk_02_signal,image_index,CENTER_X+lengthdir_x(point[i,0],point[i,1]),CENTER_Y+lengthdir_y(point[i,0],point[i,1]))
	}
}