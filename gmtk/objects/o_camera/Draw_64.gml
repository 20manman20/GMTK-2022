display_set_gui_maximize(1.2,1.2)
//draw_line_width(room_width/2,0,room_width/2,room_height,2)
//draw_line_width(0,room_height/2,room_width,room_height/2,2)
var _x	= random_range(-shake,shake)
var _y	= random_range(-shake,shake)
if game_state != -1 {
	draw_sprite(s_health_bar,0,10+_x,400+_y)
	draw_sprite(s_health_bar_hp,interpol(player_health,0,100,0,99),89+_x,433+_y)
}