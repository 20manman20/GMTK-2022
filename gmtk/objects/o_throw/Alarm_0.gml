instance_destroy()

image_scale	= [1.5,.7]

switch (image_index) {
    case 0:
		player_health+=40
        break;
    case 1:
		player_health+=20
        break;
	case 2:
		player_mode	= 1
		break;
	case 3:
		player_mode	= 1
		break
	case 4:
		if instance_exists(o_boss) {
			o_boss.hp_-=10/2
			
		}
		break;
	case 5:
		if instance_exists(o_boss) {
			o_boss.hp_-=20/2
			
		}
		break;
	case 6:
		if instance_exists(o_boss) {
			o_boss.hp_-=30/2
			
		}
		break;
	case 7:
		if instance_exists(o_boss) {
			o_boss.hp_-=40/2
		}
		break;
		
}

if instance_exists(o_boss) {
	o_boss.alarm[0]	= 1
}

instance_create_depth(x,y,depth,o_player, {
	z		: -1,
	spd_z	: -4,
})

game_state	= 3

