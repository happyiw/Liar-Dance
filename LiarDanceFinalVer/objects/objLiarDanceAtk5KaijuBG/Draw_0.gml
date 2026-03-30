
draw_clear_alpha(c_white,0)
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
gpu_set_blendmode(bm_add)
draw_sprite_part_ext(sprLiarDanceAtk4WhiteNoiseTexture,0,noise_x,noise_y,400,304,-128,-99,2.65,2.65,c_gray,0.2)

gpu_set_blendmode(bm_normal)

//
//shader_reset();