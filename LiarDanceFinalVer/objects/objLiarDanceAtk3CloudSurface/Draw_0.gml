

if !surface_exists(srf)
	srf=surface_create(800,608)
	
if !surface_exists(srf2)
	srf2=surface_create(800,608)
	
	
draw_set_alpha(1)

surface_set_target(srf)
draw_clear_alpha(c_black,0)
// Draws player, bullets and the ground
with(objLiarDanceAtk3Bullet) {
	draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_yscale,image_angle,merge_colour(c_white,c_black,objLiarDanceAtk3CloudSurfaceTarget.image_alpha),image_alpha)
																							
}
//depending on cloud's alpha, it changes the color of drawn objects (Although it may be useless in the future)
with(objPlayer) {
	drawX = x;
	drawY = y;
	draw_sprite_ext(sprite_index, image_index, drawX, drawY, image_xscale * xScale, image_yscale * global.grav, image_angle, merge_colour(c_white,c_black,objLiarDanceAtk3CloudSurfaceTarget.image_alpha), 1)
}

with(objBlock)
	if sprite_index==sprBlockMask
		draw_rectangle_colour(x,y,x+image_xscale*32,y+image_yscale*32, c_black, c_black, c_black, c_black, false)
	else
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,merge_colour(c_white,c_black,objLiarDanceAtk3CloudSurfaceTarget.image_alpha), 1)

surface_reset_target()


surface_set_target(srf2)
//Mask effect
draw_clear_alpha(c_black,0)
with(objLiarDanceAtk3CloudSurfaceTarget)
	draw_self()
	
	
gpu_set_blendmode_ext(bm_dest_alpha,bm_zero)
	
with(objLiarDanceAtk3CloudSurfaceTarget) {
	xsc=image_xscale+other.scaler
	ysc=image_yscale+other.scaler
	draw_surface_ext(other.srf,x-400*xsc,y-304*ysc,xsc,ysc,image_angle,c_white,image_alpha)
}
gpu_set_blendmode(bm_normal)

surface_reset_target()
//Redraws cloud for the visuals
with(objLiarDanceAtk3CloudSurfaceTarget)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
draw_surface(srf2,0,0)