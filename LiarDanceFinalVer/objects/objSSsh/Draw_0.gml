if(live_call()) return live_result;

if(surface_exists(surf)=false){surf=surface_create(800,608)}

if(sh!=shOutline)
{
draw_set_color(c_black)
gpu_set_blendmode(bm_add)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
shader_set(sh) 
Res = shader_get_uniform(sh,"iResolution"); 
Time = shader_get_uniform(sh,"iGlobalTime"); 
if(sh=shRectangle2){Tg = shader_get_uniform(sh,"toggle"); }
shader_set_uniform_f(Res,800,608,0); 
shader_set_uniform_f(Time,a); 
if(sh=shRectangle2){shader_set_uniform_f(Tg,t);}
draw_rectangle(0,0,800,608,0)
a+=0.025
shader_reset();
surface_reset_target()

gpu_set_tex_filter(true)
draw_set_alpha(alp)
draw_surface(surf,0,0)
draw_set_alpha(1)
gpu_set_tex_filter(false)

gpu_set_blendmode(bm_normal)
}

if(sh=shOutline and depth<-100)
{
draw_set_alpha(0.3)
draw_set_color(make_color_rgb(118,75,172))
draw_rectangle(0,304-192,800,0,0)
draw_rectangle(0,304+192,800,608,0)
draw_set_alpha(1)
draw_set_color(c_black)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
shader_set(sh) 
Res = shader_get_uniform(sh,"iResolution"); 
Time = shader_get_uniform(sh,"iGlobalTime"); 
shader_set_uniform_f(Res,800,608,0); 
shader_set_uniform_f(Time,a); 
draw_rectangle(0,0,800,608,0)
a+=0.07
shader_reset();
draw_rectangle(0,304-192,800,304+192,0)
surface_reset_target()

gpu_set_blendmode(bm_add)
gpu_set_tex_filter(true)
draw_set_alpha(0.05)
draw_surface_ext(surf,800,0,-1,1,0,col,0.05)
draw_set_alpha(1)
gpu_set_tex_filter(false)

gpu_set_blendmode(bm_normal)
}

if(sh=shOutline and depth>=-100)
{
draw_set_color(c_black)
gpu_set_blendmode(bm_add)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
shader_set(sh) 
Res = shader_get_uniform(sh,"iResolution"); 
Time = shader_get_uniform(sh,"iGlobalTime"); 
shader_set_uniform_f(Res,800,608,0); 
shader_set_uniform_f(Time,a); 
draw_rectangle(0,0,800,608,0)
a+=0.07
shader_reset();
surface_reset_target()

gpu_set_tex_filter(true)
draw_set_alpha(0.05)
draw_surface(surf,0,0)
draw_set_alpha(1)
gpu_set_tex_filter(false)

gpu_set_blendmode(bm_normal)
}