state = 1
spd_hdir	= choose(1,-1)
spd_vdir	= 0

if BOL_PLAYER {
	for (var i = 0; i < point_l; ++i) {
		if player_mode == 1 {
			if i == 0 var _z_ran	= 0
			else _z_ran = -choose(0,1)*64
		} else {
			_z_ran	= 0
		}
			instance_create_depth(CENTER_X+lengthdir_x(point[i,0],point[i,1]),CENTER_Y+lengthdir_y(point[i,0],point[i,1]),depth,o_atk_02,{
				z_ran		: _z_ran,
				bol_life	: choose(0,0,0,0,1),
			})
	}
}

alarm[1]	= 10
