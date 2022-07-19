if instance_exists(o_boss) {
	boss_health	= lerp(boss_health,o_boss.hp_,.1)
}

switch (game_state) {
    case 0:
		
        break;
    case 1:
		
        break
	case 2:
		if BOL_PLAYER o_player.dice_time_spd = 0
		break
	case 3: //jujgar
		if BOL_PLAYER o_player.dice_time_spd = 1
		
		break
	case 4: //dado
		if instance_exists(par_atk) instance_destroy(par_atk)
		break
}

if (game_state == -1 ||  game_state == -2) && (keyboard_check(vk_space) || keyboard_check(vk_enter)) room_restart()

player_health	= clamp(player_health,0,100)