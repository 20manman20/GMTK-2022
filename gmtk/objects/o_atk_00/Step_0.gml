
if DIS_R_CENTER <= limit_sup[0] {
	var _dir	= point_direction(x,y,room_width/2,room_height/2)-180
	x	= CENTER_X+lengthdir_x(point_distance(x,y,room_width/2,room_height/2)+4,_dir)
	y	= CENTER_Y+lengthdir_y(point_distance(x,y,room_width/2,room_height/2)+4,_dir)
	spd[vv]*=-1
	spd[hh]	= random_range(spd[hh]-1,spd[hh]+1)
}

if DIS_R_CENTER >= limit_inf[0] {
	var _dir	= point_direction(x,y,room_width/2,room_height/2)-180
	x	= CENTER_X+lengthdir_x(point_distance(x,y,room_width/2,room_height/2)-4,_dir)
	y	= CENTER_Y+lengthdir_y(point_distance(x,y,room_width/2,room_height/2)-4,_dir)
	spd[vv]*=-1
	spd[hh]	= random_range(spd[hh]-1,spd[hh]+1)
}

if place_meeting(x,y,o_atk_00) spd[vv]*=-1


z	= lerp(z,0,.2)
vec_spd			= [point_distance(0,0,spd[hh],spd[vv]),point_direction(0,0,spd[hh],spd[vv])]

var _angle		= point_direction(room_width/2,room_height/2,x,y)

//Sin plus es aleja del centro4.5
//Cuando el plus es positivo y voy a la derecha se acerca hasta llegar al centro, donde se omcienz a alejar
vec_spd_final	= [vec_spd[hh],_angle+vec_spd[vv]+90+spd[hh]/(DIS_R_CENTER/40+1.5)]

spd_final		= [lengthdir_x(vec_spd_final[hh],vec_spd_final[vv]),lengthdir_y(vec_spd_final[hh],vec_spd_final[vv])]


x += spd_final[hh]
y += spd_final[vv]


ang_z = (ang_z + 4)%360

