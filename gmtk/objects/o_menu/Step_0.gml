for (var i = 0; i < 3; ++i) {
	bg_ang[i]	= (bg_ang[i]+3-3.8*(i==0))%360
	bg_y[i]		= dsin(bg_ang[i])*10
}


key_accept	= keyboard_check(vk_space) || keyboard_check(vk_enter)

key_down		= keyboard_check_pressed(ord("S"))
key_up			= keyboard_check_pressed(ord("W"))

if key_down || key_up option = !option

if  key_accept {
	if !option {
		audio_stop_all()
		trans_to	= 1
		alarm[2]	= 60
	} else game_end()
}

trans	= lerp(trans,trans_to,.2)

scale	= lerp(scale,1,.2)