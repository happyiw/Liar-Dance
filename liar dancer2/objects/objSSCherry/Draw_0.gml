if(!Light3)
{
if(sprite_index=sprSSLight or Light or Light2)
{
	gpu_set_tex_filter(true)
		gpu_set_blendmode(bm_add)
}
if(kage)
{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,image_alpha/3)
}
if(!Light2){
draw_self()}

		gpu_set_blendmode(bm_normal)
	gpu_set_tex_filter(false)
}
else
{
	draw_self()
	gpu_set_tex_filter(true)
	gpu_set_blendmode(bm_add)
	    draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.07)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha/10)
	gpu_set_blendmode(bm_normal)
	gpu_set_tex_filter(false)
		draw_self()
}