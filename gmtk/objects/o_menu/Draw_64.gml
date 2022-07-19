draw_set_color(c_black)
draw_set_alpha(trans)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)
draw_set_color(c_white)

if amount < 3 draw_sprite_ext(s_gmtk_logo,0,room_width/2,room_height/2,scale,scale,0,c_white,trans)