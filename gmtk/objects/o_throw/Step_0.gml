x += spd[hh]
y += spd[vv]
z += spd_z

if z <= 0 {
	spd_z = acc(spd_z,8,grav)
}

if spd_z > 0 && z >= 0 {
	z	= 0
	spd_z	= 0
	spd[hh]	= 0
	spd[vv]	= 0
}

if shake == 0 && point_distance(x,y,CENTER_X,CENTER_Y) < 8 {
	shake = 15
	o_boss.hp_ -=25
}

switch (state) {
    case dc_st.fly:
		sprite_index	= s_p_throw
		
		if image_index >= 16 {
			o_camera.cam_state = cm_st.spin
			o_camera.angle = cam_angle-179

			sprite_index= s_p_choose
			image_index	= irandom_range(0,7)
			state	= dc_st.rand
		}
        break;
    case dc_st.rand:
        sprite_index	= s_p_choose
		image_speed		= lerp(image_speed,0,.02)
		if image_speed <= .05 {
			image_index++
			state	= dc_st.gold
			alarm[0]	= 60*1.5
		}
        break;
	case dc_st.gold:
		image_speed		= 0
		sprite_index	= s_p_gold
		break;
	
}