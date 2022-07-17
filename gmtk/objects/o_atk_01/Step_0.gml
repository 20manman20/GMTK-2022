angle	= (angle+.6+360) % 360

x	= CENTER_X + lengthdir_x(265.5,angle)
y	= CENTER_Y + lengthdir_y(265.5,angle)

depth = dot_product(x, y, lengthdir_x(1, CAMERA_UP), lengthdir_y(1, CAMERA_UP))+z*2 - 1020
image_angle	= angle