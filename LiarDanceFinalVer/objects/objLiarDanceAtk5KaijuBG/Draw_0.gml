/*
if(!surface_exists(surf)){
    surf=surface_create(800,608);
}
*/
//xsh=(mouse_x)/800;
//ysh=(mouse_y)/608;

//surface_copy(surf,0,0,application_surface);
/*

var shaderTimerHandle=shader_get_uniform(shader,"barrel_size");
var shaderIntensityHandle=shader_get_uniform(shader,"intensity");

var shaderXShiftHandle=shader_get_uniform(shader,"x_shift");
var shaderYShiftHandle=shader_get_uniform(shader,"y_shift");

shader_set(shader);

shader_set_uniform_f(shaderTimerHandle,barrelsize);
shader_set_uniform_f(shaderIntensityHandle,intensity);

shader_set_uniform_f(shaderXShiftHandle,xsh);
shader_set_uniform_f(shaderYShiftHandle,ysh);
*/
draw_clear_alpha(c_white,0)
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
gpu_set_blendmode(bm_add)
draw_sprite_part_ext(sprLiarDanceAtk4WhiteNoiseTexture,0,noise_x,noise_y,400,304,-128,-99,2.65,2.65,c_gray,0.2)

gpu_set_blendmode(bm_normal)

//
//shader_reset();