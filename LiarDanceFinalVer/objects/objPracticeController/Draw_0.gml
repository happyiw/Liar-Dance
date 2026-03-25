
draw_set_align(-1,-1)
draw_set_font(fSasa3_1)
draw_text_outline(x,y,"Practice: "+string(atk),c_white,c_black)
draw_text_outline(x,y-24,"Use up and down arrows to navigate",c_white,c_black)

if global.debugMode {
	draw_text_outline(x,y+24,"debug PB: "+string(pb_time),c_white,c_black)
	draw_text_outline(x,y+48,"debug Atk Limit: "+string(atk_limit),c_white,c_black)
	
}
