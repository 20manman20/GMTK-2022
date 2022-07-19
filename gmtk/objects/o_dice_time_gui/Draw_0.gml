
for ( var i = 0; i<17; i++ ){
	var _ldx = lengthdir_x( 3*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
	var _ldy = lengthdir_y( 3*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		
	draw_sprite_ext(sprite_index, i,x+_ldx, y+_ldy,2,2,0,c_white,1)
}
	
