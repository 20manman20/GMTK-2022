display_set_gui_maximize(1,1)
switch (game_state) {
	case -2:
		draw_set_color(c_black)
		draw_set_alpha(.8)
		draw_rectangle(0,0,room_width,room_height,false)
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_menu)
		draw_set_halign(fa_center)
		draw_text_ext(room_width/2,room_height/2-20,"You win!",-1,room_width-30)
		draw_text_ext_transformed(room_width/2,room_height/2+20,"Thanks for playing!",-1,room_width-30,.7,.7,0)
		break
	case -1:
		draw_set_color(c_black)
		draw_set_alpha(.8)
		draw_rectangle(0,0,room_width,room_height,false)
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_menu)
		draw_set_halign(fa_center)
		draw_text_ext(room_width/2,room_height/2,"You lose!",-1,room_width-30)
		break
    case 0:
		draw_set_color(c_black)
		draw_set_alpha(.8)
		draw_rectangle(10,10,room_width-10,100,false)
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_tuto)
		draw_set_halign(fa_center)
		draw_text_ext(room_width/2,60,tuto_text[tuto_i],-1,room_width-30)
        break;
    case 1:
		
        break;
}