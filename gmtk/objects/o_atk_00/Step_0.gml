

if DIS_R_CENTER <= limit_sup[player_mode] {
	angle-=random_range(80,100)
}

if DIS_R_CENTER >= limit_inf[player_mode] {
	angle-=random_range(80,100)
}


spd	= [lengthdir_x(4,angle),lengthdir_y(4,angle)]
x += spd[hh]
y += spd[vv]
