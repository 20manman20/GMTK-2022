globalvar boss_health, player_mode; 
boss_health	= 0

instance_create_depth(1024,576,depth,o_player, {
	spd_z : 0
})

player_mode	= 0