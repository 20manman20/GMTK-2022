#macro	hh				0
#macro	vv				1
	
#macro CAMERA_UP		(-cam_angle+90)
#macro BOL_PLAYER		instance_exists(o_player)
#macro	CENTER_X		(room_width/2)
#macro	CENTER_Y		(room_height/2)
#macro	DIS_R_CENTER	point_distance(x,y,room_width/2,room_height/2)
#macro	ANG_R_CENTER	point_direction(x,y,room_width/2,room_height/2)

function acc(val0, val1, val2) {
	if (val0 < val1)	return min(val0+val2, val1)
	else				return max(val0 - val2, val1)
}

function interpol(_n,_x,_y,_a,_b) {
	var alpha	= (_n-_x)*(_b-_a)
	
	return	alpha/(_y-_x)+_a
}

function depth_set_3d(){
	depth = dot_product(x, y, lengthdir_x(1, CAMERA_UP), lengthdir_y(1, CAMERA_UP))+z*2 - 1020

}

function draw_stack(s_index,_x,_y) {
	for ( var i = 0; i<sprite_get_number(sprite_index); i++ ){
		var _ldx = lengthdir_x( i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		var _ldy = lengthdir_y( i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		
		draw_sprite(s_index, i,_x+_ldx, _y+_ldy)
	}
}

function draw_stack_ext(s_index,_x,_y, xsc, ysc, zsc,_rot,_color,_alpha) {
	for ( var i = 0; i<sprite_get_number(sprite_index); i++ ){
		var _ldx = lengthdir_x( i*zsc*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		var _ldy = lengthdir_y( i*zsc*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		
		draw_sprite_ext(s_index, i,_x+_ldx, _y+_ldy, xsc, ysc, _rot,_color,_alpha)
	}
}

function interval_is_off(argument0, argument1) {
	var _value = argument0;
	var _interval = argument1;

	return (_value % _interval) <= _interval/2;

}


function draw_sprite_billboard(_spr, _ind, _x, _y){
	///@param sprite_index
	///@param image_index
	///@param x
	///@param y
	
	draw_sprite_ext(_spr, _ind, _x+lengthdir_x(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), _y+lengthdir_y(z*dcos(angle_z)*1/dsin(angle_z),-cam_angle-90), 1, cam_angle_z, -cam_angle, c_white, 1);
}

function place_meeting_3d(_x,_y,_z,_obj) {
	var target_ds	= ds_list_create()
	var target_i	= instance_place_list(_x,_y,_obj,target_ds,0)

	var xymeeting	= 0

	if target_i > 0	{
		for (var i = 0; i < target_i; ++i) {
			if rectangle_in_rectangle(0,target_ds[| i].z,1,target_ds[| i].z-32,
				0, _z-1,1,_z-32) {
				xymeeting	= target_ds[| i]
				break
			} else {
			}
		}
	}

	ds_list_destroy(target_ds)

	return xymeeting

}


