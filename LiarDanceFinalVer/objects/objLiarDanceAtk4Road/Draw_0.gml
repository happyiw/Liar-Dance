x=modwrap(x,-200,0)

draw_set_alpha(1)
draw_rectangle_color(-400,y,1200,608,col,col,col,col,false)
for (_x=x; _x<=x+1000; _x+=200) {
	draw_sprite_ext(sprLiarDanceAtk4Road,image_index+((_x/200) mod 2),_x,y,1,0.5,0,c_white,1)
	
}