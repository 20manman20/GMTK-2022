
for ( var i = 0; i< z_size/2+1; i++ ){
	var _ldx = lengthdir_x( 2*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
	var _ldy = lengthdir_y( 2*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		
	draw_sprite_ext(sprite_index, 0,x+_ldx, y+_ldy,1,1,image_angle,c_white,1)
}
