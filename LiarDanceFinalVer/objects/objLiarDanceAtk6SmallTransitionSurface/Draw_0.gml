

/*
_id = instance_place(scrPX(),scrPY(),objCustomBullet)
if _id != noone {
	if _id.tag==target_tag
}
*/

if !surface_exists(srf)
	srf=surface_create(800,608)
	
if !surface_exists(srf2)
	srf2=surface_create(800,608)
	
	
draw_set_alpha(1)

surface_set_target(srf)
draw_clear_alpha(c_white,0)
draw_set_alpha(1)
	
draw_clear_alpha(c_black,0)


with(objLiarDanceAtk6Teto) {
	draw_sprite_ext(sprite_index,image_index,x,y,other.teto_side,image_yscale,image_angle,c_black,0.5)
	draw_sprite_ext(sprite_index,image_index,x-250,y,other.teto_side,image_yscale,image_angle,c_black,0.5)
	draw_sprite_ext(sprite_index,image_index,x+250,y,other.teto_side,image_yscale,image_angle,c_black,0.5)
}

with(objDecoCustomObject) {
	if tag==other.target_tag
		draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_yscale,image_angle,c_black,0.4)
}

with(objCustomBullet) {
	if sprite_index!=sprLiarDanceAtk6CherryLine
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)
																							
}

with(objPlayer) {
	drawX = x;
	drawY = y;
	draw_sprite_ext(sprite_index, image_index, drawX, drawY, image_xscale * xScale, image_yscale * global.grav, image_angle, c_black, 1)
}


surface_reset_target()


surface_set_target(srf2)

//draw_clear_alpha(c_white,0)

for (i=draw_start_index; i<draw_start_index+2; i++)
	draw_rectangle_colour(x1[i],y1[i],x2[i],y2[i],c_white,c_white,c_white,c_white,false)
	
gpu_set_blendmode_ext(bm_dest_alpha,bm_zero)
	draw_surface(srf,0,0)
gpu_set_blendmode(bm_normal)

surface_reset_target()


for (i=draw_start_index; i<draw_start_index+2; i++)
	draw_rectangle_colour(x1[i],y1[i],x2[i],y2[i],blend[i],blend[i],blend[i],blend[i],false)

draw_surface(srf2,0,0)