var im_angle	= (-angle - cam_angle + 720) % 360
draw_text(300,10,interpol(im_angle,0,360,0,64))