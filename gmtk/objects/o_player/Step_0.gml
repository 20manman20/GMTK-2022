var input_dir, input_bol

input			= [keyboard_check(ord("D")) - keyboard_check(ord("A")),
				keyboard_check(ord("S")) - keyboard_check(ord("W"))]


input_dir		= point_direction(0,0,input[hh],input[vv])
input_bol		= point_distance(0,0,input[hh],input[vv])


var _mag		= interpol(DIS_R_CENTER,56,180,1,1.5)

spd				= [lengthdir_x(input_bol*spd_max*_mag,input_dir),
					lengthdir_y(input_bol*spd_max,input_dir)]

bol_floor		= place_meeting_3d(x,y,z+1,o_slope) || z >= 0

if DIS_R_CENTER <= 102 && spd[vv] < 0 {
	spd[vv]		= 0
}

if DIS_R_CENTER >= 270 && spd[vv] > 0 {
	spd[vv]		= 0
}

if input_bol != 0  {
	var angle_prev = i_angle
	var angle_next = input_dir
	var angle_diff = angle_difference(angle_prev,angle_next)

	angle_next = angle_prev-angle_diff

	i_angle	= (acc(i_angle,angle_next,30)+360) % 360
}


vec_spd			= [point_distance(0,0,spd[hh],spd[vv]),point_direction(0,0,spd[hh],spd[vv])]

var _angle		= point_direction(room_width/2,room_height/2,x,y)

//Sin plus es aleja del centro4.5
//Cuando el plus es positivo y voy a la derecha se acerca hasta llegar al centro, donde se omcienz a alejar
vec_spd_final	= [vec_spd[hh],_angle+vec_spd[vv]+90+spd[hh]/(DIS_R_CENTER/40+1.5)]

spd_final		= [lengthdir_x(vec_spd_final[hh],vec_spd_final[vv]),lengthdir_y(vec_spd_final[hh],vec_spd_final[vv])]

repeat (abs(spd_final[hh]*4)) {
	if place_meeting_3d(x+sign(spd_final[hh]),y,z,o_slope) {
		spd_final[hh]	= 0
		break
	} else x	+= sign(spd_final[hh])/4
}

repeat (abs(spd_final[vv]*4)) {
	if place_meeting_3d(x,y+sign(spd_final[vv]),z,o_slope) {
		spd_final[vv]	= 0
		break
	} else y	+= sign(spd_final[vv])/4
}

repeat (abs(spd_z*2)) {
	if place_meeting_3d(x,y,z+sign(spd_z),o_slope)  || z >= 0 {
		spd_z	= 0
		break
	} else z	+= sign(spd_z)/2
}

if !bol_floor {
	spd_z = acc(spd_z,8,grav)
} else if keyboard_check_pressed(vk_space)  {
	spd_z	= -10
	z--
}

if spd_z < 0 && keyboard_check_released(vk_space) {
	spd_z	*= .3
}

var angle_prev = cam_angle
var angle_next = -_angle-90
var angle_diff = angle_difference(angle_prev,angle_next)

angle_next = angle_prev-angle_diff
cam_angle	= (lerp(cam_angle,angle_next,.2)+360) % 360


var _touch	= instance_place(x,y,o_slope)

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



if input[0] == 0 && input[1] == 0 {
	sprite_index	= s_p_idle
} else {
	sprite_index	= spr_walk[clamp(round(input_dir/90),0,3)]
}

