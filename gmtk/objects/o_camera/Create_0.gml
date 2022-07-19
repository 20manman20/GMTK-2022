globalvar cam_angle,cam_angle_z,angle_z, shake;
cam_angle	= 0

angle_z		= 15
cam_angle_z	= 1/dsin(angle_z)

angle_xr	= 0
angle		= 0
cam_width	= camera_get_view_width(view_camera[0])
cam_height	= camera_get_view_height(view_camera[0])

shake	= 0

window_set_size(cam_width,cam_height)
alarm[0]	= 1

enum cm_st {
	game,
	spin
}
cam_state	= cm_st.game

depth	= 10