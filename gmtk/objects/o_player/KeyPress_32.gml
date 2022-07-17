instance_destroy()
var _dir	= point_direction(x,y,CENTER_X,CENTER_Y)
instance_create_depth(x,y,depth,o_throw, {
	spd	: [lengthdir_x(15,_dir),lengthdir_y(15,_dir)]
})