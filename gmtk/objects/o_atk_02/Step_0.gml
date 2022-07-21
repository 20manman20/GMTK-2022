switch (state) {
    case 0:
		z	= lerp(z,z_ran,.2)
		if abs(z-z_ran) < .1 {
			z = z_ran
			state = 1
			alarm[0]	= move_time-blink_time
		}
        break;
    case 1:
		
		angle_spd	= lerp(angle_spd,angle_spd_max+(player_mode==0)/2,.2)
		angle += angle_spd*spd_hdir
		x	= CENTER_X + lengthdir_x(dis,angle)
		y	= CENTER_Y + lengthdir_y(dis,angle)
		
        break;
	case 2:
		
		angle_spd	= lerp(angle_spd,angle_spd_max+(player_mode==0)/2,.2)
		angle += angle_spd*spd_hdir
		x	= CENTER_X + lengthdir_x(dis,angle)
		y	= CENTER_Y + lengthdir_y(dis,angle)
		
        break;
	case 3:
		z	= lerp(z,z_ran,.2)
		if abs(z-z_ran) < .1 {
			z = z_ran
			state = 1
			alarm[0]	= move_time-blink_time
		}
		break;
}

spd_hdir	= o_atk_02_gener.spd_hdir