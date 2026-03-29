/// @description draws borderlines and timeline
draw_set_color(c_white)
draw_set_alpha(1)
draw_rectangle_colour(-32,640-border_width,832,640,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(-32,-32,832,-32+border_width,c_black,c_black,c_black,c_black,false)


draw_rectangle_colour(0,0,-400,-608,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(800,0,1200,608,c_black,c_black,c_black,c_black,false)

draw_set_font(fDefault12)
draw_text_outline(32,608-64,t,c_white,c_black)
draw_text_outline(32,608-32,instance_count,c_white,c_black)



draw_set_alpha(blackout)

draw_rectangle_colour(-400,-304,1200,912,c_black,c_black,c_black,c_black,false)

draw_set_alpha(1)


scrResetDraw(c_white)