
//draw_circle_colour(400,304,r,c_white,c_white,false)

draw_primitive_begin(pr_trianglestrip)
	
for (i=0; i<=120; i++) {
	draw_vertex_colour(
	x+lengthdir_x(r1[i],i*4),
	y+lengthdir_y(r1[i],i*4),
	c_black,1)	
	
	draw_vertex_colour(
	x+lengthdir_x(r2[i],i*4),
	y+lengthdir_y(r2[i],i*4),
	c_black,1)	
}

draw_primitive_end()
