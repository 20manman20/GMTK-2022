globalvar player_health, game_state, player_mode;
game_turn		= 0
player_health	= 100
player_mode		= 2

var _rad	= (756-2.5*90)/2

instance_create_depth(CENTER_X+lengthdir_x(_rad,270),CENTER_Y+lengthdir_y(_rad,270),depth,o_player, {
	spd_z : 0,
	angle : 270,
})

for (var i = 0; i < 8; ++i) {
	instance_create_depth(CENTER_X+lengthdir_x(144,360/8*i),CENTER_Y+lengthdir_y(144,360/8*i),depth,o_ground,{
		image_angle	: 360/8*i 
	})
}


depth	= 0

