if BOL_PLAYER {
	var _dis	= point_distance(o_player.x,o_player.y,CENTER_X,CENTER_Y)
	spd	= interpol(_dis,max_radio[0],min_radio[1],.67,.82)
}
angle	= (angle+spd+360) % 360

x	= CENTER_X + lengthdir_x(265.5,angle)
y	= CENTER_Y + lengthdir_y(265.5,angle)

depth = dot_product(x, y, lengthdir_x(1, CAMERA_UP), lengthdir_y(1, CAMERA_UP))+z*2 - 1020
image_angle	= angle