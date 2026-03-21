

if !surface_exists(srf)
	srf=surface_create(800,608)
	
if !surface_exists(srf2)
	srf2=surface_create(800,608)
	
	
draw_set_alpha(1)

surface_set_target(srf)
draw_clear_alpha(c_black,0)

with(objLiarDanceAtk3OptionSurfaceTarget)
	draw_self()

surface_reset_target()




surface_set_target(srf2)

draw_clear_alpha(c_white,0)
with(objLiarDanceAtk3OptionSurfaceCircle)
	draw_circle_colour(x,y,r,c_white,c_white,false)
	
	
gpu_set_blendmode_ext(bm_dest_alpha,bm_zero)
	
draw_surface(srf,0,0)

gpu_set_blendmode(bm_normal)

surface_reset_target()

draw_surface(srf2,0,0)