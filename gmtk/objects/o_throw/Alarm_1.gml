state	= dc_st.gold
instance_create_depth(x,y,depth-10,o_fx, {
	sprite_index : s_fx_00,
	z : -32,
	image_xscale : .8,
	image_yscale : .8
})


image_index	= irandom_range(0,image_number-1)
alarm[0]	= 60*1.5