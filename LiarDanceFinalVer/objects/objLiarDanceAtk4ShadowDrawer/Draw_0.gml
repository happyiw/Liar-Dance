draw_set_alpha(1)
if instance_exists(objPlayer)
	draw_ellipse_colour(scrPX()-16,476,scrPX()+12,482,c_black,c_black,false)

with(objLiarDanceAtk4BouncyCherries) {
	draw_ellipse_colour(x-10*image_xscale,476,x+10*image_xscale,482,c_black,c_black,false)
	draw_self()
}
//draw_set_alpha(1)