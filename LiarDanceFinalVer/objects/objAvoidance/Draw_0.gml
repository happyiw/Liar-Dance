



		with(objSSCherry)
	{
		if(trg=100)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
	}
		
if(step>=round(ts1*265) and step<round(ts1*297))
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fSasa3)
draw_set_alpha(0.5)
draw_set_colour(make_color_hsv(200,100,255))
draw_text_transformed(400,point[899],"Infinity Jump",0.5,0.5,0)
point[899]+=10
draw_set_alpha(1)
}

if(step>=round(ts1*297) and step<round(ts1*298))
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fSasa3)
draw_set_alpha(0.5)
draw_set_colour(make_color_hsv(200,100,255))
draw_text_transformed(400,354,"Not Infinity Jump",0.4,0.4,0)
point[899]+=10
draw_set_alpha(1)
}

if(step>=round(ts1*233) and step<round(ts1*298))
{
		with(objSSCherry)
	{
		if(trg=29)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=96)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=23)
		{
			if(!point[5] and image_alpha=1){
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale*1,image_yscale*1,image_angle,image_blend,image_alpha/2)
		gpu_set_blendmode(bm_normal)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		}
		}
		if((trg=15 and image_alpha=1) or (trg=14 and image_alpha=1) or (point[3]!=0 and point[3]<=4 and image_alpha=1 and trg=6))
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha/2)
		gpu_set_blendmode(bm_normal)
		}
				if(trg=97 and point[1]=1)
		{
			point[3]+=8
		draw_sprite_ext(sprite_index,image_index,x,y+80,image_xscale,image_yscale,point[3],image_blend,1)
		gpu_set_tex_filter(true)
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,400,304-210,1.5,1.5,image_angle,image_blend,1)
		draw_sprite_ext(sprSSLight,image_index,400,304-210,1.5,1.5,image_angle,image_blend,1)
		draw_sprite_ext(sprSSLight,image_index,400,304-210,1.5,1.5,image_angle,image_blend,1)
		gpu_set_blendmode(bm_normal)
		gpu_set_tex_filter(false)
		}
		if(trg=98)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=1)
		{
draw_sprite_ext(sprite_index,image_index,x +9*image_xscale,y,0.5,0.5,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+12*image_xscale+2*sin(degtorad(y*4)),y+8,0.4,0.4,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+14*image_xscale+4*sin(degtorad(y*4+20)),y+15,0.3,0.3,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+15*image_xscale+4*sin(degtorad(y*4+30)),y+20,0.2,0.2,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x -9*image_xscale,y,0.5,0.5,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x-12*image_xscale-2*sin(degtorad(y*4)),y+8,0.4,0.4,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x-14*image_xscale-4*sin(degtorad(y*4+20)),y+15,0.3,0.3,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x-15*image_xscale-4*sin(degtorad(y*4+30)),y+20,0.2,0.2,image_angle,c_red,image_alpha/3)
if(point[6]=2)
{
repeat(5)
{
draw_sprite_ext(sprite_index,image_index,x+random_range(-vspeed*2,vspeed*2)*image_xscale,y+random_range(-vspeed*2,vspeed*2)*image_xscale,image_xscale,image_yscale,point[10]*72,make_color_hsv(point[10]*50,255,255),image_alpha/3)
point[10]+=1
}
point[10]=0
}
}

		if(trg=10)
		{
draw_sprite_ext(sprite_index,image_index,x              ,y +9*image_xscale,0.5,0.5,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+ 8*-point[25],y+12*image_xscale+2*sin(degtorad(x*4)),0.4,0.4,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+15*-point[25],y+14*image_xscale+4*sin(degtorad(x*4+20)),0.3,0.3,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+20*-point[25],y+15*image_xscale+4*sin(degtorad(x*4+30)),0.2,0.2,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x              ,y -9*image_xscale,0.5,0.5,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+ 8*-point[25],y-12*image_xscale-2*sin(degtorad(x*4)),0.4,0.4,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+15*-point[25],y-14*image_xscale-4*sin(degtorad(x*4+20)),0.3,0.3,image_angle,c_red,image_alpha/3)
draw_sprite_ext(sprite_index,image_index,x+20*-point[25],y-15*image_xscale-4*sin(degtorad(x*4+30)),0.2,0.2,image_angle,c_red,image_alpha/3)
if(point[6]=2)
{
repeat(5)
{
draw_sprite_ext(sprite_index,image_index,x+random_range(-hspeed*2,hspeed*2)*image_xscale,y+random_range(-hspeed*2,hspeed*2)*image_xscale,image_xscale,image_yscale,point[10]*72,make_color_hsv(point[10]*50,255,255),image_alpha/3)
point[10]+=1
}
point[10]=0
}
}

		if(trg=2)
		{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,0.4)
		draw_self()
		}

	}
}

if(step>=round(ts1*298) and step<=round(ts1*315))
{
if(step=round(ts1*315)){with(objSSCherry){if(trg=200){des()}}}
with(objSSCherry)
{
	if(trg=200)
	{
	repeat(12)
	{
	draw_sprite_ext(sprSSBgSquare,0,-200+((point[1]+point[2]) mod 1200),(400-(-200+((point[1]+point[2]) mod 1200)))/2+304,0.5,2,34,c_white,0.05)
	point[2]+=50
	draw_sprite_ext(sprSSBgSquare,0,-200+((point[1]/2+point[2]) mod 1200),(400-(-200+((point[1]/2+point[2]) mod 1200)))/2+304,0.1,2,34,c_white,0.05)
	point[2]+=50
	}
	point[2]=0
	point[1]+=3
	}
}
if(step>=round(ts1*304))
{
with(objSSCherry)
{
		if(trg=2)
		{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,0.4)
		draw_self()
		}
}
}
}

if(step>=round(ts1*367) and step<round(ts1*425.7))
{
	with(objSSCherry)
	{
	if(trg=155)
{

}
	
	if(trg=1 or trg=8)
{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,image_alpha/3)
		draw_self()
}

	if(trg=17)
{
	if(point[15]!=0)
{
	gpu_set_tex_filter(true)
     	draw_sprite_ext(sprite_index,image_index,x-45,y,image_xscale,image_yscale,image_angle,image_blend,0.1)
		draw_sprite_ext(sprite_index,image_index,x+45,y,image_xscale,image_yscale,image_angle,image_blend,0.1)
      	draw_sprite_ext(sprite_index,image_index,x-25,y,image_xscale,image_yscale,image_angle,image_blend,0.2)
		draw_sprite_ext(sprite_index,image_index,x+25,y,image_xscale,image_yscale,image_angle,image_blend,0.2)
      	draw_sprite_ext(sprite_index,image_index,x-15,y,image_xscale,image_yscale,image_angle,image_blend,0.3)
		draw_sprite_ext(sprite_index,image_index,x+15,y,image_xscale,image_yscale,image_angle,image_blend,0.3)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.5)
    gpu_set_tex_filter(false)
}
	}
	}
if(step<round(ts1*395) or step>=round(ts1*399))
{
	gpu_set_tex_filter(true)
	gpu_set_blendmode(bm_add)
draw_sprite_ext(sprSSSBg,0,0,608+50,1, 1+point[531],0,c_purple,0.4+point[531]/3)
draw_sprite_ext(sprSSSBg,0,0,0  -50,1,-1-point[531],0,c_purple,0.4+point[531]/3)	
gpu_set_blendmode(bm_normal)
gpu_set_tex_filter(false)
}
	
if(step=round(ts1*399)){if(!point[871]){point[870]=32}}
if(step=rhythm(367+point[870],point[530]))
{
point[531]=1
point[530]+=1
point[570]=0.5
with(objIntoSabi2)
{
point[5]=random(0.2)
}
with(objSSsh)
{
	if(sh=shRectangle2){
if(t2=0){t2=1 t3=0}else{t2=0 t3=0}
}
}
point[871]=1
}
with(objSSsh)
{
	if(sh=shRectangle){
a+=other.point[570]}

	if(sh=shRectangle2){
		if(t3<1){t3+=1/50}
if(t2=1)
{
t=scrEasing2(t3,2)
}
if(t2=0)
{
t=1-scrEasing2(t3,2)
}
}
}
if(step<round(ts1*399))
{
with(objSSCherry){if(trg=98){y=ystart-other.point[570]*4 image_xscale=0.53-other.point[570]/100 image_yscale=0.53+other.point[570]/100}}
}
else
{
with(objSSCherry){if(trg=98){x=xstart+random_range(-2,2) y=ystart+random_range(-2,2)}}
}
with(objIntoSabi2)
{
point[5]*=0.75
}
point[570]*=0.75
point[531]*=0.75

}

if(step>=round(ts1*367) and step<round(ts1*380))
{
with(objSSCherry)
{	
	if(trg=4 and speed<12)
	{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,c_purple,image_alpha/4)
		gpu_set_blendmode(bm_normal)
	}
}


}

if(step>=round(ts1*399) and step<round(ts1*426.5))
{
		with(objSSCherry)
	{
		if(trg=51)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=50)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=52)
		{
		draw_sprite_ext(sprite_index,image_index,x,y+80,image_xscale,image_yscale,image_angle,image_blend,0.5)
        gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index,image_index,x,y+80,image_xscale,image_yscale,image_angle,image_blend,0.3)
		gpu_set_blendmode(bm_normal)
		}
		if(trg=53)
		{
        gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index,image_index,x,y+80,image_xscale,image_yscale,-image_angle,image_blend,0.13)
		gpu_set_blendmode(bm_normal)
		}
	}
}

if((step>=round(ts1*399) and step<round(ts1*401))
or (step>=round(ts1*415) and step<round(ts1*417)))
{
if(step=round(ts1*399) or step=round(ts1*415)){ point[621]=200}
if(step=round(ts1*415)){point[624]=16}
point[621]*=0.9
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if(step=round(ts1*(399+point[624]))   or step=round(ts1*(399+point[624]) )+4
or (step>=round(ts1*(399+point[624]))+8 and step<round(ts1*(403.5+point[624]) ))){point[620]=make_colour_hsv(10,120,255)}
if(step=round(ts1*(399+point[624]))+2 or step=round(ts1*(399+point[624]))+6){point[620]=make_colour_hsv(40,120,255)}
draw_set_colour(point[620])
draw_set_font(fSasa3)
draw_text(400,334,"ライアー")
draw_set_font(fSasa)
draw_set_colour(c_white)
draw_text(400-point[621],80,"ライアーライアーライアーライアーライアー")
draw_text(400+point[621],510,"ライアーライアーライアーライアーライアー")
}

if((step>=round(ts1*402) and step<round(ts1*404))
or (step>=round(ts1*418) and step<round(ts1*420)))
{
if(step=round(ts1*402) or step=round(ts1*418)){point[621]=200}
point[621]*=0.9
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if(step=round(ts1*(402+point[624]))   or step=round(ts1*(402+point[624]))+4 
or (step>=round(ts1*(402+point[624]))+8 and step<round(ts1*(404+point[624])))){point[620]=make_colour_hsv(10,140,255)}
if(step=round(ts1*(402+point[624]))+2 or step=round(ts1*(402+point[624]))+6){point[620]=make_colour_hsv(40,140,255)}
draw_set_colour(point[620])
draw_set_font(fSasa3)
draw_text(400,334,"ライアー")
draw_set_font(fSasa)
draw_set_colour(c_white)
draw_text(400+point[621],80,"ライアーライアーライアーライアーライアー")
draw_text(400-point[621],510,"ライアーライアーライアーライアーライアー")
}

if((step>=round(ts1*405) and step<round(ts1*406))
or (step>=round(ts1*421) and step<round(ts1*422)))
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(make_colour_hsv(10,140,255))
draw_set_font(fSasa3)
draw_text(400,334,"ダンサー")
draw_text(400,434,"ダンサー")
draw_text(400,234,"ダンサー")
}

if(step>=round(ts1*422.5) and step<round(ts1*428))
{
point[687]=454
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(make_colour_hsv(10,140,255))
draw_set_font(fSasa3)
draw_text_transformed(400,354+point[680]*100,"嘘で踊るのさ",0.5+point[680],0.5+point[680],0)
point[680]+=0.0004
}

if(step>=round(ts1*428) and step<round(ts1*429))
{
gpu_set_tex_filter(true)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(make_colour_hsv(40,140,255))
draw_set_font(fSasa3)
repeat(21)
{
draw_set_alpha(0.3)
draw_text_transformed(400,354+point[680]*100+point[686]-50*point[688]+(point[687] mod 808)-454,"嘘で踊るのさ",0.5+point[680],0.5+point[680],0)
draw_set_alpha(1)
point[686]+=5*point[688]
}
point[688]+=0.3
point[687]+=170
point[686]=0
point[680]+=0.0004
gpu_set_tex_filter(false)
}

if(step>=round(ts1*429) and step<round(ts1*430))
{
draw_set_color(c_black)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
}

if(step>=round(ts1*430) and step<round(ts1*431))
{
if(!point[689])
{
//point[900]=1
point[689]=1
}


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(c_white)
draw_set_font(fSasa2)
if global.AvoidanceStartTime==-1 || global.debugMode
	draw_text(400,304,"GoodLuck.")
else
	draw_text(400,304,"Enough.")
}


draw_set_alpha(0.7)
if(step>=round(ts1*406.5) and step<round(ts1*411))
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(make_colour_hsv(10,140,255))
draw_set_font(fSasa3)
draw_text_transformed(400,290,"素直で",1,1,0)
if(step>=round(ts1*408.5)){
draw_text_transformed(400,520,"傷ついた",1,1,0)}
}

if(step>=round(ts1*411) and step<round(ts1*415))
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_colour(make_colour_hsv(10,140,255))
draw_set_font(fSasa3)
draw_text_transformed(400,200,"ああああああ",0.7,0.7,0)
if(step>=round(ts1*412)){
draw_text_transformed(400,200+115,"のののののの",0.7,0.7,0)}
if(step>=round(ts1*413)){
draw_text_transformed(400,200+240,"日日日日日日",0.7,0.7,0)}
if(step>=round(ts1*414)){
draw_text_transformed(400,200+370,"をををををを",0.7,0.7,0)}
}
draw_set_alpha(1)

if(step>=round(ts1*431))
{
	with(objSSCherry)
	{
	if(trg=1 or trg=4 or trg=30)
{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,image_alpha/3)
		draw_self()
}

	}
	

}

if(step>=round(ts1*447))
{
		with(objSSCherry)
	{
		if(trg=1)
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,image_alpha)
		gpu_set_blendmode(bm_normal)
		}
	}
}

if(step>=round(ts1*479))
{
		with(objSSCherry)
	{
		if(trg=5 or trg=6)
		{
		draw_sprite_ext(sprite_index,image_index,x+4*image_xscale,y+2*image_xscale,image_xscale*1.2,image_yscale*1.2,image_angle,c_black,0.4)
		draw_self()
		}
		
		if((trg=15 and image_alpha=1) or (trg=14 and image_alpha=1) or (point[3]!=0 and point[3]<=4 and image_alpha=1 and trg=6))
		{
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprSSLight,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha/2)
		gpu_set_blendmode(bm_normal)
		}
	}
}
