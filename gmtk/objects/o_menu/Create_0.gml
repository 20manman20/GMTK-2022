for (var i = 0; i < 3; ++i) {
	bg_ang[i]	= random_range(0,360)
	bg_y[i]		= 0
}

option	= 0

if !audio_is_playing(msc_menu) var snd	= audio_play_sound(msc_menu,1,true)

trans		= 1
trans_to	= 1

alarm[0]	= 300
alarm[1]	= 48
depth	= -10000

scale	= 1

amount	= 0