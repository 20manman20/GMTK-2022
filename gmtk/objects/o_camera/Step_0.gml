camera_set_view_angle(view_camera[0],cam_angle)
camera_set_view_pos(view_camera[0],0+random_range(-shake,shake),cam_height * ( 1-cam_angle_z ) * 0.5+random_range(-shake,shake))
camera_set_view_size(view_camera[0],cam_width,cam_height*cam_angle_z)
depth	= -1000



angle_z		= 30
cam_angle_z	= 1/dsin(angle_z)

shake	= lerp(shake,0,.15)


switch (cam_state) {
    case cm_st.game:
		if instance_exists(o_player) angle	= point_direction(room_width/2,room_height/2,o_player.x,o_player.y)

		var angle_prev = cam_angle
		var angle_next = -angle-90
		var angle_diff = angle_difference(angle_prev,angle_next)

		angle_next = angle_prev-angle_diff
		cam_angle	= (lerp(cam_angle,angle_next,.2)+360) % 360
	
        break;
    case cm_st.spin:

		var angle_prev = cam_angle
		var angle_next = angle
		var angle_diff = angle_difference(angle_prev,angle_next)

		angle_next = angle_prev-angle_diff
		var _dif	= interpol(cam_angle-angle,0,180,1,180-1)
		cam_angle	= cam_angle-dsin(_dif)*6
        break;
}
