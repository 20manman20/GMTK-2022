draw_sprite(s_menu_bg_1,0,-10,bg_y[0]-10)
draw_sprite(s_menu_bg_2,10,0,bg_y[2])
draw_sprite(s_menu_bg_3,10,0,bg_y[2])

draw_set_font(fnt_menu)
draw_set_color(c_black)

draw_text(720,360+bg_y[2]+2,"Play")
draw_text(720,400+bg_y[2]+2,"Quit")
draw_text(720,360+bg_y[2]+2,"Play")
draw_text(720,400+bg_y[2]+2,"Quit")
draw_text(720,360+bg_y[2]-2,"Play")
draw_text(720,400+bg_y[2]-2,"Quit")
draw_text(720-2,360+bg_y[2],"Play")
draw_text(720-2,400+bg_y[2],"Quit")
draw_text(720+2,360+bg_y[2],"Play")
draw_text(720+2,400+bg_y[2],"Quit")


draw_circle(720-32,360+8+40*option+bg_y[2]+8,10,false)


draw_set_color(c_white)
draw_text(720,360+bg_y[2],"Play")
draw_text(720,400+bg_y[2],"Quit")

draw_circle(720-32,360+8+40*option+bg_y[2]+8,8,false)

