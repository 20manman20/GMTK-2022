camera_set_view_angle(view_camera[0],cam_angle)
camera_set_view_pos(view_camera[0],0+random_range(-shake,shake),cam_height * ( 1-cam_angle_z ) * 0.5+random_range(-shake,shake))
camera_set_view_size(view_camera[0],cam_width,cam_height*cam_angle_z)
depth	= -1000



angle_z		= lerp(angle_z,interpol(player_mode,0,1,45,25),.2)
cam_angle_z	= 1/dsin(angle_z)

shake	= lerp(shake,0,.15)



switch (cam_state) {
    case cm_st.game:
		if BOL_PLAYER {
			angle	= point_direction(o_player.x,o_player.y,room_width/2,room_height/2) 

			var angle_prev = (cam_angle + 360) % 360
			var angle_next = -angle+90
			var angle_diff = angle_difference(angle_prev,angle_next)

			angle_next = angle_prev-angle_diff
			cam_angle	= (lerp(cam_angle,angle_next,.2)+360) % 360
		}
	
        break;
   case cm_st.spin:
		angle_xr	=	clamp(angle_xr+2,0,180)
		cam_angle	= (angle+90-dcos(angle_xr)*90 + 360) % 360
		if cam_angle == (angle+180+360)%360 {
			cam_state	= 0
		}
	    break;
}