for (var e = 1; e < 4; ++e) {
	for (var i = 0; i < 20+e*6; ++i) {
		instance_create_depth(CENTER_X+lengthdir_x(420+e*80,i*360/(20+e*6)),CENTER_Y+lengthdir_y(420+e*80,i*360/(20+e*6)),depth,o_dots)
	}
}


globalvar boss_health, player_health, player_mode,game_state,game_turn;
game_turn	= 0
boss_health	= 0
player_health	= 100

var _rad	= (756-2.5*90)/2
instance_create_depth(CENTER_X+lengthdir_x(_rad,270),CENTER_Y+lengthdir_y(_rad,270),depth,o_player, {
	spd_z : 0,
	angle : 270,
})

player_mode	= 1
game_state	= 0

tuto_text	=  ["You can move with the arrow keys.",
				"As you are a dice every 10s you jump to decide the fate of the game.",
				"The ring of circles represents the course of the 10 seconds.",
				"Now jump with UP, and descend with DOWN.",
				"Aaaand we present Ms. Fortune! I hope she doesn't try to kill you!"]
tuto_i		= 4
				
depth	= 0

times[0]	= [60*2,60*3.5,60*3.5,60*8,60*2]
times[1]	= [60*3,20,60*8,60*10,30]

if game_state == 0 alarm[0]	= times[0,tuto_i]

alarm[2]	= 60*2 + 60*2 + 60*3.5 + 20 + 60*3.5
alarm[3]	= 60*2 //+ 60*2 + 60*3.5 + 20 + 60*20


