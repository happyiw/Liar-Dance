if(live_call()) return live_result;
if(point[2]<1){point[2]+=0.01}
gpu_set_tex_filter(true)
gpu_set_blendmode(bm_add)
repeat(50)
{
point[10]+=1
draw_sprite_ext(sprSSBrighting,0,400,190,scale[point[10]]+point[5],scale[point[10]]+point[5],angle[point[10]],make_color_hsv(0,180,196),0.07)
angle[point[10]]+=angle2[point[10]]
}
point[10]=0
gpu_set_blendmode(bm_normal)
gpu_set_texfilter(false)
depth=-10