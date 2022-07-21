switch (state) {
    case 0:
		z	= lerp(z,z_ran,.2)
		if abs(z-z_ran) < .1 {
			z = z_ran
			state = 1
			alarm[0]	= 10
		}
        break;
    case 1:
		angle_spd	= lerp(angle_spd,.9+(player_mode==0)/2,.2)
		angle += angle_spd
		x	= CENTER_X + lengthdir_x(dis,angle)
		y	= CENTER_Y + lengthdir_y(dis,angle)
        break;
	case 2:
		angle_spd	= lerp(angle_spd,.9+(player_mode==0)/2,.2)
		angle += angle_spd
		x	= CENTER_X + lengthdir_x(dis,angle)
		y	= CENTER_Y + lengthdir_y(dis,angle)
        break;
	case 3:
		z	= lerp(z,z_ran,.2)
		if abs(z-z_ran) < .1 {
			z = z_ran
			state = 1
			alarm[0]	= 10
		}
		angle_spd	= lerp(angle_spd,.9+(player_mode==0)/2,.2)
		angle += angle_spd
		x	= CENTER_X + lengthdir_x(dis,angle)
		y	= CENTER_Y + lengthdir_y(dis,angle)
		break;
}