if !surface_exists(sf) {
    sf=surface_create(800,608);
}

__size=ds_list_size(circle_list)
__o=ds_list_find_value(circle_list, 0);
if !instance_exists(__o){
    ds_list_delete(circle_list, 0);
}
__size = ds_list_size(circle_list);

surface_set_target(sf);


draw_set_alpha(1)
draw_set_color(merge_color(col,c_black,black_merge))
draw_set_circle_precision(circle_presicion)
for(var i=0; i<__size; i++){
    __o=ds_list_find_value(circle_list, i);
    if !__o.num{
        draw_circle(400,304,__o.r,0);
    }
    if __o.num{
		gpu_set_blendmode(bm_subtract)
        //draw_set_blend_mode(bm_subtract);
        draw_circle(400,304,__o.r,0);
		gpu_set_blendmode(bm_normal)
        //draw_set_blend_mode(bm_normal);
    }
}

surface_reset_target();


var shaderTimerHandle=shader_get_uniform(shader,"time");
var shaderIntensityHandle=shader_get_uniform(shader,"intensity");

shader_set(shader);
shader_set_uniform_f(shaderTimerHandle,timer/50);
shader_set_uniform_f(shaderIntensityHandle,intensity);
draw_set_alpha(1)
draw_set_color(c_white)
draw_surface(sf,0,0)
shader_reset()