var input_dir, input_bol


if place_meeting_3d(x,y,z,par_atk)   {
	var _atk	= place_meeting_3d(x,y,z,par_atk)
	if !_atk.bol_life {
			if !invincible {
			invincible	= true
			alarm[0]	= 60
			shake	= 10
			z--
			spd_z=-6
			player_health += -20
		}
	} else {
		player_health += 20
		instance_destroy(_atk)
	}
}


switch (player_mode) {	
    case 0:
		key_left		= keyboard_check(ord("A"))
		key_right		= keyboard_check(ord("D"))
		key_down		= keyboard_check(ord("S"))
		key_up			= keyboard_check(ord("W"))

		key_jump		= 0
		key_jump_r		= 0
		key_stomp		= 0

        break;
	case 1:
		key_left		= keyboard_check(ord("A"))
		key_right		= keyboard_check(ord("D"))
		key_down		= 0
		key_up			= 0

		key_jump		= keyboard_check_pressed(ord("W"))
		key_jump_r		= keyboard_check_released(ord("W"))
		key_stomp		= keyboard_check_pressed(ord("S"))
		
        break;
	case 2:
		key_left		= keyboard_check(vk_left)
		key_right		= keyboard_check(vk_right)
		key_down		= keyboard_check(vk_down)
		key_up			= keyboard_check(vk_up)

		key_jump		= keyboard_check_pressed(ord("X"))
		key_jump_r		= keyboard_check_released(ord("X"))
		key_stomp		= 0
		key_dash		= keyboard_check_pressed(ord("C"))
		key_dash_r		= keyboard_check_released(ord("C"))

        break;
}

input			= [key_right-key_left,
				key_down-key_up]


input_dir		= point_direction(0,0,input[hh],input[vv])
input_bol		= point_distance(0,0,input[hh],input[vv])


var _mag		= interpol(DIS_R_CENTER,56,180,1,1.5)

spd				= [lengthdir_x(input_bol*spd_max*_mag,input_dir),
					lengthdir_y(input_bol*spd_max,input_dir)*2]

spd_push[hh]	= lerp(spd_push[hh],0,spd_push_acc)
spd_push[vv]	= lerp(spd_push[vv],0,spd_push_acc)

bol_floor		= place_meeting_3d(x,y,z+1,o_ground) || z >= 0



if DIS_R_CENTER <= min_radio[player_mode] && spd[vv] < 0 {
	spd[vv]		= 0
}

if DIS_R_CENTER >= max_radio[player_mode] && spd[vv] > 0 {
	spd[vv]		= 0
}

if input_bol != 0  {
	var angle_prev = i_angle
	var angle_next = input_dir
	var angle_diff = angle_difference(angle_prev,angle_next)

	angle_next = angle_prev-angle_diff

	i_angle	= (acc(i_angle,angle_next,30)+360) % 360
}


vec_spd			= [point_distance(0,0,spd[hh]+spd_push[hh],spd[vv]+spd_push[vv]),point_direction(0,0,spd[hh]+spd_push[hh],spd[vv]+spd_push[vv])]

var _angle		= point_direction(room_width/2,room_height/2,x,y)

//Sin plus es aleja del centro4.5
//Cuando el plus es positivo y voy a la derecha se acerca hasta llegar al centro, donde se omcienz a alejar
vec_spd_final	= [vec_spd[hh],_angle+vec_spd[vv]+90+(spd[hh]+spd_push[hh])/(DIS_R_CENTER/40+1.5)]

spd_final		= [lengthdir_x(vec_spd_final[hh],vec_spd_final[vv]),lengthdir_y(vec_spd_final[hh],vec_spd_final[vv])]

repeat (abs(spd_final[hh]*4)) {
	if place_meeting_3d(x+sign(spd_final[hh]),y,z,o_ground) {
		spd_final[hh]	= 0
		break
	} else x	+= sign(spd_final[hh])/4
}

repeat (abs(spd_final[vv]*4)) {
	if place_meeting_3d(x,y+sign(spd_final[vv]),z,o_ground) {
		spd_final[vv]	= 0
		break
	} else y	+= sign(spd_final[vv])/4
}

repeat (abs(spd_z*2)) {
	if place_meeting_3d(x,y,z+sign(spd_z),o_ground)  || z >= 0 {
		spd_z	= 0
		break
	} else z	+= sign(spd_z)/2
}

if !bol_floor {
	if !bol_dash spd_z = acc(spd_z,20,grav)
} else if key_jump && !bol_dash {
	spd_z	= -15
	z--
}

if bol_dash spd_z	= 0

if spd_z < 0 && key_jump_r {
	spd_z	*= .3
}

if key_stomp && z < -1 {
	spd_z = 15
}

/*
var _touch	= instance_place(x,y,o_ground)

if _touch {
	if instance_exists(solid_touch)	 {
		if solid_touch != _touch {
			
			solid_touch.image_blend	= c_white
			solid_touch				= _touch
			_touch.image_blend		= c_red
		}
	} else {
		solid_touch				= _touch
		solid_touch.image_blend	= c_red
	}
}
*/

if input[0] == 0 && input[1] == 0 {
	sprite_index	= s_p_idle
} else {
	sprite_index	= spr_walk[clamp(round(input_dir/90),0,3)]
}

if dice_time < 60*10 {
	dice_time+=dice_time_spd
} else {
	/*
	game_turn++
	game_state	= 4
	instance_destroy()
	var _dir	= point_direction(x,y,CENTER_X,CENTER_Y)
	var _lim	= [14,21.5]
	instance_create_depth(x,y,depth,o_throw, {
		spd		: [lengthdir_x(interpol(DIS_R_CENTER,min_radio[0],max_radio[0],_lim[hh],_lim[vv]),_dir),lengthdir_y(interpol(DIS_R_CENTER,min_radio[0],max_radio[0],_lim[hh],_lim[vv]),_dir)],		
		angle	: point_direction(x,y,CENTER_X,CENTER_Y)
	})
	*/
}

if player_health <= 0 {
	instance_destroy()
	audio_stop_all()
	
	game_state	= -1
}

if key_dash && !bol_dash {
	bol_dash		= true
	alarm[1]		= 10
	spd_push_acc	= .1
	spd_z			= 0
	spd_push[hh]	= input[hh]*10
}

if bol_dash && key_dash_r {
	alarm[1]		= 1
	spd_push[hh]	*= 0
}