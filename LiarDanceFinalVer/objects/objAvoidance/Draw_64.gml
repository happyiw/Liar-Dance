

if(step<round(ts1*296))
{
draw_sprite_ext(sprSSDarkness,0,400,304,4,4,0,c_white,1)
}


if(step>=round(ts1*297))
{
	if(point[80]<1){point[80]+=0.05}
	point[81]=scrEasing1(point[80],2)
}

if(step<round(ts1*298))
{

if(surface_exists(surf)=false){surf=surface_create(800,608)}

gpu_set_tex_filter(true)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
shader_set(shBl) 
Res = shader_get_uniform(shBl,"iResolution"); 
Time = shader_get_uniform(shBl,"iGlobalTime"); 
shader_set_uniform_f(Res,800,608,0); 
shader_set_uniform_f(Time,current_time/1000); 
draw_surface(application_surface,0,0)
shader_reset(); 
surface_reset_target()

draw_surface_part_ext(surf,0,0,800,208,-400,-304-80*point[81],2,2,c_white,1)
draw_surface_part_ext(surf,0,400,800,208,-400,304+192+80*point[81],2,2,c_white,1)

draw_set_alpha(0.3)
draw_set_color(make_color_rgb(118,75,172))
draw_rectangle(0,304-192-80*point[81],800,-1,0)
draw_rectangle(0,304+192+80*point[81],800,608,0)
draw_set_alpha(1)



draw_set_alpha(0.6)
gpu_set_blendmode(bm_add)
point[30]+=15
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fSasa)
if(step=rhythm(233,point[31])){point[31]+=0.5}
if(point[31] mod 1.5=0){point[32]=make_color_hsv(0,255,255) point[33]=make_color_hsv(40,255,255) point[34]=c_white}
if(point[31] mod 1.5=0.5){point[32]=make_color_hsv(40,255,255) point[33]=c_white point[34]=make_color_hsv(0,255,255)}
if(point[31] mod 1.5=1){point[32]=c_white point[33]=make_color_hsv(0,255,255) point[34]=make_color_hsv(40,250,255)}
draw_set_color(point[32])
draw_text(0+point[30],40         -80*point[81],"ライアーダンサー            ライアーダンサー            ライアーダンサー            ")
draw_text(800-point[30],608-60   +80*point[81],"ライアーダンサー            ライアーダンサー            ライアーダンサー            ")
draw_set_color(point[33])
draw_text(0+point[30]+285,40     -80*point[81],"間奏 ")
draw_text(0+point[30]-519,40     -80*point[81],"間奏 ")
draw_text(800-point[30]+285,608-60   +80*point[81],"間奏 ")
draw_text(800-point[30]-519,608-60   +80*point[81],"間奏 ")
draw_set_color(point[34])
draw_text(0+point[30]+170,40-80*point[81],"☆")
draw_text(0+point[30]+370,40-80*point[81],"☆")
draw_text(0+point[30]-430,40-80*point[81],"☆")
draw_text(0+point[30]-630,40-80*point[81],"☆")
draw_text(800-point[30]+170,608-60   +80*point[81],"☆")
draw_text(800-point[30]+370,608-60   +80*point[81],"☆")
draw_text(800-point[30]-430,608-60   +80*point[81],"☆")
draw_text(800-point[30]-630,608-60   +80*point[81],"☆")
if(point[30]>=810){point[30]-=810}
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)




draw_set_alpha(0.6)
draw_set_color(c_black)
draw_rectangle(0,304-192-80*point[81],800,-1,0)
draw_rectangle(0,304+192+80*point[81],800,608,0)
draw_set_alpha(1)

gpu_set_tex_filter(false)

}

if(step=round(ts1*307) -1
or step=round(ts1*307.8)-1
or step=round(ts1*308.5)-1
or step=round(ts1*309)-1
or step=round(ts1*309.8)-1
or step=round(ts1*310.5)-1)
{
point[70]=2
with(objSSCherry){if(trg=2){visible=0}}
}

if(point[70]>0)
{
 point[70]-=1
}
else{with(objSSCherry){if(trg=2){visible=1}}}

if(step>=round(315*ts1) and step<round(ts1*334))
{
application_surface_draw_enable(false)



#region
if(!surface_exists(surf)){surf=surface_create(800,608)}
if(!surface_exists(surf2)){surf2=surface_create(800,608)}
if(!surface_exists(surf3)){surf3=surface_create(800,608)}

if( surface_exists(surf))
{
surface_set_target(surf)
draw_clear_alpha(c_black,0)

repeat(7)
{
repeat(14)
{
draw_sprite_ext(sprSSCherry1,14,point[201]-10,((point[202]+point[203]) mod 668)-30,3,3,0,image_blend,0.7)
point[201]+=800/13
}
point[202]+=47.5*2
point[201]=0
}
if(instance_exists(objPlayer)==true){point[203]+=2}
point[202]=0
point[201]=0

surface_reset_target()
}

surface_set_target(surf3)
draw_clear_alpha(c_black,0)
draw_set_color(make_color_rgb(118,75,172))
draw_rectangle(-1,-1,801,609,0)
gpu_set_blendmode(bm_add)
shader_set(shDist);
var Res = shader_get_uniform(shDist,"iResolution"); 
var Time = shader_get_uniform(shDist,"iGlobalTime"); 
shader_set_uniform_f(Res,800,608,0); 
shader_set_uniform_f(Time,current_time/1000)
draw_surface_ext(surf,0,0,2-point[90],2-point[90],0,c_white,point[94])
shader_reset();
gpu_set_blendmode(bm_normal)
draw_surface_ext(surf,0,0,2-point[90],2-point[90],0,c_white,1/3)
with(objSSCherry)
{
if(trg=15 or trg=16){
draw_sprite_ext(sprite_index,image_index,800-x,608-y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)}
}
#endregion
draw_sprite_ext(sprHukidashi,point[92]+4,point[851],-170+(180*point[90])+point[853],1.4-(1.4*point[90])*6/7,1.8-(1.8*point[90])*6/7,0,c_white,1)
draw_sprite_ext(sprWorkingTeto,point[93],point[855],-80-(70*point[90])+point[857],2-(1.7*point[90]),2-(1.7*point[90]),0,c_white,1)
surface_reset_target()


if(surface_exists(surf)=false){surf=surface_create(800,608)}


surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_surface_ext(application_surface,0,10+(30*point[90]),1-(1*point[90])*6/7,1-(1*point[90])*6/7,0,c_white,1)
gpu_set_blendmode(bm_subtract)
draw_sprite_ext(sprHukidashi,point[92]+2,0,-170+(180*point[90]),1.4-(1.4*point[90])*6/7,1.8-(1.8*point[90])*6/7,0,c_white,1)
gpu_set_blendmode(bm_normal);
surface_reset_target()

surface_set_target(surf2)
draw_clear_alpha(c_black,0)
draw_surface(surf3,0,0)
draw_surface(surf,point[851],point[853])
draw_sprite_ext(sprHukidashi,point[92],point[851],-170+(180*point[90])+point[853],1.4-(1.4*point[90])*6/7,1.8-(1.8*point[90])*6/7,0,c_white,1)
surface_reset_target()

if(step>=round(329*ts1))
{
shader_set(shDist2);
var t = shader_get_uniform(shDist2, "u_time");
var r = shader_get_uniform(shDist2, "u_resolution");
shader_set_uniform_f(t, point[187]);
shader_set_uniform_f(r,800,608);
draw_surface_ext(surf2,point[861]-20,point[863]-15.2,1.05,1.05,0,c_white,1)
shader_reset()
point[187]+=0.02
}
else
{
draw_surface_ext(surf2,point[861]-20,point[863]-15.2,1.05,1.05,0,c_white,1)
point[850]+=random(5)
point[852]+=random(5)
point[851]=7*dsin(point[850])
point[853]=7*dsin(point[852])

point[854]-=random(5)
point[856]-=random(5)
point[855]=3*dsin(point[854])
point[857]=3*dsin(point[856])

point[860]-=2+random(2)
point[862]-=2+random(2)
point[861]=6*dsin(point[860])
point[863]=6*dcos(point[862])
}



if(point[90]>0.43){point[91]*=0.95}
if(step=round(ts1*327)){point[93]=1}
point[90]+=point[91]
point[94]+=0.01
point[92]=((step/10) mod 2)

draw_sprite_ext(sprSSDarkness,0,400,304,2,2,0,c_white,0.7)

if(point[865]<50){point[865]+=0.5}
draw_set_color(c_black)
draw_rectangle(0,0,800,point[865],0)
draw_rectangle(0,608,800,608-point[865],0)
}

if(step>=round(ts1*331) and step<round(ts1*335))
{
if(point[131]<1){point[131]+=1/30}
point[130]=scrEasing1(point[131],2)
draw_set_color(make_color_rgb(118,75,172))
draw_rectangle(800-800*point[130],  0,800,304,0)
draw_rectangle(    800*point[130],304,  0,608,0)
if(step>=round(ts1*332))
{
if(point[133]<1){point[133]+=1/30}
point[132]=scrEasing1(point[133],2)
draw_set_color(c_white)
draw_rectangle(400,    608*point[132],800,0,0)
draw_rectangle(400,608-608*point[132],  0,608,0)
}
if(step>=round(ts1*333))
{
if(point[135]<1){point[135]+=1/25}
point[134]=scrEasing1(point[135],2)
draw_set_color(c_black)
draw_rectangle(0,304-304*point[134],800,304,0)
draw_rectangle(0,304+304*point[134],800,304,0)
}

}

//remove step<round(ts1*400)

if(step>=round(ts1*335) and step<round(ts1*366))
{
if(step<round(ts1*345))
{
shader_set(sh_mono)
draw_surface_ext(application_surface, 0, 0,1,1,0,c_white,1);
with(objSSCherry)
{
if(trg=81){draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1)}
}
draw_sprite_ext(sprSSDarkness,0,400,304,2,2,0,c_white,0.7)
shader_reset();

}
else
{
if(surface_exists(surf)=false){surf=surface_create(800,608)}	

surface_set_target(surf)
shader_set(sh_mono)
draw_clear_alpha(c_black,0)
draw_surface_ext(application_surface, 0, 0,1,1,0,c_white,1);
with(objSSCherry)
{
if(trg=81){draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1)}
}
gpu_set_blendmode(bm_subtract)
draw_sprite_ext(sprSSShapedStar,0,400,304,point[162]/2,point[162]/2,point[161]*72,c_white,1)
gpu_set_blendmode(bm_normal);
shader_reset();
surface_reset_target()

draw_surface(surf,0,0)
draw_sprite_ext(sprSSShapedStar,1,400,304,point[162]/2,point[162]/2,point[161]*72,c_white,1)
draw_sprite_ext(sprSSDarkness,0,400,304,2,2,0,c_white,0.7)
}

if(step>=round(ts1*351))
{
if(point[845]<60){point[845]+=0.8}else{point[845]=60}
}
draw_set_colour(c_black)
draw_rectangle(0,-1,800,59-point[845],0)
draw_rectangle(0,608,800,609-59+point[845],0)
}


if(step>=round(ts1*345) and step<round(ts1*346))
{
if(step=round(ts1*345)){point[160]=0}
if(point[160]<1){point[160]+=1/30}
point[161]=scrEasing1(point[160],2)
point[162]=point[161]
}
if(step>=round(ts1*346) and step<round(ts1*347))
{
if(step=round(ts1*346)){point[160]=0}
if(point[160]<1){point[160]+=1/30}
point[161]=-scrEasing1(point[160],2)
point[162]=1-point[161]
}
if(step>=round(ts1*347) and step<round(ts1*352))
{
if(step=round(ts1*347)){point[160]=0}
if(point[160]<1){point[160]+=1/80}
point[161]=2.5*scrEasing1(point[160],2)
point[162]=2+point[161]
}



if(step>=round(ts1*335) and step<round(ts1*350))
{
if(point[137]<1){point[137]+=1/60}
point[136]=scrEasing1(point[137],2)
draw_set_color(c_black)
draw_rectangle(  0,0,400-400*point[136],608,0)
draw_rectangle(800,0,400+400*point[136],608,0)
}

if(step>=round(ts1*363) and step<round(ts1*366))
{
if(point[224]<1){point[224]+=0.21}
point[224]+=0.0008
draw_sprite_ext(sprSSTetKidBg,step/2+1,400,304,2.2-point[224]/2,2.2-point[224]/2,point[225],c_white,point[224])
draw_set_color(c_black)
draw_set_alpha(0.3)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
with(objIntoSabi)
{
gpu_set_tex_filter(true)
gpu_set_blendmode(bm_zero)
repeat(20)
{
point[10]+=1
//draw_sprite_ext(sprSSBrighting,0,400,304,scale[point[10]]*3,scale[point[10]]*3,angle[point[10]],make_color_hsv(30,180,196),0.1)
angle[point[10]]+=angle2[point[10]]
}

point[10]=0
gpu_set_blendmode(bm_normal)
gpu_set_texfilter(false)
}
draw_sprite_ext(sprSSTetKid,step/2,400,304,2.1-point[224],2.1-point[224],image_angle,c_white,point[224])
}

if(step>=round(ts1*366) and step<round(ts1*367))
{
draw_set_color(c_red)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(0.7+random(0.2))
draw_set_color(c_black)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
draw_sprite_ext(sprSSSabTt,2,400+20,304,0.7,0.7,0,c_black,1)
}

if(step>=round(ts1*395) and step<round(ts1*398))
{
	
if(!surface_exists(surf)){surf=surface_create(800,608)}
if(!surface_exists(surf2)){surf2=surface_create(800,608)}

if( surface_exists(surf))
{
surface_set_target(surf)
draw_clear_alpha(c_black,0)

with(objSSCherry){if(trg=17){
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,1)
}}

draw_sprite_ext(sprSSBlack1,0,400-32*5,320,32*10,32,0,c_black,1)

surface_reset_target()
}	
	
if( surface_exists(surf2))
{
surface_set_target(surf2)
draw_clear_alpha(c_black,0)

draw_set_color(c_black)
draw_set_alpha(0.5+point[596]*2)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)

gpu_set_blendmode(bm_subtract)
draw_surface(surf,0,0)
gpu_set_blendmode(bm_normal)

surface_reset_target()
}

//var lay_id = layer_get_id("Background");
//var back_id = layer_background_get_id(lay_id);
//draw_set_color(layer_background_get_blend(back_id))
//draw_set_alpha(0.8)
//draw_rectangle(0,0,800,608,0)
//draw_set_alpha(1)
//draw_set_color(c_black)
if(point[599]=1){draw_sprite_ext(sprPlayerFall,0,300,304,1,1,0,c_black,1)}
if(point[599]=2){draw_sprite_ext(sprPlayerFall,0,500,304,1,1,0,c_black,1)}

draw_surface(surf2,0,0)
}

if(step>=round(ts1*398) and step<round(ts1*399))
{
draw_set_color(c_red)
draw_set_alpha(1)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(c_black)
draw_set_font(fSasa2)
draw_text(400,304,"Lie.")
}

if(step>=round(ts1*399) and step<round(ts1*425.7))
{
gpu_set_tex_filter(true)
repeat(2)
{
draw_surface_ext(application_surface,random_range(-4,4),random_range(-4,4),1,1,0,c_white,0.3)
}
gpu_set_tex_filter(false)
}



//draw_set_font(fDefault12)
//draw_set_color(c_red)
//draw_text(40,40,step)

//draw_set_font(fDefault12)
//draw_set_color(c_red)
//draw_text(40,100,instance_number(all))

if(point[900]>0)
{
draw_set_color(c_white)
draw_set_alpha(point[900])
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
point[900]-=0.2
}


draw_set_color(c_black)
draw_set_alpha(point[780])
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)