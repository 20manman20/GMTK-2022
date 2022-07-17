
for ( var i = 0; i<8; i++ ){
		var _ldx = lengthdir_x( 16*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		var _ldy = lengthdir_y( 16*i*dcos(angle_z)*1/dsin(angle_z), CAMERA_UP)
		
		draw_sprite(sprite_index, i,x+_ldx, y+_ldy)
	}
	
