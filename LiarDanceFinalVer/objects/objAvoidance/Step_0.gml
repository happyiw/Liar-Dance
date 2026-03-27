//5187



if(instance_exists(objPlayer)==true){}else{scrStopMusic() point[780]+=0.02}

if(point[780]>1){
Px=400
Py=304

with(objSSCherry)
{
Px=400
Py=304
}
}
else
{
if(instance_exists(objPlayer)==true){
Px=objPlayer.x
Py=objPlayer.y

with(objSSCherry)
{
if(instance_exists(objPlayer)==true){
Px=objPlayer.x
Py=objPlayer.y
}else{Px=400 Py=304}
}}
step+=step_inc

/*
//音ズレ対策
#region
if(step-1+42>=audio_sound_get_track_position(global.currentMusic)*50 or step+2+42<=audio_sound_get_track_position(global.currentMusic)*50)
{
	audio_sound_set_track_position(global.currentMusic,(step+42)/50)
}
#endregion

//デバッグ用
#region

//開始位置
if(!point[999])
{
	

//if(global.prac=1){step=n}
//if(global.prac=2){step=n}

point[999]=1
}

//速度調整
if(keyboard_check_pressed(ord("1")))
{
point[998]=1
audio_sound_pitch(global.currentMusic,point[998])
room_speed=point[998]*NormalRoomSpeed
}

if(keyboard_check_pressed(ord("2")))
{
point[998]+=1
audio_sound_pitch(global.currentMusic,point[998])
room_speed=point[998]*50
}

if(keyboard_check_pressed(ord("3")))
{
if(point[998]>0.1){point[998]*=0.5}
audio_sound_pitch(global.currentMusic,point[998])
room_speed=point[998]*50
}
#endregion
*/


//118,75,172


//音取りのサンプル
//if(step=rhythm(4,point[1])){cre(400,304,objSSCherry) a.speed=20 point[1]+=1}

if(step>=round(ts1*233))
{
with(objSSCherry){if(trg=100)
	{
	image_alpha-=0.02
	image_xscale-=0.1
	image_yscale-=0.1
	if(image_alpha<=0){des()}
	}}
}

if(step=round(ts1*233))
{
if(instance_exists(objPlayer)){
with(objPlayer){des()}
cre(400,304,objPlayer)
}
cre(0,0,objSSsh)
a.sh=shOutline



cre(0,304+32*6,objBlock)
a.visible=1
a.image_xscale=800
a.image_yscale=304
a.sprite_index=sprSSBlack1
a.image_alpha=1
a.depth=-100
cre(0,304-32*6,objBlock)
a.visible=1
a.image_xscale=800
a.image_yscale=-304
a.sprite_index=sprSSBlack1
a.image_alpha=1
a.depth=-100
cre(0,0,objSSCherry)
a.trg=99
a.image_xscale=800
a.image_yscale=608
a.depth=100
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
cre(0,0,objSSCherry)
a.trg=99
a.image_xscale=800
a.image_yscale=608
a.depth=90
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)

cre(96-152,-50,objSSCherry)
a.trg=95
a.image_xscale=1.5
a.image_yscale=1.5
a.image_alpha=0.15
a.image_speed=0.88
a.depth=0
a.point[29]=1
a.mask_index=sprSSNothing
a.sprite_index=sprTetoDance

}

if(step<round(ts1*265))
{
if(!point[650])
{
if(step>=round(ts1*233))
{

	
	
if(step=rhythm(233,point[1])
or step=rhythm(241,point[1])
or step=rhythm(249,point[1])
or step=rhythm(257,point[1]))
{
		with(objSSCherry)
	{
		if(trg=100)
		{
			des()
		}
		if(trg=10)
		{
			
			point[5]=random(360)
			point[4]=y
			point[6]=2
			point[7]=0
		hspeed=-30*point[25]
		}
		if(trg=1)
		{
			
			point[5]=random(360)
			point[4]=x
			point[6]=2
			point[7]=0
		vspeed=-30
		}
	}
}

if((step>=rhythm(  239,point[1]) and step<rhythm(241,point[1]))
or (step>=rhythm(  247,point[1]) and step<rhythm(249,point[1]))
or (step>=rhythm(  255,point[1]) and step<rhythm(257,point[1]))
or (step>=rhythm(263.5,point[1]) and step<rhythm(265,point[1])))
{
		with(objSSCherry)
	{
		if(trg=1)
		{
point[7]+=0.2
y+=point[7]
		}
		if(trg=10)
		{
point[7]+=0.2
x+=point[7]*point[25]
		}
	}
}

if(step=rhythm(234,point[1])
or step=rhythm(235,point[1])
or step=rhythm(235.6,point[1])
or step=rhythm(236.3,point[1])
or step=rhythm(237.5,point[1])
or step=rhythm(237.5,point[1])
or step=rhythm(238.5,point[1])
or step=rhythm(239,point[1])

or step=rhythm(242,point[1])
or step=rhythm(243,point[1])
or step=rhythm(243.6,point[1])
or step=rhythm(244.3,point[1])
or step=rhythm(245,point[1])
or step=rhythm(246,point[1])
or step=rhythm(247,point[1])

or step=rhythm(250,point[1])
or step=rhythm(251,point[1])
or step=rhythm(251.6,point[1])
or step=rhythm(252.3,point[1])
or step=rhythm(253,point[1])
or step=rhythm(255,point[1])

or step=rhythm(258,point[1])
or step=rhythm(259,point[1])
or step=rhythm(259.6,point[1])
or step=rhythm(260.3,point[1])
or step=rhythm(261,point[1])
or step=rhythm(261.5,point[1])
or step=rhythm(262.5,point[1])
or step=rhythm(263.5,point[1]))
{
if(step<rhythm(250,point[1]))
{
	point[3]=370*sin(degtorad(point[2]))
	cre(400+point[3],80,objSSCherry)
	a.vspeed=40
	a.point[2]=a.direction
	a.trg=1
	a.image_index=11
	a.depth-=1
	cre(400-point[3],80,objSSCherry)
	a.vspeed=40
	a.point[2]=a.direction
	a.trg=1
	a.image_index=11
	a.depth-=1
}
else
{
	point[2]+=33.7452
	point[3]=120*sin(degtorad(point[2]))
	cre(0,234+point[3],objSSCherry)
	a.hspeed=40
	a.point[2]=a.direction
	a.trg=10
	a.image_index=11
	a.image_angle=-90
	a.depth-=1
	a.point[25]=1
	cre(800,234+point[3],objSSCherry)
	a.hspeed=-40
	a.point[2]=a.direction
	a.trg=10
	a.image_index=11
	a.image_angle=90
	a.depth-=1
	a.point[25]=-1
}
	
	with(objSSCherry)
	{
		if(trg=1)
		{
		point[1]=1
		point[6]=1
		}
		if(trg=10)
		{
		point[1]=1
		point[6]=1
		}
	}
	
	
	
}

//if(step=rhythm(265,point[1])){point[1]+=32}

point[2]+=35.7452
point[5]+=40+random(30)
 point[6]=370*sin(degtorad(point[5]))
if(point[20]=0)
{
	if(step mod 3=0)
	{
	cre(400+point[6],50,objSSCherry)
	a.speed=10
	a.direction=270+80*sin(degtorad(-point[5]/4+22.5))
	a.trg=2
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=5
    a.vspeed*=0.7
	a.gravity=0.05
	cre(400-point[6],50,objSSCherry)
	a.speed=10
	a.direction=270+80*sin(degtorad(point[5]/4-22.5))
	a.trg=2
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=5
    a.vspeed*=0.7
    a.gravity=0.05
	}
}
if(point[20]=1)
{
point[21]+=48.325
 point[22]=370*sin(degtorad(point[21]))
	if(step mod 3=0)
	{
	cre(400+point[22],50,objSSCherry)
	a.speed=14
	a.direction=270+80*sin(degtorad(-point[21]/4+22.5))
	a.trg=2
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=2
    a.vspeed*=0.7
	cre(400-point[22],50,objSSCherry)
	a.speed=14
	a.direction=270+80*sin(degtorad(point[21]/4-22.5))
	a.trg=2
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=2
    a.vspeed*=0.7
	}
}
	
}

if(step>=round(ts1*233))
{
	with(objSSCherry)
	{
		if(trg=10)
		{
			if(point[1]>=1){image_xscale=1 image_yscale=2.5-point[1]/3 direction=point[2] speed=40 point[1]+=1}
			if(point[1]=4){image_yscale=1 speed=0 point[1]=0}
			if(point[1]=0 and point[6]=1 and point[7]=0){hspeed=0.6*point[25] image_xscale*=(0.95+random(0.05)) image_yscale=image_xscale}
			if(point[7]>0 and hspeed=0 and other.step mod 2=0){cre(x,y,objSSCherry) a.image_alpha=0.2 a.sprite_index=sprite_index a.image_index=5 a.mask_index=sprSSNothing a.trg=100 a.hspeed=(-4-random(4))*point[25] a.vspeed=random_range(-3,3) a.gravity_direction=direction+180 a.gravity=random(1) a.depth=depth+1}
			if(point[6]=2){
				hspeed*=0.76 
				point[5]+=hspeed*10 
				image_xscale=1-random(hspeed)/10 
				//image_angle=random(-vspeed,vspeed)*36
				image_yscale=image_xscale 
				y=point[4]+hspeed*sin(degtorad(point[5]))*2}
		}
		if(trg=1)
		{
			if(point[1]>=1){image_xscale=1 image_yscale=2.5-point[1]/3 direction=point[2] speed=40 point[1]+=1}
			if(point[1]=4){image_yscale=1 speed=0 point[1]=0}
			if(point[1]=0 and point[6]=1 and point[7]=0){vspeed=0.6 image_xscale*=(0.95+random(0.05)) image_yscale=image_xscale}
			if(point[7]>0 and vspeed=0 and other.step mod 2=0){cre(x,y,objSSCherry) a.image_alpha=0.2 a.sprite_index=sprite_index a.image_index=5 a.mask_index=sprSSNothing a.trg=100 a.vspeed=-4-random(4) a.hspeed=random_range(-3,3) a.gravity=-random(1) a.depth=depth+1}
			if(point[6]=2){
				vspeed*=0.76 
				point[5]+=vspeed*10 
				image_xscale=1-random(vspeed)/10 
				//image_angle=random(-vspeed,vspeed)*36
				image_yscale=image_xscale 
				x=point[4]+vspeed*sin(degtorad(point[5]))*2}
		}
		if(trg=2)
		{
		if(image_xscale>0.6){image_xscale-=0.2 image_yscale-=0.2}
		else{image_xscale=0.6 image_yscale=0.6}
		}
	}
}

if(step=round(ts1*235 )
or step=round(ts1*235.25)
or step=round(ts1*235.5)
or step=round(ts1*235.75)
or step=round(ts1*236))
{
if(point[10] mod 192=0)
{
repeat(50)
{
cre(0,304-192+point[10],objSSCherry)
a.hspeed=point[11]
a.point[1]=100-point[11]
a.point[12]=1
a.image_index=9
a.mask_index=sprSSNothing
a.image_alpha=0.2
a.point[10]=point[10]/96+1
a.trg=3
a.depth+=1
point[11]+=2
}
}
else
{
repeat(60)
{
cre(800,304-192+point[10],objSSCherry)
a.hspeed=-point[11]
a.point[1]=100-point[11]
a.point[12]=1
a.image_index=9
a.mask_index=sprSSNothing
a.image_alpha=0.2
a.trg=3
a.depth+=1
a.point[10]=point[10]/96+1
point[11]+=2
}
}
point[11]=0
point[10]+=96
if(step=round(ts1*236)){with(objSSCherry){if(trg=3){point[2]=1}}}
}


if(step>=round(ts1*235) and step<round(ts1*239))
{
	with(objSSCherry)
	{
		if(trg=3)
		{
			speed*=0.9
			point[1]*=0.9
			point[12]*=0.9
			y=ystart+30*sin(degtorad(point[1]*30))*point[12]
			if(point[2]){if(image_alpha>=0){image_alpha-=0.008}else{speed=0}}
		}
	}
}

if(step>=round(ts1*239) and step<round(ts1*252))
{
if(step=round(ts1*239)
or step=round(ts1*239.25)
or step=round(ts1*239.5)
or step=round(ts1*239.75)
or step=round(ts1*240))
{
with(objSSCherry)
	{
		if(trg=3)
		{
			point[11]+=1
		}
}
}
	with(objSSCherry)
	{
		if(trg=3)
		{
			if(!point[8] and point[11]=point[10])
			{
image_xscale=0
image_yscale=0
mask_index=sprite_index
point[13]=y
point[8]=1
			}
			if(point[8]=1)
			{
if(point[9]<1){point[9]+=0.05}
image_alpha=1
image_xscale=scrSSEs1(point[9],2)+point[18]
image_yscale=scrSSEs1(point[9],2)+point[18]
			}
if(point[11]=5 and point[15]<0.3)
{
point[17]+=1
if(point[17]>=2)
{
	point[19]=point_distance(x,y,Px,Py)/150
	point[20]=point_direction(Px,Py,x,y)
if(point[15]<1){point[15]+=0.03}
point[16]=scrSSEs1(point[15],2)
if(point[10] mod 2=1){point[14]=180}
y=point[13]+48*sin(degtorad(x*1.5+point[14]-point[21]*1.5-90))*point[16]
}else{point[21]=Px}
}
if(point[15]>=0.3)
{
speed+=point[19]
direction=point[20]
point[18]+=0.07
}
		}
	}
}
}

if(step=round(ts1*240))
{
point[20]=1
}

if(step=round(ts1*249))
{
point[21]+=48.325
}

if(step=round(ts1*255))
{
point[20]=2
}

if(step=round(ts1*257))
{
point[20]=0
}

if(step=round(ts1*259))
{
point[20]=2
}

if(step=round(ts1*241))
{
with(objSSCherry)
{
	if(trg=2)
	{
		if(image_index!=2)
		{
		if(x >400 and hspeed<0){hspeed*=-1}
		if(x<=400 and hspeed>0){hspeed*=-1}
		}
	}
}
}

if(step=round(ts1*245))
{
	x=400
	y=304
scrSSstar(0,12,15,objSSCherry,18,6,1,12)
point[25]=irandom(360)
repeat(10)
{
cre(400,304,objSSCherry)
a.image_index=12
a.speed=1.2
a.direction=point[25]
a.trg=6
if(point[26] mod 2=0){a.point[1]=1}else{a.point[1]=2}
point[25]+=360/10
point[26]+=1
}
}

if(step>=round(ts1*245) and step<round(ts1*252))
{
with(objSSCherry)
{
	if(trg=6)
	{
if(!point[18])
{
	//image_blend=make_color_hsv(0,40,255)		
	image_xscale=0.5 image_yscale=0.5
if(speed>=4){point[18]=2}else{point[18]=1}
}
image_xscale=point_distance(400,304,x,y)/300*point[18]+0.5
image_yscale=point_distance(400,304,x,y)/300*point[18]+0.5
	}
}
}

if(step>=round(ts1*246) and step<round(ts1*247))
{
with(objSSCherry)
{
	if(trg=6)
	{
	mask_index=sprSSNothing
	image_alpha=0.5
	if(point[1]=1){if(!point[2]){point[3]=speed speed*=speed/2 if(point[3]<4){speed*=6} point[4]=direction point[2]=1  direction+=180}
	direction+=360/round(other.ts1)
	}
	if(point[1]=2){if(!point[2]){point[3]=speed speed*=speed/2 if(point[3]<4){speed*=6} point[4]=direction point[2]=1 }
	direction-=360/round(other.ts1)
	}
	 
	}
}
}

if(step>=round(ts1*240) and step<round(ts1*243.4))
{
with(objSSCherry){if(trg=8){if(!point[1]){point[1]=1 speed=11}}}
if(step mod 3=0)
{
point[28]=random(140)
cre(400,0,objSSCherry)
a.direction=200+point[28]
a.speed=0
a.trg=8
a.image_index=10
a.image_xscale=0.7
a.image_yscale=0.7
cre(400,0,objSSCherry)
a.direction=200+point[28]
a.speed=13
a.trg=8
a.image_index=10
a.image_xscale=0.7
a.image_yscale=0.7
cre(400,0,objSSCherry)
a.direction=200+point[28]
a.speed=26
a.trg=8
a.image_index=10
a.image_xscale=0.7
a.image_yscale=0.7
}
}

if(step>=round(ts1*247) and step<round(ts1*248))
{
with(objSSCherry)
{

	if(trg=6)
{
	if(!point[5])
	{
	image_alpha=1
	mask_index=sprite_index
speed=point[3]*4
direction=point[4]
point[5]=1
	}
	speed-=point[3]/4
	}
}
}

if(step>=round(ts1*248) and step<round(ts1*255))
{
with(objSSCherry)
{
	if(trg=1)
{
	y+=20
}
	
	if(trg=6)
{
	if(!point[6])
	{
		speed=0
point[10]=point_distance(400,304,x,y)
point[11]=point_direction(400,304,x,y)
if(point[3]<=4){point[12]=360}else{point[12]=-360}
point[14]=-point[3]*3
point[6]=1
	}
	x=(point[13]+point[10])*cos(degtorad(point[11]+180+point[12]))+400
	y=(point[13]+point[10])*sin(degtorad(point[11]+180+point[12]))+304
	point[12]*=0.93
	point[14]+=(point[3]*2)/9
	point[13]+=point[14]
	if(point[3]<=4){if(point[1]=1){point[13]-=point[14]/4}else{ point[13]-=point[14]/2}}
	if(point[13]+point[10]>=600){des()}
	}
}
}

if(step=round(ts1*251 )
or step=round(ts1*251.25)
or step=round(ts1*251.5)
or step=round(ts1*251.75)
or step=round(ts1*252))
{
if(step=round(ts1*251 )){point[10]=0}
repeat(60)
{
cre(0,304+192,objSSCherry)
a.direction=-point[10]
a.point[2]=point[11]
a.point[1]=100-point[11]
a.image_index=9
a.mask_index=sprSSNothing
a.image_alpha=0.2
a.point[29]=1
a.trg=3
a.depth+=2
a.point[10]=5-point[10]/22.5
a.point[9]=1

cre(800,304-192,objSSCherry)
a.direction=180-point[10]
a.point[2]=point[11]
a.point[1]=100-point[11]
a.image_index=9
a.image_blend=make_color_hsv(0,100,255)
a.mask_index=sprSSNothing
a.image_alpha=0.2
a.point[29]=1
a.trg=3
a.depth+=1
a.point[10]=point[10]/22.5+1
a.point[9]=-1
point[11]+=100/60
}
point[11]=0
point[10]+=22.5
if(step=round(ts1*252)){with(objSSCherry){if(trg=3){point[6]=1 point[7]=1}}}
}

if(step>=round(ts1*251) and step<round(ts1*268))
{
	with(objSSCherry)
	{
		if(trg=3)
		{
			if(point[15]<0.3)
{
			point[2]*=0.9
			point[1]*=0.8
			point[3]+=point[2]
			point[8]=6*sin(degtorad(point[1]*30))
			x=xstart+point[3]*cos(degtorad(direction+90*point[5]+point[8]+point[26]))
			y=ystart+point[3]*sin(degtorad(direction+90*point[5]+point[8]+point[26]))-384*point[5]*point[9]
			if(point[6]){if(image_alpha>=0){point[5]=1-point[7] point[7]*=0.8 image_alpha-=0.008}else{speed=0}}
}
		}
	}
}

if(step>=round(ts1*255) and step<round(ts1*268))
{
if(step=round(ts1*255)
or step=round(ts1*255.25)
or step=round(ts1*255.5)
or step=round(ts1*255.75)
or step=round(ts1*256))
{
with(objSSCherry)
	{
		if(trg=3)
		{
			point[11]+=1
			point[6]=0
		}
}
}
	with(objSSCherry)
	{
		if(trg=3)
		{
			if(!point[18] and point[11]=point[10])
			{
image_xscale=0
image_yscale=0
mask_index=sprite_index
if(point[9]=1){point[13]=point_distance(0,304-192,x,y)}
if(point[9]=-1){point[13]=point_distance(800,304+192,x,y)}
point[18]=1
			}
			if(point[18]=1)
			{
if(point[19]<1){point[19]+=0.05}
image_alpha=1
image_xscale=scrSSEs1(point[19],2)+point[28]/2
image_yscale=scrSSEs1(point[19],2)+point[28]/2
			}
if(point[11]=5 and point[15]<0.3)
{
point[17]+=1
if(point[17]>=2)
{
	point[29]=point_distance(x,y,Px,Py)/150
	point[20]=point_direction(Px,Py,x,y)
if(point[15]<1){point[15]+=0.03}
point[16]=scrSSEs1(point[15],2)
point[26]=4*sin(degtorad(-point[13]*2))*point[16]
}else{point[21]=Px}
}
if(point[15]>=0.3)
{
speed+=point[29]
direction=point[20]
gravity=0.1
point[28]+=0.17
}
		}
	}
}

if(step>=round(ts1*256.5+1) and step<round(ts1*265))
{
with(objSSCherry){if(trg=8){if(!point[1]){point[1]=1 speed=11}}}
if(step mod 3=0)
{
point[28]=random(80)
}
cre(400,608,objSSCherry)
a.direction=50+point[28]
a.speed=18
a.gravity=0.325
a.trg=9
a.image_index=10
a.image_xscale=0.8
a.image_yscale=0.8
}

if(step=round(261*ts1)
or step=round(261.5*ts1)
or step=round(262.5*ts1)
or step=round(263.5*ts1))
{
with(objSSCherry)
{
	if(trg=3)
	{
		point[29]=0
	}
	if(trg=14)
	{
		point[1]=1
	}
}
point[40]=point_direction(400,304,Px,Py)+360/20
if(step!=round(263.5*ts1))
{
repeat(10)
{
cre(400,304,objSSCherry)
a.trg=14
a.direction=point[40]
a.speed=30
a.image_angle=a.direction-90
a.image_index=12
a.image_xscale=1.5
a.image_yscale=1.5
point[40]+=360/10
}
repeat(40)
{
cre(400,304,objSSCherry)
a.trg=14
a.direction=point[40]
a.speed=30
a.image_angle=a.direction-90
a.image_index=12
a.image_alpha=0.2
a.mask_index=sprSSNothing
point[40]+=360/40
}
}
else
{
scrSSstar(0,30,3,objSSCherry,18,15,1,12)
scrSSstar(0,30,10,objSSCherry,18,16,1,12)
}
}

if(step>=round(ts1*261))
{
if(step=round(263.5*ts1))
{
	with(objSSCherry)
{
	if(trg=15)
	{
		point[3]=1
		point[6]=speed/20
		image_xscale=1.5
		image_yscale=1.5
	}
	if(trg=16)
	{
		point[3]=1
		point[6]=speed/20
		image_xscale=1
		image_yscale=1
		image_alpha=0.5
		trg=15
	}
}
}
with(objSSCherry)
{
	if(trg=15)
	{
	if(point[2]<4){point[2]+=1 if(point[2]=4){speed=0}}else{
			speed+=point[6]
			direction-=point[6]*3+0.1
			if(image_alpha=1){
		cre(x,y,objSSCherry) 
		a.image_alpha=0.2 
		a.sprite_index=sprite_index 
		a.image_index=image_index 
		a.mask_index=sprSSNothing
		a.trg=100 
		a.image_angle=image_angle
		a.direction=direction+180
		a.speed=-4-random(4)
		a.gravity_direction=direction+180 
		a.gravity=random(1) 
		a.depth=depth+1}}
	}
	if(trg=14)
	{
		if(!point[3] and !point[1]){point[2]+=1 if(point[2]=4){speed=0}}
		if(point[1]){speed=18
			if(image_alpha=1){
		cre(x,y,objSSCherry) 
		a.image_alpha=0.2 
		a.sprite_index=sprite_index 
		a.image_index=image_index 
		a.mask_index=sprSSNothing
		a.trg=100 
		a.image_angle=image_angle
		a.direction=direction+180
		a.speed=-4-random(4)
		a.gravity_direction=direction+180 
		a.gravity=random(1) 
		a.depth=depth+1}
		}
	}
}
}
}

if(step<round(ts1*298))
{

with(objSSCherry){if(trg=95 and Light=1){point[1]+=11.25 image_blend=make_color_hsv(point[1] mod 255,255,255)}}

if(step=round(ts1*265))
{
with(objSSCherry){if(trg!=99){des()}} point[900]=1

cre(96-152,-50,objSSCherry)
a.trg=95
a.image_xscale=1.5
a.image_yscale=1.5
a.image_alpha=0.1
a.image_speed=0.88
a.depth=0
a.point[29]=1
a.mask_index=sprSSNothing
a.sprite_index=sprTetoDance
cre(96-152,-50,objSSCherry)
a.trg=95
a.image_xscale=1.5
a.image_yscale=1.5
a.image_alpha=0.25
a.image_speed=0.88
a.Light=1
a.depth=0
a.point[29]=1
a.mask_index=sprSSNothing
a.sprite_index=sprTetoDance


cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-1000
a.a=10

cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-1000
a.a=25

cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-1000
a.a=40


cre(400,20,objSSCherry)
a.sprite_index=shSSMirror
a.image_xscale=0.24
a.image_yscale=0.24
a.trg=97
a.point[1]=1
a.image_alpha=0
a.depth=-1001

cre(0,0,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_xscale=800
a.image_yscale=608
a.image_alpha=0.05
a.trg=98
a.depth=-999

repeat(30)
{
cre(400,304-210,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSNothing
a.image_alpha=1
a.trg=96
a.speed=random_range(-10,10)
a.gravity=0.7
a.image_xscale=0.5+random(1)
a.image_yscale=a.image_xscale
a.direction=random(360)
a.depth=-1002
a.point[1]=random(255)
}
}

if(step=round(ts1*267)
or step=round(ts1*267.25)
or step=round(ts1*267.5)
or step=round(ts1*267.75)
or step=round(ts1*268))
{
#region
cre(400-40,304-192,objSSCherry)
a.direction=180+point[60]
a.speed=19.5
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=1.7
a.image_yscale=1.7
a.depth=3
a.trg=29
cre(400-40,304-192,objSSCherry)
a.direction=180+point[60]
a.speed=22
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=1.2
a.image_yscale=1.2
a.depth=3
cre(400-40,304-192,objSSCherry)
a.direction=180+point[60]
a.speed=23.6
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.depth=3
a.image_xscale=0.9
a.image_yscale=0.9
cre(400-40,304-192,objSSCherry)
a.direction=180+point[60]
a.speed=25
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=0.5
a.image_yscale=0.5
a.depth=3
#endregion
#region
cre(400+40,304-192,objSSCherry)
a.direction=6-point[60]
a.speed=19.5
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=1.7
a.image_yscale=1.7
a.depth=3
a.trg=29
cre(400+40,304-192,objSSCherry)
a.direction=360-point[60]
a.speed=22
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=1.2
a.image_yscale=1.2
a.depth=3
cre(400+40,304-192,objSSCherry)
a.direction=360-point[60]
a.speed=23.6
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.depth=3
a.image_xscale=0.9
a.image_yscale=0.9
cre(400+40,304-192,objSSCherry)
a.direction=360-point[60]
a.speed=25
a.image_index=12
a.image_blend=make_color_hsv(0,100,255)
a.image_xscale=0.5
a.image_yscale=0.5
a.depth=3
#endregion
point[60]+=90/4
}

if(step=round(ts1*271)
or step=round(ts1*271.25)
or step=round(ts1*271.5)
or step=round(ts1*271.75)
or step=round(ts1*272))
{
point[62]=random(360)
repeat(40)
{
cre(20+point[63],304-192+point[61],objSSCherry)
a.point[1]=point[61]*3+point[62]
a.depth=2
a.trg=30
a.image_xscale=0.5
a.image_yscale=0.5
a.mask_index=sprSSNothing
a.image_index=5

cre(780-point[63],304-192+point[61],objSSCherry)
a.point[1]=point[61]*3+point[62]
a.depth=2
a.trg=30
a.image_xscale=0.5
a.image_yscale=0.5
a.mask_index=sprSSNothing
a.image_index=5
point[61]+=10
}
point[63]+=40
point[61]=0
}

if(step>=round(ts1*271))
{
with(objSSCherry)
{
	if(trg=30)
	{
	if(!point[3])
	{
		point[2]=1
		point[3]=1
	}
	if(point[5]<1){point[5]+=1/25}
	point[4]=point[2]*scrEasing2(point[5],2)
	image_xscale=point[4]*0.6
	image_yscale=point[4]*0.6
	if(point[5]>=0.6){mask_index=sprite_index 
		if(x<400){hspeed-=0.2+random(0.8)}
		if(x>400){hspeed+=0.2+random(0.8)}
		}else{x=xstart+20*sin(degtorad(point[1]))*(1-point[4])}
	}
}
}

if(step>=round(ts1*273) and step<round(ts1*278))
{
//with(objSSCherry){if(trg=8){if(!point[1]){point[1]=1 speed=11}}}
//step>=round(ts1*272) and step<round(ts1*274.4)
//mod 6
if(step mod 6000000000=0)
{
point[28]=random(800)
cre(point[28],0,objSSCherry)
a.direction=270
a.speed=0
a.trg=8
a.image_index=12
a.image_xscale=0.7
a.image_yscale=0.7
cre(point[28],0,objSSCherry)
a.direction=270
a.speed=13
a.trg=8
a.image_index=12
a.image_xscale=0.7
a.image_yscale=0.7
cre(point[28],0,objSSCherry)
a.direction=270
a.speed=26
a.trg=8
a.image_index=12
a.image_xscale=0.7
a.image_yscale=0.7
}

if(step=round(ts1*273))
{
point[811]=0 point[812]=0.5 point[813]=0
}
if(step=round(ts1*274))
{
point[811]=0 point[812]=-1 point[813]=0.5
}
if(step=round(ts1*275))
{
point[811]=0 point[812]=1 point[813]=-0.5
}
if(step=round(ts1*276))
{
point[811]=0 point[812]=-1 point[813]=0.5
}
if(step=round(ts1*277))
{
point[811]=0 point[812]=0.5 point[813]=-0.5
}
if(point[811]<1){point[811]+=1/40}
point[810]=point[812]*scrEasing2(point[811],2)+point[813]
}

if(step>=round(265*ts1) and step<round(281*ts1))
{

if(step=rhythm(265,point[50]))
{
	if(point[53]=0){point[53]=0.6}
point[51]=random(360)
point[52]=random(255)
point[53]*=-1
repeat(10){
cre(400,304-192,objSSCherry)	
a.sprite_index=sprSSLight
a.speed=8
a.image_blend=make_color_hsv(point[52],150,255)
a.direction=point[51]
a.point[1]=point[53]
a.point[2]=a.image_xscale
a.trg=26
a.mask_index=sprSSNothing
a.image_alpha=1
a.depth=2
cre(400,304-192,objSSCherry)
a.sprite_index=sprSSCherry1
a.image_index=13
a.speed=8
a.image_blend=make_color_hsv(point[52],100,255)
a.direction=point[51]
a.point[1]=point[53]
a.point[2]=a.image_xscale
a.trg=26
a.depth=1
point[51]+=360/10
}

point[50]+=1
if(step>=round(ts1*276)){point[50]-=0.5}
}
with(objSSCherry)
{
if(trg=26)
{
direction+=point[1]
image_xscale=point[2]*(1+other.point[810]*point[1]*10/6)
image_yscale=image_xscale
}
}
}

if(step=round(279*ts1)
or step=round(279.5*ts1)
or step=round(280*ts1)
or step=round(280.5*ts1))
{
x=400
y=304-192
	scrSSstar(0,24,13,objSSCherry,18-point[55]/8/4*72,27,1,6)
	scrSSstar(0,24,13,objSSCherry,18+point[55]/8/4*72,28,1,6)
point[55]+=8
}

if(step>=round(279*ts1)
and step<round(280.5*ts1))
{
with(objSSCherry){if(trg=27 and !point[14]){depth=4 hspeed+=40-other.point[55] point[14]=1}}
with(objSSCherry){if(trg=28 and !point[14]){depth=4 hspeed-=40-other.point[55] point[14]=1}}
}



if(step>=round(ts1*281) and step<round(ts1*297))
{
with(objSSCherry)
{
if(trg=31){
	speed+=0.1
	image_xscale+=0.008
	image_yscale+=0.008
	if(!point[1]){ speed=0  direction+=point[2] point[1]=1}
	if(x>900 or y>708 or x<-100 or y<-100){des()}}
}


if(step=rhythm(281,point[211]))
{
    repeat(50)
	{
	cre(400,304-210,objSSCherry)
	a.trg=31
	a.image_index=11
	a.direction=-20-point[212]
	a.speed=480
	a.image_xscale=0.2
	a.image_yscale=0.2
	if(point[211] mod 2=0){a.point[2]=60}else{a.point[2]=-60}
	a.point[29]=1
	
	cre(400,304-210,objSSCherry)
	a.trg=31
	a.image_index=11
	a.direction=-110-point[212]
	a.speed=480
	a.image_xscale=0.2
	a.image_yscale=0.2
	if(point[211] mod 2=0){a.point[2]=-60}else{a.point[2]=60}
	a.point[29]=1
	
	point[212]+=1
	}
	
	point[212]=0
	point[211]+=1
}
}



if(step=round(ts1*281))
{
with(objSSCherry)
{
if(trg=26 or trg=27 or trg=28){des()}
}
cre(400,304-192,objSSCherry)
a.trg=24
a.depth=50
a.sprite_index=shSSMirror
a.mask_index=sprSSNothing
a.image_xscale=2.15
a.image_yscale=2.15
a.image_alpha=0.15
point[900]=1
repeat(16)
{
point[215]=random(180/8)
repeat(8)
{
cre(400,304-192,objSSCherry)	
a.trg=23
a.depth=0
a.point[2]=point[215]+random_range(-5,5)
a.point[29]=1
a.point[1]=point[210]+random_range(-5,5)
a.image_index=13
a.mask_index=sprSSNothing
a.point[14]=a.image_alpha
a.point[7]=random(255)
a.point[3]=0.5+random(0.5)
point[215]+=180/7
}
point[210]+=360/16
point[215]=0

repeat(15)
{
cre(400,304-192,objSSCherry)	
a.trg=23
a.depth=0
a.point[2]=random(360)
a.point[29]=1
a.point[1]=random(360)
a.image_index=9
a.mask_index=sprSSNothing
a.image_alpha=0.12
a.point[14]=a.image_alpha
a.point[3]=1.5+random(1.5)
a.point[7]=random(255)
a.point[5]=1
a.sprite_index=sprSSLight


}
}
}

if(step>=round(ts1*265))
{
if(instance_exists(objPlayer)){with(objPlayer){djump=1}}
	
with(objSSCherry){
	if(trg=96){
	image_blend=make_color_hsv(point[1],155,255)
	gravity_direction=point_direction(x,y,xstart,ystart)
	point[1]+=13.521 if(point[1]>=255){point[1]-=255} 
	}
	if(trg=98){
	image_blend=make_color_hsv(point[1],255,255)
	point[1]+=13.521 if(point[1]>=255){point[1]-=255} 
}

if(trg=24)
{
	image_angle-=3
}

if(trg=23)
{
point[1] += point[9];
point[2] += point[9]/10;
point[12]+=1
if(point[12]>10) and (point[9]<1.5)
{
point[9] += 0.009;
}
if(point[12]=30)
{
if(!point[5])
{
	mask_index=sprite_index
}
}
scrMirrorBall(xstart, ystart, 470, point[1], point[2], depth);

image_xscale = (1.7+0.3*sin(degtorad(point[1])))*point[3];
image_yscale = image_xscale;
image_yscale*=(1-point_distance(xstart,ystart,x,y)/470*4/5)*6/4
if(point[1] mod 360 >180){point[11]=1 if(point[5]){image_alpha=0.1}else{image_alpha=0.3}}else{point[11]=0 image_alpha=point[14]}
image_blend=make_color_hsv(point[7]-point[7]*point[11],150-150*point[11],255)
if(!point[5])
{
if(sin(degtorad(point[1]))<0){image_alpha=0.2 if(point[12]>=30){mask_index=sprSSNothing}}else{image_alpha=1 if(point[12]>=30){mask_index=sprite_index}}
}
image_angle=point_direction(xstart,ystart,x,y)+270
depth = -sin(degtorad(point[1]))-point[14];
}

}

with(objSSsh){if(sh=shOutline){
	if(col=c_white){b+=130}
	col=make_color_hsv(b,255,255)
	b+=13.521 if(b>=255){b-=255} 
}}

}

}


if(step=round(ts1*296))
{
with(objSSCherry){
if(trg=23)
{
	trg=27
	direction=point_direction(xstart,ystart,x,y)
	mask_index=sprSSNothing
	speed=10+point_distance(xstart,ystart,x,y)/10
}
}
}

if(step=round(ts1*296)
or step=round(ts1*297)
or step=round(ts1*298))
{
	point[900]=1
if( step=round(ts1*297)){with(objBlock){des()}}
}

if(step>=round(ts1*297)  and step<round(ts1*298))
{
with(objSSCherry){
if(trg=31)
{
	trg=32
	direction=point_direction(xstart,ystart,x,y)
	mask_index=sprSSNothing
	speed=15
}
}
with(objSSCherry){
if(trg=24)
{
image_xscale+=0.05
image_yscale+=0.05
image_angle-=21
}
}
}

if(step>=round(ts1*296)  and step<round(ts1*298))
{
with(objBlock){
if(y>304){y=ystart+80*other.point[81]}
else{{y=ystart-80*other.point[81]}}
}
}

if(step=round(ts1*298))
{
with(objBlock){des()}
with(objSSCherry){des()}
with(objSSsh){des()}

with(objPlayer) {
	y=clamp(y,64,608-64)
	yprevious=y
}

cre(-400,608-32,objBlock)
a.visible=1
a.image_xscale=16000
a.image_yscale=1004
a.sprite_index=sprSSBlack1
a.image_alpha=0.6
a.depth=-100
cre(-400,32,objBlock)
a.visible=1
a.image_xscale=1600
a.image_yscale=-1004
a.sprite_index=sprSSBlack1
a.image_alpha=0.6
a.depth=-100
cre(-400,-608,objSSCherry)
a.trg=99
a.image_xscale=1600
a.image_yscale=1824
a.depth=100
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
a.point[29]=1
cre(0,0,objSSCherry)
a.trg=200
a.depth=50
a.sprite_index=sprSSNothing
}

if(step<round(ts1*5196))
{

if(step=round(311*ts1))
{
with(objSSCherry)
{
	if(trg=2)
	{
point[17]-=72/7
	}
}
}

if(step=round(ts1*298))
{
x=400
y=304
	scrSSstar(0,10,6,objSSCherry,18,1,1,12)
	scrSSstar(0,5,8,objSSCherry,18,4,1,12)
	scrSSstar(0,18,12,objSSCherry,18,4,1,12)
	with(objSSCherry){
	if(trg=1)
	{
	point[1]=speed
	point[2]=direction
	speed=40
	}
	if(trg=4)
	{
	point[1]=speed
	point[2]=direction
	point[19]=1
	if(speed<10){speed=20}else{speed=60}
	image_alpha=0.2
	mask_index=sprSSNothing
	trg=1
	}
	}
}

if(step>=round(ts1*298) and step<round(ts1*299))
{
	with(objSSCherry){
	if(trg=1)
	{
speed*=0.8
	}
	}
}

if(step>=round(ts1*298) and step<round(ts1*335))
{
if(step=round(ts1*299))
{
with(objSSCherry){
	if(trg=1)
	{
		point[10]=1
	}
}
}

	with(objSSCherry){
	if(trg=900)
	{
		image_alpha-=0.06 if(image_alpha<=0){des()}
	}
	if(trg=1)
	{
	image_xscale=(point_distance(x,y,xstart,ystart)/600+0.3)*(1+scrEasing2(point[5],2))
	image_yscale=image_xscale
if(point[10])
{
	if(point[9]=0)
	{
speed=0
point[7]=x
point[8]=y
point[9]=1
	}
	if(point[5]<1){point[5]+=1/round(other.ts1)/2}
	point[11]=1.1*sin(degtorad(point[5]*180))
point[3]=(17*point[1]*cos(degtorad(-point[2]-point[5]*216*(1-point[19]*2)))*(1+point[11])+xstart)
point[4]=(17*point[1]*sin(degtorad(-point[2]-point[5]*216*(1-point[19]*2)))*(1+point[11])+ystart)
	x=point[7]+(point[3]-point[7])*scrEasing1(point[5],2)+(point[3]-point[7])*scrEasing1(point[5],2)*point[11]
	y=point[8]+(point[4]-point[8])*scrEasing1(point[5],2)+(point[4]-point[8])*scrEasing1(point[5],2)*point[11]
	}
}
	if(trg=2)
	{
	image_xscale=(point_distance(x,y,400,304)/600+0.3)*(1+scrEasing2(point[5],2))*(1+abs(point[17]/72)*2)*(1+point[26])
	image_yscale=image_xscale
x=(17*point[1]*(1+point[16]/100)*(1+point[27])*cos(degtorad(-point[2]-point[5]*216+point[18]-point[17]))*(1+point[11])+xstart)
y=(17*point[1]*(1+point[16]/100)*(1+point[27])*sin(degtorad(-point[2]-point[5]*216+point[18]-point[17]))*(1+point[11])+ystart)-point[16]
point[16]-=10*(1+point[28])
if(!point[30]){point[17]*=0.7}
else
{
if(point[31]<1){point[31]+=1}
point[17]=point[32]*(1-scrEasing2(point[31],2))
}
	}
		if(trg=3)
	{
		image_xscale=point[1]*(1+point[2])/1.5
		image_yscale=image_xscale
		point[2]*=0.85
	}
}
}

if(step=round(ts1*301)
or step=round(ts1*301.6)
or step=round(ts1*302.3))
{
	cre(0,0,objSSCherry)
	a.trg=900
	a.image_xscale=800
	a.image_yscale=608
	a.sprite_index=sprSSWhite1
	a.mask_index=sprSSNothing
	a.image_alpha=0.3
	a.depth=50
	point[100]=choose(72,-72)
	with(objSSCherry){
	if(trg=1 or trg=2)
	{
		if(point[15]=0)
		{
trg=2
point[15]=1
		}
		point[16]+=150
		point[17]=other.point[100]*(1-point[19]*2)
		point[18]+=point[17]
		
	}
	}
}

if(step=round(ts1*303))
{
	cre(-800,-608,objSSCherry)
	a.trg=900
	a.image_xscale=2400
	a.image_yscale=1824
	a.sprite_index=sprSSWhite1
	a.mask_index=sprSSNothing
	a.image_alpha=0.3
	a.depth=50
	with(objSSCherry){
		if(trg=2)
		{
			y-=50
			trg=3
			point[2]=4
			point[1]=image_xscale
			direction=70+random(40)
			gravity=0.15+y/608/8
			speed=4+random(7)
		}
		
	}
}

if(step=round(ts1*304.5))
{
x=400
y=608
scrSSstar(0,2,8,objSSCherry,18,1,1,5)
	with(objSSCherry){
	}
	with(objSSCherry){
	if(trg=1)
	{
	point[1]=speed
	point[2]=direction
	point[10]=1
	point[28]=-1
	}
	}
}

if(step=round(ts1*307))
{
	with(objSSCherry){
		if(trg=3 and point[19]=1)
		{
	    
		}
	}
}

if(step=round(ts1*304.5)
or step=round(ts1*305)
or step=round(ts1*305.6)
or step=round(ts1*306.3))
{
if(step!=round(ts1*304.5))
{
	cre(-800,-608,objSSCherry)
	a.trg=900
	a.image_xscale=2400
	a.image_yscale=1824
	a.sprite_index=sprSSWhite1
	a.mask_index=sprSSNothing
	a.image_alpha=0.3
	a.depth=50
	point[100]=choose(72,-72)
}
	with(objSSCherry){
	if(trg=1 or trg=2)
	{
		if(point[15]=0)
		{
trg=2
point[15]=1
		}
		point[31]=0
		point[16]+=304/4
		point[17]=other.point[100]*(1-point[19]*2)
		point[18]+=point[17]
		point[32]=point[17]
	}
	}
}




if(step>=round(ts1*309) and step<round(ts1*311))
{
	with(objSSCherry){
		if(trg=3 and point[19]=1)
		{
	    gravity=0
		speed*=0.9
		}
	}
}

}

if(step=round(ts1*307)
or step=round(ts1*307.8)
or step=round(ts1*308.5)
or step=round(ts1*309)
or step=round(ts1*309.8)
or step=round(ts1*310.5))
{
	global.edgeDeath=false
	cre(-800,-608,objSSCherry)
	a.trg=900
	a.image_xscale=2400
	a.image_yscale=1824
	a.sprite_index=sprSSWhite1
	a.mask_index=sprSSNothing
	a.image_alpha=0.3
	a.depth=50
	apoint[29]=1
	point[100]=choose(72,-72)
	point[182]-=18/6
	point[183]-=1/20
	camera_set_view_angle(view_camera[0],point[182])
camera_set_view_pos(view_camera[0],400*point[183],304*point[183])
camera_set_view_size(view_camera[0],800-800*point[183],608-608*point[183])
if(step=round(ts1*307))
{
	with(objSSCherry){
	if(trg=1 or trg=2)
	{
		point[17]=0
		point[18]=0
	}
	}
}
	with(objSSCherry){
	if(trg=1 or trg=2)
	{
		if(point[15]=0)
		{
trg=2
point[15]=1
		}
	   image_index=(6 + point[27]*3) mod 7
		point[30]=1
		point[31]=0
		point[26]+=0.3
		point[27]+=1/3
		point[17]-=72/7
		point[18]+=point[17]-6
		point[32]=point[17]
		
	}
	}
}

if(step>=round(ts1*303) and step<round(ts1*307))
{
if(point[182]=0){point[182]=-360}
camera_set_view_angle(view_camera[0],point[182])
point[182]*=0.9
}

if(step=round(ts1*307))
{
repeat(25)
{
cre(-600,32,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_yscale=608-64
a.image_alpha=0.5
a.point[1]=point[184]
a.trg=20
a.point[29]=1
cre(1400,32,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_yscale=608-64
a.image_alpha=0.5
a.point[1]=-point[184]
a.trg=20
a.point[29]=1
point[184]+=25
}
}

if(step>=round(ts1*307) and step<round(ts1*311))
{
with(objSSCherry)
{
	if(trg=20)
	{
	if(point[2]<1){point[2]+=1/80}
	x=xstart+point[1]*scrEasing1(point[2],2)
	}
}
}

if(step=round(311*ts1))
{
with(objSSCherry)
{
	if(trg=20)
	{
des()
	}
}
}

if(step>=round(ts1*311) and step<round(ts1*335))
{
	with(objSSCherry){
		if(trg=3)
		{
			if(!point[20])
			{
image_alpha=1
mask_index=sprite_index
speed=0
gravity=0
direction=point_direction(Px,Py,x,y)
point[20]=1
point[23]=1.5
			}
			image_xscale=0.5*(0.5+point[23])+speed/20
			image_yscale=0.5*(0.5+point[23])+speed/20
			point[23]*=0.85
			speed+=0.5
			direction-=2.4
			if(x>810 or y>618 or y<-10){des()}
		}
	}
}

if(step>=round(ts1*311)) and step<round(ts1*335)
{
if(!point[180]){point[180]=1 point[181]=1 global.edgeDeath=true}
camera_set_view_angle(view_camera[0],0)
camera_set_view_pos(view_camera[0],400*point[181],304*point[181])
camera_set_view_size(view_camera[0],800-800*point[181],608-608*point[181])

point[181]*=0.75
	with(objSSCherry){
		if(trg=2)
		{
			image_index=5
			gravity=0.7
			direction=point_direction(x,y,400,304)
			point[20]=image_xscale/2
			point[19]=image_xscale
			trg=5
			speed=point_distance(x,y,400,304)/20
			gravity_direction=direction*10-4
		}
		if(trg=5)
		{
image_xscale=point[20]+point[19]
image_yscale=point[20]+point[19]
point[19]*=0.9
if(other.step mod 3=0)
{
cre(x,y,objSSCherry) 
a.image_alpha=0.2 
a.sprite_index=sprite_index 
a.image_index=5 
a.mask_index=sprSSNothing 
a.trg=100 
a.direction=direction+180
a.speed=-4-random(4)
a.gravity=-random(1) 
a.gravity_direction=direction+180
a.depth=depth+1
}
		}
	}
}

if(step=round(312*ts1)
or step=round(313*ts1)
or step=round(314*ts1))
{
point[110]=random(360)
repeat(40)
{
cre(400,0,objSSCherry)
a.trg=10
a.direction=point[110]
a.speed=9
a.image_index=10
a.vspeed*=(1-point[111])
cre(400,0,objSSCherry)
a.trg=10
a.direction=point[110]
a.speed=12
a.image_index=10
a.vspeed*=(1-point[111])
point[110]+=360/40
}

repeat(120)
{
cre(400,0,objSSCherry)
a.trg=10
a.direction=point[110]
a.speed=9
a.image_index=10
a.vspeed*=(1-point[111])
a.image_alpha=0.2
a.mask_index=sprSSNothing
if(point[112] mod 3=0)
{
a.image_xscale=2
a.image_yscale=2
a.image_alpha=0.3
}
cre(400,0,objSSCherry)
a.trg=10
a.direction=point[110]
a.speed=12
a.image_index=10
a.vspeed*=(1-point[111])
a.image_alpha=0.2
a.mask_index=sprSSNothing
if(point[112] mod 3=0)
{
a.image_xscale=2
a.image_yscale=2
a.image_alpha=0.3
}
point[110]+=360/120
point[112]+=1
}
point[111]+=0.3
}

if(step=round(ts1*315))
{
	point[900]=1
	point[91]=0.003
with(objSSCherry){if(trg=99){image_blend=c_white}}
cre(0,0,objSSCherry)
a.trg=80
a.image_xscale=800
a.image_yscale=608
a.image_alpha=random(0.05)
a.sprite_index=sprSSBlack1
a.mask_index=sprSSNothing
}

if(step>=round(ts1*315) and step<round(ts1*347))
{
if(step mod 2=0)
{
cre(random(800),0,objSSCherry)
a.trg=81
a.image_xscale=1
a.image_yscale=800
a.image_alpha=0.5+random(0.5)
if(step>=round(ts1*332)){a.image_alpha=0}
a.sprite_index=sprSSBlack1
a.point[1]=irandom(15)
a.hspeed=random_range(1,-1)
a.mask_index=sprSSNothing
a.depth=-90
}
repeat(5)
{
cre(random(800),random(608),objSSCherry)
a.trg=81
a.image_xscale=1+irandom(2)
a.image_yscale=1+irandom(2)
a.image_alpha=0.5+random(0.5)
if(step>=round(ts1*332)){a.image_alpha=0}
a.sprite_index=sprSSBlack1
a.point[1]=20+irandom(7)
a.mask_index=sprSSNothing
a.depth=-90
a.image_angle=random(360)
}

with(objSSCherry)
{
	if(trg=80)
	{
		image_alpha=random(0.03)+0.02
	}
	if(trg=81)
	{
		point[1]+=1
		if(point[1]>=30){des()}
	}
}
}

if(step>=round(ts1*315) and step<round(ts1*331))
{
if(step mod 2=0)
{
cre(0,500,objSSCherry)
a.trg=13
a.direction=70+random(40)
a.speed=10+random(10)
a.gravity=0.15+random(0.15)
a.image_index=14

cre(800,500,objSSCherry)
a.trg=13
a.direction=70+random(40)
a.speed=10+random(10)
a.gravity=0.15+random(0.15)
a.image_index=14
}
}

if(step=round(ts1*324.5))
{
repeat(50)
{
cre(400,576,objSSCherry)
a.direction=-90+point[120]
a.speed=34
a.trg=15
a.image_xscale=3
a.image_yscale=3
a.mask_index=sprSSNothing
a.image_alpha=0.2
a.image_index=10
a.point[29]=1
point[120]+=360/50
}
}

if(step>=round(ts1*324.5) and step<round(ts1*327))
{
	with(objSSCherry)
	{
		if(trg=15)
		{
			speed*=0.92
		}
	}
}

if(step>=round(ts1*327) and step<round(ts1*331))
{
	with(objSSCherry)
	{
		if(trg=15)
		{
			speed=0
		}
	}
}

if(step=round(ts1*327)
or step=round(ts1*327.5)
or step=round(ts1*328)
or step=round(ts1*328.5)
or step=round(ts1*329)
or step=round(ts1*329.25)
or step=round(ts1*329.5)
or step=round(ts1*329.75)
or step=round(ts1*330)
or step=round(ts1*330.25)
or step=round(ts1*330.5)
or step=round(ts1*330.75))
{
if(step=round(ts1*329))
{
	with(objSSCherry)
	{
		if(trg=13)
		{
			mask_index=sprSSNothing
			image_alpha=0.5
		}
		if(trg=15)
		{
			point[1]=1
		}
	}
}
	with(objSSCherry)
	{
		if(trg=15)
		{
cre(x,y,objSSCherry)
a.direction=direction
a.speed=30*(1+point[1])
a.trg=16
a.image_xscale=2
a.image_yscale=2
a.image_index=10
a.depth=depth+1
			image_alpha=1
			mask_index=sprite_index
			speed=-25
		}
	}
}

if(step=round(ts1*329))
{
if(instance_exists(objPlayer))
{
with(objPlayer){muteki=1}
}
}

if(step=round(ts1*335))
{
	application_surface_draw_enable(true)
	with(objSSCherry){des()}
	with(objBlock){des()}
	if(instance_exists(objPlayer)){
	with(objPlayer){des() muteki=0}
	cre(400,304+32*5,objPlayer)
	}
	cre(-800,-608,objSSCherry)
	a.sprite_index=sprSSWhite1
	a.image_blend=make_color_hsv(200,150,100)
	a.image_xscale=2400
	a.image_yscale=1824
	a.mask_index=sprSSNothing
	a.depth=100
	a.trg=95
	a.point[29]=1
	cre(-800,-608,objSSCherry)
	a.sprite_index=sprSSWhite1
	a.image_xscale=2400
	a.image_yscale=1824
	a.mask_index=sprSSNothing
	a.depth=99
	a.trg=94
	a.point[29]=1
	cre(400-32*3-16,336+32*5,objBlock)
	a.visible=1
	a.image_xscale=32*7
	a.image_yscale=32
	a.sprite_index=sprSSWhite1
	a.image_blend=make_color_hsv(200,100,255)
	cre(400,304,objSSCherry)
	a.trg=93
	a.sprite_index=sprSSTex
	a.image_alpha=0.07
	a.mask_index=sprSSNothing
	a.depth=50
}

if(step>=round(ts1*335) and step<round(ts1*345))
{
if(point[140]<1){point[140]+=0.004}
point[141]=0.8*scrEasing1(point[140],2)+point[142]
point[142]+=0.00117
camera_set_view_pos(view_camera[0],400*(1-point[141]),530*(1-point[141]))
camera_set_view_size(view_camera[0],800*point[141],608*point[141])
	with(objSSCherry)
	{
		if(trg=94)
		{
			image_alpha-=0.02
		if(image_alpha<=0){des()}
		}
	}
}

if(step=round(ts1*335))
{
repeat(6)
{
point[152]=random(360)
point[151]+=6
repeat(point[151])
{
cre(400,35,objSSCherry)
a.point[1]=point[150]+point[152]
a.point[2]=point[151]*20
a.image_index=5
a.point[29]=1
a.image_xscale=1.7
a.image_yscale=1.7
a.trg=1
a.point[7]=point[151]/6
if(point[151] mod 12=0){a.point[4]=0.3}else{a.point[4]=-0.3}
cre(400,35,objSSCherry)
a.point[1]=point[150]+point[152]+360/(point[151])/2
a.point[2]=point[151]*20
a.image_index=5
a.point[29]=1
a.image_xscale=0.7
a.image_yscale=0.7
a.trg=1
a.point[7]=point[151]/6
if(point[151] mod 12=0){a.point[4]=0.3}else{a.point[4]=-0.3}
point[150]+=360/(point[151])
}
}

}

if(step>=round(ts1*335) and step<round(ts1*366))
{
with(objSSCherry)
{
	if(trg=93)
	{
	image_angle+=30+random(30)
	x=xstart+random_range(-100,100)
	y=ystart+random_range(-100,100)
	}
	if(trg=1)
	{
	if(!point[6])
	{
	x=xstart+point[2]*cos(degtorad(point[1]+point[10]))
    y=ystart+point[2]*sin(degtorad(point[1]+point[10]))+point[3]+point[5]
	point[1]+=point[4]
	if(!point[20]){point[3]+=0.8}else{
		point[2]=point[8]+point[8]*sin(degtorad(point[9]))
		if(point[9]<195){point[10]*=0.96 point[3]*=0.93 point[9]+=195/(round(other.ts1-1)*2.5)}
		else{point[1]+=point[4]*21}
		image_xscale=point[11]+point[11]*sin(degtorad(180*(point[9]/195)))
		image_yscale=image_xscale
		}
	}
	}
}
}

if(step=round(ts1*345))
{
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]>=4)
		{
point[15]=1
		}
	}
}
point[191]=0
point[192]=0.15
point[193]=-0.15
point[195]=20
point[196]=-20
}

if(step=round(ts1*346))
{
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]=3)
		{
point[15]=1
		}
	}
}
point[191]=0
point[192]=0.3
point[193]=-0.15
point[195]=-20
point[196]=40
}

if(step=round(ts1*348.5))
{
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]=1)
		{
point[20]=1
point[5]+=100
point[3]-=100
point[8]=point[2]
point[10]=-360
point[11]=image_xscale
		}
	}
}
}

if(step=round(ts1*347))
{
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]=2)
		{
point[15]=1
		}
	}
}
point[191]=0
point[192]=0
point[193]=1
point[195]=0
point[196]=0
}

if(step>=round(ts1*345) and step<round(ts1*366))
{
if(step<round(ts1*351)){
if(point[191]<1){point[191]+=0.02}
point[190]=point[192]+(1-scrEasing1(point[191],2))*point[193]
point[194]=point[195]+(1-scrEasing1(point[191],2))*point[196]
camera_set_view_angle(view_camera[0],point[194])
 camera_set_view_pos(view_camera[0],400*point[190],304*point[190])
camera_set_view_size(view_camera[0],800-800*point[190],608-608*point[190])
}

with(objSSCherry)
{
	if(trg=1)
	{
			if(point[15]=1)
			{
			point[10]=image_xscale
			point[11]=3-point[10]
			point[6]=1
			point[15]=2
			point[29]=0
			direction=point_direction(xstart,ystart,x,y)
			}
		if(point[15]=2)
		{
		if(point[8]<1){point[8]+=1/30}
		point[12]=point[11]*scrEasing2(point[8],2)
		image_xscale=point[10]+point[12]+point[13]
		image_yscale=point[10]+point[12]+point[13]
		if(point[8]>=0.3){speed+=0.5 point[13]+=1/20}
		}
	}
}
}

if(step=round(ts1*351))
{
	point[900]=1
	cre(400,100,objIntoSabi)
	cre(400,130,objSSCherry)
	a.sprite_index=sprSSTetKidBg
	a.image_speed=0
	a.image_xscale=2
	a.image_yscale=2
	a.trg=33
	a.mask_index=sprSSNothing
	a.depth=10
	a.image_alpha=0.08
}

if(step>=round(ts1*351) and step<round(ts1*366))
{
	if(step mod 15=0){point[225]=11}
if(step mod 15=7){point[225]=0}
	with(objSSCherry){if(trg=33){image_angle=other.point[225]}}
}

if(step>=round(ts1*351) and step<round(ts1*359))
{
point[197]+=360/round(ts1*8)
point[190]=0.1+0.1*sin(degtorad(point[197]-90))
 camera_set_view_pos(view_camera[0],400*point[190],304*point[190])
camera_set_view_size(view_camera[0],800-800*point[190],608-608*point[190])	

if(step=rhythm(351,point[655])
or step=rhythm(351.7,point[655])){
point[656]=choose(-1,1)*random_range(45,90)
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]=1)
		{
			cre(x,y,objSSCherry)
			a.trg=2
			a.direction=point_direction(xstart,ystart+100,x,y)+other.point[656]
			a.speed=30-point[23]
			a.image_index=image_index
			a.image_xscale=0.7
			a.image_yscale=a.image_xscale
			a.point[2]=3
			a.point[3]=(point[23])/30
			point[23]+=15
		}
	}
}
	}

if(step=rhythm(352.5,point[655])){
point[656]=random_range(-90,90)
with(objSSCherry)
{
	if(trg=2)
	{
point[4]=1 if(!point[5]){point[2]=2 point[5]=0}

	}
}
point[655]+=2
	with(objSSCherry){if(trg=1){point[23]=0 point[24]=0
		repeat(4)
{
    	point[24]+=10
			cre(x,y,objSSCherry)
			a.trg=4
			a.direction=point_direction(xstart,ystart+100,x,y)
			a.speed=6+point[24]
			a.image_index=12
			a.image_xscale=0.5
			a.image_yscale=a.image_xscale
			a.point[1]=(40-point[24])/80+0.5
			a.point[24]=point[24]
			a.point[25]=2
}
		}}
}

with(objSSCherry)
{
if(trg=4)
{
point[24]*=point[1]
point[25]*=0.7
speed=6+point[24]+point[25]
}
	
if(trg=2)
{

	if(!point[4]){speed*=0.85}else{ gravity_direction=direction gravity=(1-point[3])/5}
	point[2]*=0.85
	
image_xscale=1+point[2]-point[3]
image_yscale=1+point[2]-point[3]
}
}



			cre(-15,random(608),objSSCherry)
			a.trg=3
			a.direction=random_range(-45,45)
			a.gravity_direction=180
			a.gravity=0.7
			a.speed=2+random(16)
			a.image_angle=random(360)
			a.image_index=3
			a.image_xscale=2
			a.image_yscale=a.image_xscale
			cre(815,random(608),objSSCherry)
			a.trg=3
			a.direction=180+random_range(-45,45)
			a.gravity_direction=0
			a.gravity=0.7
			a.speed=2+random(16)
			a.image_angle=random(360)
			a.image_index=3
			a.image_xscale=2
			a.image_yscale=a.image_xscale
			cre(random(800),-15,objSSCherry)
			a.trg=3
			a.direction=270+random_range(-45,45)
			a.gravity_direction=90
			a.gravity=0.7
			a.speed=2+random(13)
			a.image_angle=random(360)
			a.image_index=3
			a.image_xscale=2
			a.depth=1
			a.image_yscale=a.image_xscale
			cre(random(800),623,objSSCherry)
			a.trg=3
			a.direction=90+random_range(-45,45)
			a.gravity_direction=270
			a.gravity=0.7
			a.speed=2+random(9)
			a.image_angle=random(360)
			a.image_index=3
			a.image_xscale=2
			a.depth=1
			a.image_yscale=a.image_xscale
}

if(step=round(ts1*347))
{
camera_set_view_pos(view_camera[0],0,0)
camera_set_view_size(view_camera[0],800,608)

}

if(step=round(ts1*359))
{
with(objSSCherry)
{
	if(trg=2)
	{
	image_alpha=0.3
	mask_index=sprSSNothing
	}
	if(trg=4)
	{
	image_alpha=0.3
	mask_index=sprSSNothing
	}
}
}

if(step>=round(ts1*359) and step<round(ts1*366))
{
with(objPlayer)
{
		muteki=1
}
with(objSSCherry)
{
	if(trg=4)
	{
		direction+=point[1]
	}
}
point[220]+=0.003
camera_set_view_pos(view_camera[0],400*point[220],70*point[220])
camera_set_view_size(view_camera[0],800*(1-point[220]),608*(1-point[220]))
}

if(step=round(ts1*359)
or step=round(ts1*360)
or step=round(ts1*361)
or step=round(ts1*362))
{
point[220]+=0.12

with(objIntoSabi)
{
point[1]+=0.25
}
if(point[170]>=0){point[170]=-1}else{point[170]=1}
with(objSSCherry)
{
	if(trg=1)
	{
		if(point[7]=1)
		{
			cre(x,y,objSSCherry)
			a.trg=4
			a.direction=point_direction(xstart,ystart+100,x,y)
			a.speed=-10
			a.image_index=image_index
			a.image_xscale=1.2
			a.image_yscale=a.image_xscale
			a.point[1]=other.point[170]*1.2
			cre(x,y,objSSCherry)
			a.trg=4
			a.direction=point_direction(xstart,ystart+100,x,y)+30
			a.speed=-7
			a.image_index=image_index
			a.image_xscale=0.8
			a.image_yscale=a.image_xscale
			a.point[1]=other.point[170]/2
			}
			
		}
}
}

if(step=round(ts1*366))
{
with(objSSCherry){des()}
with(objBlock){des()}
with(objIntoSabi){des()}
 camera_set_view_pos(view_camera[0],0,0)
camera_set_view_size(view_camera[0],800,608)
}


if(step=round(ts1*367))
{
cre(710,140,objSSCherry)
a.trg=150
a.sprite_index=sprAvdTeto1
a.image_xscale=0.187
a.image_yscale=0.187
a.depth=10

cre(720,142,objSSCherry)
a.trg=150
a.sprite_index=sprAvdTeto1
a.image_xscale=0.187
a.image_yscale=0.187
a.depth=10
a.image_blend=c_black
a.image_alpha=0.5
	
cre(0,32,objBlock)
a.image_xscale=32*30
a.image_yscale=-64
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
a.image_alpha=0.7

cre(0,608-32,objBlock)
a.image_xscale=32*30
a.image_yscale=64
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
a.image_alpha=0.7

cre(400-32*5,608-32*5,objBlock)
a.image_xscale=32*10
a.image_yscale=32
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
a.image_alpha=0.7

cre(0,-50,objSSCherry)
a.trg=99
a.image_xscale=800
a.image_yscale=708
a.depth=100
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
a.point[29]=1

cre(0,-50,objSSCherry)
a.trg=95
a.image_xscale=800
a.image_yscale=708
a.depth=95
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
a.image_alpha=0.7
a.point[29]=1

cre(0,0,objSSsh)
a.depth=98
a.sh=shRectangle
a.alp=0.2

//cre(424,304,objSSCherry)
//a.trg=98
//a.depth=96
//a.image_xscale=0.53
//a.image_yscale=0.53
//a.mask_index=sprSSNothing
//a.sprite_index=sprSSSabTt
//a.image_alpha=1

//cre(424,304,objSSCherry)
//a.trg=98
//a.depth=97
//a.image_xscale=0.6
//a.image_yscale=0.6
//a.mask_index=sprSSNothing
//a.sprite_index=sprSSSabTt
//a.image_alpha=0.3
//a.image_blend=c_black

point[900]=1
if(instance_exists(objPlayer)){
with(objPlayer){des()}
cre(400,434,objPlayer)
}
}


if(step=round(ts1*367))
{
point[524]=random(360)
point[525]=random(360)
point[526]=random(360)
repeat(60)
{
cre(400,100,objSSCherry)
a.trg=4
a.direction=point[520]*2+point[526]
a.speed=4
a.image_index=4

cre(400,100,objSSCherry)
a.trg=4
a.direction=point[520]*2+point[524]
a.speed=6.5
a.image_index=4

cre(400,100,objSSCherry)
a.trg=4
a.direction=point[520]*2+point[525]
a.speed=9
a.image_index=4

cre(400,100,objSSCherry)
a.trg=4
a.direction=270+360/120+point[520]
a.speed=18
a.image_index=5

cre(400,100,objSSCherry)
a.trg=4
a.direction=270+360/120+point[520]
a.speed=24
a.image_index=5

cre(400,100,objSSCherry)
a.trg=4
a.direction=270+360/120+point[520]
a.speed=30
a.image_index=5
point[520]+=360/60
}
}

if(step=round(ts1*368)
or step=round(ts1*368.5)
or step=round(ts1*369))
{
	
repeat(40)
{
cre(-40,100+point[521],objSSCherry)
a.trg=6
a.direction=30
a.speed=1+point[522]
a.point[29]=1
a.image_index=5
if(point[522] mod 3=0){a.mask_index=sprSSNothing a.image_alpha=0.2}

cre(-40,640+point[521],objSSCherry)
a.trg=6
a.direction=30
a.speed=1+point[522]
a.image_index=5
a.point[29]=1
if(point[522] mod 3=0){a.mask_index=sprSSNothing a.image_alpha=0.2}

cre(840,100+point[521],objSSCherry)
a.trg=6
a.direction=150
a.speed=1+point[522]
a.point[29]=1
a.image_index=5
if(point[522] mod 3=0){a.mask_index=sprSSNothing a.image_alpha=0.2}

cre(840,640+point[521],objSSCherry)
a.trg=6
a.direction=150
a.speed=1+point[522]
a.image_index=5
if(point[522] mod 3=0){a.mask_index=sprSSNothing a.image_alpha=0.2}
a.point[29]=1
point[522]+=1.5
}


point[521]+=180
point[522]=0

}

if(step>=round(ts1*368) and step<round(ts1*380))
{
with(objSSCherry)
{	
	if(trg=6)
	{
	if(!point[1]){point[2]+=1 if(point[2]>29){point[1]=1 speed=0  if(xstart<400){point[3]=direction+120}else{point[3]=direction-120} }}
	else{image_index=13 gravity_direction=point[3] gravity=0.2 point[5]+=1 if(point[5]>100){des()}}
	}
}
}


if(step=round(ts1*370))
{
cre(0,-140,objSSCherry)
a.trg=1
a.image_xscale=2
a.image_yscale=2
a.point[29]=1
a.point[1]=-350
a.image_index=10
cre(0,-140,objSSCherry)
a.trg=1
a.image_xscale=2
a.image_yscale=2
a.point[29]=1
a.point[1]=350
a.image_index=10
repeat(35)
{
cre(0,-140,objSSCherry)
a.trg=1
a.point[29]=1
a.point[1]=-350
a.point[4]=point[500]
a.point[3]=50
a.image_index=12
point[500]+=360/35
}

repeat(35)
{
cre(0,-140,objSSCherry)
a.trg=1
a.point[29]=1
a.point[1]=350
a.point[4]=point[500]
a.point[3]=50
a.image_index=12
point[500]+=360/35
}
}

if(step>=round(ts1*370) and step<round(ts1*373))
{

with(objSSCherry)
{
	
	if(trg=1)
	{
	point[2]+=180/other.ts1
	point[6]+=10
	if(point[2]>470){point[6]+=24}
point[4]+=point[1]/10
x=400+point[1]*sin(degtorad(point[2]+90))+(point[3]+point[7])*cos(degtorad(point[4]))
y=ystart+point[6]+(point[3]+point[7])*sin(degtorad(point[4]))
if(point[3]!=0)
{
image_angle=-point[4]-90
}
else
{
image_angle=30*sin(degtorad(point[2]))
}if(!point[10]){point[10]=image_xscale}
image_xscale=point[10]/2+point[10]*point[8]*point[10]*2
image_yscale=image_xscale
point[7]*=0.8
point[8]*=0.7
	}
}

if(step=round(ts1*370)
or step=round(ts1*371)
or step=round(ts1*372)
or step=round(ts1*373))
{
with(objSSCherry)
{
	if(trg=1)
	{
	if(point[3]!=0)
{
		point[7]=90
}
else
{
point[25]=random(360)
repeat(10)
{
cre(x,y,objSSCherry)
a.trg=2
a.image_xscale=4
a.image_yscale=4
a.image_index=10
a.point[3]=5
a.point[29]=1
a.speed=3+random(27)
a.point[5]=a.speed
a.direction=point[25]
point[25]+=360/10
}
}
		point[8]=1
	}
}
}
}

if(step>=round(ts1*370) and step<round(ts1*380))
{
with(objSSCherry)
{
	if(trg=2)
	{
	if(!point[1]){speed*=0.8 if(speed<1){point[1]=1}}
	else{speed+=0.05+random(point[5]/100)}
	point[3]*=0.8
	image_xscale=0.75+point[3]
	image_yscale=image_xscale
	point[15]+=1
	if(point[15]>=1){point[29]=0}

cre(x,y,objSSCherry)
a.image_alpha=0.14
a.sprite_index=sprite_index 
a.image_index=10
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=0.75
a.image_yscale=0.75
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
	}
}

with(objSSCherry)
{
	if(trg=10 and point[15])
	{
cre(x,y,objSSCherry)
a.image_alpha=0.2
a.sprite_index=sprite_index 
a.image_index=10
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=image_xscale
a.image_yscale=image_yscale
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
	}
}
}


if(step=round(ts1*373))
{
with(objSSCherry)
if(trg=150 and image_blend!=c_black)
{
scrSSstar(0,10,15,objSSCherry,14,151,1,4)
}

}

if(step>=round(ts1*373))
{
if(step=rhythm(373,point[890])){
with(objSSCherry)
{
if(trg=151)
{
if(!point[2]){point[2]=speed point[5]=direction}
cre(x,y,objSSCherry)
a.trg=152
a.image_xscale=image_xscale
a.image_yscale=image_yscale
a.image_index=4
point[4]=point[2]*8.5
point[6]=-10
mask_index=sprSSNothing
image_alpha=0.5
}
}
point[890]+=1
}

with(objSSCherry)
{
if(trg=151)
{
x=point[3]*dcos(point[5])+xstart-point[7]
y=point[3]*dsin(point[5])+ystart+point[7]*3/4
point[7]+=abs(point[6])
point[3]+=point[4]
point[5]+=point[6]
point[4]*=0.6
point[6]*=0.6
image_xscale=point_distance(xstart,ystart,x,y)/500+1.5
image_yscale=image_xscale
}
if(trg=152)
{
point[1]+=1
if(point[1]>=2){image_alpha-=0.1 mask_index=sprSSNothing} if(image_alpha<=0){des()}
}
}
}

if(step=round(ts1*373))
{
if(point[552]=0){point[552]=choose(-1,1)}
with(objSSCherry)
{
	if(trg=1)
	{
	if(point[3]!=0)
{
trg=1
direction=-point[4]
speed=26.1
gravity=2

}
else{gravity=1
	repeat(8)
{
cre(x,y,objSSCherry)
a.trg=2
a.image_xscale=4
a.image_yscale=4
a.image_index=10
a.point[3]=5
a.speed=3+random(27)
a.point[5]=a.speed
a.direction=random(360)
}
	
	}
	}
}
}


if(step>=round(ts1*373) and step<round(ts1*378))
{
with(objSSCherry)
{
	if(trg=1)
	{
if(!point[25]){point[27]=image_angle point[26]=1 point[25]=1}
image_angle=-90*other.point[552]*(1-point[26])+point[27]*point[26]
point[26]*=0.65
	}
}
}

if(step=round(ts1*375)
or step=round(ts1*376)
or step=round(ts1*377)
or step=round(ts1*378))
{
if(step=round(ts1*375)){
	//point[540]=-100
	point[540]=-160+random(128)
	}
point[544]+=1
if(point[544] mod 2=0){point[545]=64 point[549]=make_colour_hsv(40,70,255)}else{point[545]=0 point[549]=make_colour_hsv(10,70,255)}

#region
cre(0,point[541]-20,objSSCherry)
a.trg=9
a.mask_index=sprSSNothing
a.sprite_index=sprSSSBg
a.image_angle=-90
a.point[29]=1
a.image_xscale=(608/800)/4+0.012
a.image_yscale=0
a.point[2]=1
a.image_alpha=0.4
a.depth=depth+1
a.Light=1

cre(800,point[541]-20,objSSCherry)
a.trg=9
a.mask_index=sprSSNothing
a.sprite_index=sprSSSBg
a.image_angle=-90
a.point[29]=1
a.image_xscale=(608/800)/4+0.012
a.image_yscale=0
a.point[2]=-1
a.image_alpha=0.4
a.depth=depth+1
a.Light=1
#endregion


point[546]=0
repeat(60)
{
cre(point[546],point[541]-20,objSSCherry)
a.point[29]=1
a.image_xscale=0.7
a.image_yscale=0.7
a.image_index=9
a.trg=7
a.point[20]=1
point[546]+=15
}

repeat(4)
{
point[542]=point[540]
repeat(11)
{
cre(point[542]-point[545],point[541],objSSCherry)
a.point[29]=1
a.image_xscale=1.2
a.image_yscale=1.2
a.image_index=9
a.trg=7
if(!point[545]){a.point[1]=1}
point[542]+=128
}
point[541]+=40.5
}

point[546]=0
repeat(60)
{
cre(point[546],point[541]-20,objSSCherry)
a.point[29]=1
a.image_xscale=0.7
a.image_yscale=0.7
a.image_index=9
a.trg=7
a.point[20]=1
point[546]+=15
}

}

if(step>=round(ts1*375) and step<round(ts1*386))
{
	with(objSSCherry)
	{	
	if(trg=9)
	{
		if(point[3]<1){point[3]+=0.04}
		point[1]=scrEasing1(point[3],2)
		image_yscale=3*point[1]*point[2]
		image_alpha-=0.017
		if(image_alpha<=0){des()}
	}
	}
}

if(step=round(ts1*374.5)
or step=round(ts1*375)
or step=round(ts1*375.5)
or step=round(ts1*376)
or step=round(ts1*376.5))
{
point[551]=random(360)

repeat(50)
{
cre(400,304,objSSCherry)
a.point[1]=point[551]
a.image_index=13
a.trg=10
a.image_xscale=0.1
a.image_yscale=a.image_xscale
a.point[2]=point[550]*point[552]
a.point[3]=point[550]*point[552]
point[550]+=360/50
}
point[550]=0
}

if(step=round(ts1*377)
or step=round(ts1*378))
{
point[551]=random(360)
if(point[552]=0){point[552]=choose(-1,1)}
repeat(30)
{
cre(400,304,objSSCherry)
a.point[1]=point[551]
a.image_index=10
a.trg=10
a.image_xscale=0.1
a.image_yscale=a.image_xscale
a.point[2]=point[550]*point[552]
a.point[15]=1
a.point[4]=30
a.depth=depth-3
point[550]+=360/30
}

repeat(60)
{
cre(400,304,objSSCherry)
a.point[1]=point[551]
a.image_index=10
a.trg=10
a.image_xscale=0.1
a.image_yscale=a.image_xscale
a.point[2]=point[550]*point[552]
a.point[15]=1
a.point[4]=110
a.point[18]=0.5
a.depth=depth-3
point[550]+=360/60
}
point[550]=0
}

if(step>=round(ts1*374.5))
{
with(objSSCherry)
{
if(trg=10)
{
x=(200+point[4])*dcos(point[1]+point[2]-point[3])+xstart
y=(200+point[4])*dsin(point[1]+point[2]-point[3])+ystart
if(!point[15])
{
image_xscale+=0.1
image_yscale+=0.1
point[5]+=1
point[4]+=point[5]
point[3]*=0.8
}
else
{
if(point[16]<1){point[16]+=1/30}
image_xscale=scrEasing2(point[16],2)*1.5*(1-point[18])+point[17]
image_yscale=scrEasing2(point[16],2)*1.5*(1-point[18])+point[17]
if(point[16]>=0.4){point[17]+=0.1 point[5]+=1 point[4]+=point[5]}
}

}
}

}

if(step=round(ts1*375)
or step=round(ts1*376)
or step=round(ts1*377)
or step=round(ts1*378))
{
	
	with(objSSCherry)
	{
	if(trg=2)
	{
		if(!point[17]){		speed=0 point[17]=1
			speed=0
	gravity=0.2
	gravity_direction=point_direction(Px,Py,x,y)}
	}
	if(trg=7)
	{
	image_blend=make_colour_hsv(10,70,255)
	image_alpha=0.5
	mask_index=sprSSNothing
	}
	if(trg=9)
	{
	image_blend=make_colour_hsv(10,70,255)
	}
	}
}

if(step=round(ts1*375.5)
or step=round(ts1*376.5)
or step=round(ts1*377.5)
or step=round(ts1*378.5))
{
	with(objSSCherry)
	{
	if(trg=7)
	{
	image_blend=make_colour_hsv(40,70,255)
	image_alpha=1
	mask_index=sprite_index
	}
	if(trg=9)
	{
	image_blend=make_colour_hsv(40,70,255)

	}
	}
}

if(step=round(ts1*380))
{
	with(objSSCherry)
	{	
	if(trg=7)
	{
	if(point[1]){point[5]=64}
	if(!point[1]){point[5]=-64}
	point[4]=0
	image_blend=make_colour_hsv(10,70,255)
	}
	}
}

if(step>=round(ts1*379) and step<round(ts1*381))
{
if(step=round(ts1*379) or step=round(ts1*380))
{
point[548]=15
}
	with(objSSCherry)
	{	
	if(trg=7)
	{
	if(image_xscale>1){
	if(point[1]){if(!point[2]){point[2]=1 point[3]=64}}
	if(!point[1]){if(!point[2]){point[2]=1 point[3]=-64}}
	if(point[4]<1){point[4]+=1/40}
	x=xstart+point[3]*other.point[552]*scrEasing1(point[4],2)+point[5]*other.point[552]
	}
	}
	}
camera_set_view_pos(view_camera[0],random_range(-point[548],point[548]),0)
point[548]*=0.7
}

if(step>=round(ts1*381) and step<round(ts1*383))
{
if(step=round(ts1*381) or step=round(ts1*382))
{
point[548]=15
}
camera_set_view_pos(view_camera[0],0,random_range(-point[548],point[548]))
point[548]*=0.7
}

if(step>=round(ts1*381) and step<round(ts1*383))
{

	with(objSSCherry)
	{	
	if(trg=7)
	{
		image_blend=make_colour_hsv(40,70,255)
		mask_index=sprSSNothing
		image_alpha=0.5
if(!point[1]){point[15]+=5.5*other.point[552]*-1}
if( point[1]){point[15]-=5.5*other.point[552]*-1}
point[16]=xstart+point[15]
point[17]=ystart
if(!point[6]){point[11]=270 point[10]=image_xscale point[6]=1 if(!point[20]){point[13]=-30}}
point[7]=point_direction(400,304,point[16],point[17]) 
point[8]=point_distance(400,304,point[16],point[17])
x=(1+point[9])*point[8]*dcos(-point[7]-270+point[11])+400
y=(1+point[9])*point[8]*dsin(-point[7]-270+point[11])+304+point[13]
image_xscale=point[10]*(1+point[9])+point[21]
image_yscale=image_xscale
if(!point[20])
{
point[12]+=0.8
point[13]+=point[12]
}
point[21]+=0.01
point[11]*=0.75
point[9]+=0.02
	}
	}

}

if(step=round(ts1*383)+1)
{
with(objSSCherry)
{
	if(trg=151)
	{
		des()
	}
	if(trg=7)
	{
gravity=0.2
direction=point_direction(Px,Py,x,y)
speed=3+random(15)
if(direction>85 and direction<90){direction-=5}
if(direction>90 and direction<95){direction+=5}
point[29]=0
trg=8
	}
}
}

if(step=round(ts1*383))
{
camera_set_view_pos(view_camera[0],0,0)
with(objSSCherry)
{
	if(trg=7)
	{
mask_index=sprite_index
image_alpha=1
image_blend=c_white
image_index=13
	}
}
}

if(step=round(ts1*384.5))
{
cre(0,0,objIntoSabi2)
point[900]=1
}

if(step>=round(ts1*384.5) and step<round(ts1*391))
{



}


if(step>=round(ts1*384.5) and step<round(ts1*395))
{
	if(step mod 3!=0)
	{
cre(400,200,objSSCherry)
a.trg=13
a.direction=random(360)
a.speed=17
a.image_index=3
a.Light=1
	}
if(step>=round(ts1*390.5) and step<round(ts1*395))
{
repeat(9)
{
cre(400,200,objSSCherry)
a.trg=17
a.direction=point_direction(400,200,Px,Py)+360/18+point[589]
a.speed=18+random(12)
a.image_index=5
a.depth=1
a.image_xscale=0.8+random(0.5)
a.image_yscale=0.8+random(0.5)
point[589]+=360/9
}
}

with(objSSCherry)
{
	if(trg=8)
	{
mask_index=sprSSNothing
if(image_alpha>0){image_alpha-=0.03}
	}
	if(trg=13)
	{
	if(!point[1] and place_meeting(x,y,objBlock)){Light=0 trg=14 speed*=0.7 if(y>304){image_index=13 gravity=0.6}else{image_index=10} vspeed*=-1 hspeed+=random_range(-2,2) point[1]=1}
	}
	if(trg=14)
	{
cre(x,y,objSSCherry)
a.image_alpha=0.14
a.sprite_index=sprite_index 
a.image_index=image_index
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=0.75
a.image_yscale=0.75
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
	}
}
}

if(step=round(ts1*391))
{
x=400
y=204
scrSSstar(0,10,10,objSSCherry,14,155,1,12)
}

if(step>=round(ts1*391) and step<round(ts1*395))
{
with(objSSCherry){
	if(trg=155){
		if(!point[5]){
		mask_index=sprSSNothing 
		image_alpha=0.2
		point[1]=40
		point[2]=direction
		point[3]=speed
		point[4]=170
		Light3=1
		depth=5
		point[5]=1}
image_xscale=point_distance(400,204,x,y)/100+0.2
image_yscale=image_xscale
x=400+(point[3]*point[4])*cos(degtorad(point[2]))	
y=204+(point[3]*point[4])*sin(degtorad(-point[2]))
point[1]*=0.96
point[2]-=point[1]
point[4]*=0.96
point[6]=image_xscale*3
		}
	}
}

if(point[1]=5420151)
{
if(step=round(ts1*391))
{
repeat(4)
{
point[581]+=1
repeat(70/point[581])
{
cre(-50-40*(-1+point[581]*(point[581]/3)),point[580],objSSCherry)
a.trg=16
a.image_xscale=0.6*point[581]
a.image_yscale=0.6*point[581]
a.point[1]=1
a.point[29]=1
a.image_index=12
a.Light=1
a.depth=-60

cre(850+40*(-1+point[581]*(point[581]/3)),point[580],objSSCherry)
a.trg=16
a.image_xscale=0.6*point[581]
a.image_yscale=0.6*point[581]
a.point[1]=2
a.point[29]=1
a.image_index=12
a.Light=1
a.depth=-60
point[580]+=15*point[581]*2/3
}
point[580]=0
}

with(objSSCherry)
{
	if(trg=42)
	{
		point[29]=1
		gravity=1
		direction=point_direction(Px,Py,x,y)
		if(direction>80 and direction<90){direction-=10}
		if(direction>=90 and direction<100){direction+=10}
	}
}
}

if(step>=round(ts1*391) and step<round(ts1*395))
{
with(objSSCherry)
{
	if(trg=42)
	{
if(y>700){des()}
	}
}	
	
	
	
if(step=round(ts1*391)
or step=round(ts1*392)
or step=round(ts1*393)
or step=round(ts1*394))
{
with(objSSCherry)
{
	if(trg=16)
	{
	if(point[1]=1)
	{
	point[4]=point[2]+point[4]
	point[3]=0
	point[2]=60
	point[7]=1
	if(!point[6]){point[6]=image_xscale}
	}
	if(point[1]=2)
	{
	point[4]=point[2]+point[4]
	point[3]=0
	point[2]=-60
	point[7]=-1
	if(!point[6]){point[6]=image_xscale}
	}
    }
}
}
	
with(objSSCherry)
{
	if(trg=16)
	{
		if(point[3]<1){point[3]+=0.025}
		image_xscale=point[6]*(1.5-0.5*scrEasing1(point[3],2))
		image_yscale=image_xscale
		point[8]+=2
	x=xstart+point[2]*scrEasing1(point[3],2)+point[4]+sin(degtorad(point[2]*scrEasing1(point[3],2)*4+point[4]+y*2+point[8]))*20*(3-scrEasing1(point[3],2)*2)*image_xscale+(608-y)/3*(point_distance(x,y,400,y)-400)/-400*point[7]
    }
}
}
}

if(step>=round(ts1*383))
{
if(step=rhythm(383,point[930])){
	with(objSSCherry)
	{
if(trg=150 and image_blend!=c_black)
{
point[5]=random(360)
point[6]=choose(90,-90)
repeat(10)
{
cre(x,y,objSSCherry)
a.speed=15
a.image_index=3
a.direction=point[7]
a.gravity_direction=a.direction+point[6]
a.gravity=0.2
a.trg=153
point[7]+=360/10
}
}
    }
	point[930]+=1}
	
	with(objSSCherry)
	{
if(trg=153)
{
	if(!point[1] and speed>1){speed-=0.6}else{point[1]=1}
cre(x,y,objSSCherry)
a.image_alpha=0.2
a.sprite_index=sprite_index 
a.image_index=3
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=image_xscale
a.image_yscale=image_yscale
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
a.Light2=1
}
	}
	
	
}

if(step=round(ts1*395))
{
with(objPlayer){muteki=1 depth=-65}
with(objSSCherry)
{
	if(trg=155)
	{
	speed=random(200)+10
	gravity=random(2)
	gravity_direction=random(360)
	direction=random(360)
	image_alpha=1
	}
	if(trg!=155){des()}
}
with(objBlock){des()}
with(objIntoSabi2){des()}
with(objSSsh){des()}
}

if(step>=round(ts1*395) and step<round(ts1*399))
{
with(objSSCherry)
{
	if(trg=155)
	{
image_xscale+=point[6]*2/5
image_yscale+=point[6]*2/5
	}
}
point[587]+=0.014
if(point[587]<0.9){point[588]=scrEasing1(point[587],2)*3}
 camera_set_view_pos(view_camera[0],   -400*(point[588]+point[587]),   -304*(point[588]+point[587]))
camera_set_view_size(view_camera[0],800+800*(point[588]+point[587]),608+608*(point[588]+point[587]))
}

if(step>=round(ts1*373) and step<round(ts1*380))
{
with(objSSCherry)
{
	if(trg=1)
	{
image_xscale+=0.2
image_yscale+=0.2
	}
}

if(step<round(ts1*374))
{
	with(objSSCherry)
{
	if(trg=1 and y>659 and point[3]!=0)
	{
gravity*=-1
y=-50
speed*=1.2
image_xscale+=0.2
image_yscale+=0.2
	}
}

}
}

if(step=round(ts1*380))
{
with(objSSCherry)
{
	if(trg=1)
	{
des()
	}
}
}

if(step=round(ts1*395.5))
{
point[599]=choose(1,2)
point[590]=-random(150)
repeat(5)
{
repeat(10)
{
cre(point[590]+point[591],point[592],objSSCherry)
a.image_xscale=3
a.image_yscale=3
a.trg=17
a.image_alpha=0
a.point[29]=1
a.point[1]=1
a.image_index=9
a.mask_index=sprSSNothing
a.depth=-80
cre(point[590]+point[591]-75,point[592]+75,objSSCherry)
a.image_xscale=3
a.image_yscale=3
a.trg=17
a.image_alpha=0
a.point[29]=1
a.point[1]=0
a.image_index=9
a.mask_index=sprSSNothing
a.depth=-80
point[591]+=150
}
point[592]+=150
point[591]=0
}


}

if(step=round(ts1*396.5))
{
with(objSSCherry){if(trg=17){
	point[2]=x point[3]=y
x-=75
}}
}

if(step=round(ts1*397.5))
{
	point[596]=0.5
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,c_red)
with(objPlayer){visible=0}
with(objBow){visible=0}
with(objSSCherry){if(trg!=17){des()}}
with(objSSCherry){if(trg=17){
	point[4]=x point[5]=y
if(point[1]){y-=75}
point[6]=x
point[7]=y
}}
}

if(step=round(ts1*398))
{
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,c_black)

}

//modosu


if(step=round(ts1*399))
{
with(objSSCherry){if(trg!=17){des()}}	
	
cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-70
a.a=10

cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-70
a.a=25

cre(0,0,objSSsh)
a.alp=0.3
a.sh=shMirrorBall
a.depth=-70
a.a=40

cre(400,20,objSSCherry)
a.sprite_index=shSSMirror
a.image_xscale=0.24
a.image_yscale=0.24
a.trg=52
a.point[1]=1
a.image_alpha=0
a.depth=10
a.mask_index=sprSSNothing

cre(400,20,objSSCherry)
a.sprite_index=shSSMirror
a.image_xscale=2.5
a.image_yscale=2.5
a.trg=53
a.point[1]=1
a.image_alpha=0
a.depth=10
a.mask_index=sprSSNothing

cre(0,0,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_xscale=800
a.image_yscale=608
a.image_alpha=0.05
a.trg=50
a.depth=-99
a.mask_index=sprSSNothing

repeat(30)
{
cre(400,304-210,objSSCherry)
a.mask_index=sprSSNothing
a.sprite_index=sprSSNothing
a.image_alpha=1
a.trg=51
a.speed=random_range(-10,10)
a.gravity=0.7
a.image_xscale=0.5+random(1)
a.image_yscale=a.image_xscale
a.direction=random(360)
a.depth=9
a.point[1]=random(255)
}

 camera_set_view_pos(view_camera[0],0,0)
camera_set_view_size(view_camera[0],800,608)
cre(-32,64,objBlock)
a.image_xscale=32*30
a.image_yscale=-96
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-100
a.image_alpha=1

cre(-32,608-64,objBlock)
a.image_xscale=32*30
a.image_yscale=96
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-100
a.image_alpha=1

cre(400-32*5,320,objBlock)
a.image_xscale=32*10
a.image_yscale=32
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
a.image_alpha=0.7

cre(0,-50,objSSCherry)
a.trg=99
a.image_xscale=800
a.image_yscale=708
a.depth=100
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
a.point[29]=1

cre(0,-50,objSSCherry)
a.trg=95
a.image_xscale=800
a.image_yscale=708
a.depth=95
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_blend=make_color_rgb(118,75,172)
a.image_alpha=0.4
a.point[29]=1

cre(0,0,objSSsh)
a.depth=98
a.sh=shRectangle2
a.alp=0.2


cre(424,250,objSSCherry)
a.trg=98
a.depth=96
a.image_xscale=0.6
a.image_yscale=0.6
a.mask_index=sprSSNothing
a.sprite_index=sprSSSabTt
a.image_index=0
a.image_alpha=1

cre(424,250,objSSCherry)
a.trg=98
a.depth=97
a.image_xscale=0.7
a.image_yscale=0.7
a.mask_index=sprSSNothing
a.sprite_index=sprSSSabTt
a.image_index=1
a.image_alpha=0.45
a.image_blend=c_black

point[900]=1
if(instance_exists(objPlayer)){
with(objPlayer){des()}
cre(400,304,objPlayer)
}
}

if(step=round(ts1*399))
{
repeat(21)
{
repeat(11)
{
cre(point[600]-50,point[601]-17,objSSCherry)
a.image_xscale=1.5
a.image_yscale=1.5
a.trg=19
a.image_index=10
a.point[29]=1
if(point[600] mod 200 =0){a.point[6]=40}
else{a.point[6]=-40}
a.point[7]=a.point[6]
point[600]+=100
}
point[600]=0
point[601]+=30.4
}
point[601]=0
with(objSSCherry)
{
	if(trg=19)
	{
	if(other.point[599]=1){point[1]=-70}
	if(other.point[599]=2){point[1]= 70}
	point[2]=point[1]
	}	
}

}

if(step=round(ts1*402))
{
with(objSSCherry)
{
	if(trg=19)
	{
	if(other.point[599]=1){point[3]=point[1] point[1]=70 point[6]=point[7]}
	if(other.point[599]=2){point[3]=point[1] point[1]=-70 point[6]=point[7]}
	point[2]=point[1]
	}
}
}


if(step>=round(ts1*399) and step<round(ts1*405))
{
with(objSSCherry)
{
	if(trg=19)
	{
		x=xstart+point[1]-point[2]+point[3]
		if(y<0){y+=608}
		y=y mod 608
		y+=point[6]
		 point[6]*=0.9
		point[2]*=0.9
	}	
}
}


if(step=round(ts1*403.5))
{
with(objSSCherry){if(trg=17){
point[10]=0
point[2]=point[4]
point[3]=point[5]
point[12]=0
point[11]=0
point[13]+=454
point[14]+=800
}}
}

if(step=round(ts1*405))
{
with(objSSCherry){if(trg=17){
point[10]=1
point[12]=-10
point[2]=point[6]
point[3]=point[7]
if((point[7] mod 300)<150){point[15]=850 point[16]=1}else{point[15]=-950 point[16]=-1}
image_alpha=1
mask_index=sprite_index
}}
}

if(step>=round(ts1*400.5) and step<round(ts1*411))
{
with(objSSCherry){
	if(trg=17){
if(!point[10]){if(point_distance(x,y,0+point[14],75+point[13])>point[11]){point[11]+=70}else{image_alpha=1 mask_index=sprite_index point[10]=1}}
x=point[2]+point[15]
y=point[3]	kage=1
if(point[16]!=0){point[15]-=130*point[16] kage=0}
//if(image_alpha>0){image_alpha-=1/15}
if(point[10]){if(point[12]<11){point[12]+=1}else{image_alpha=0 mask_index=sprSSNothing}}
}}
}

if(step>=round(ts1*399))
{

with(objSSCherry){
	if(trg=51){
	image_blend=make_color_hsv(point[1],155,255)
	gravity_direction=point_direction(x,y,xstart,ystart)
	point[1]+=13.521 if(point[1]>=255){point[1]-=255} 
	}
	if(trg=50){
	image_blend=make_color_hsv(point[1],255,255)
	point[1]+=13.521 if(point[1]>=255){point[1]-=255} 
}

if(trg=52 or trg=53)
{
	image_angle-=3
}
}
}

if(step>=round(ts1*405) and step<round(ts1*411))
{
with(objSSCherry)
{
	if(trg=19)
	{
gravity=0.3
direction=point_direction(Px,Py,x,y)
speed=4+random(15)
hspeed*=2
point[29]=0
trg=20
	}
	if(trg=20)
	{
	image_xscale+=random(0.03)
	image_yscale+=random(0.03)
cre(x,y,objSSCherry)
a.image_alpha=0.2
a.sprite_index=sprite_index 
a.image_index=10
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=image_xscale
a.image_yscale=image_yscale
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
	}
}
}

if(step=round(ts1*406.5))
{
x=400
y=304
scrSSstar(0,10,15,objSSCherry,36,23,1,12)
scrSSstar(0,10,15,objSSCherry,36,24,1,12)
with(objSSCherry)
{
	if(trg=23)
	{
	point[1]=speed
	point[2]=direction
	point[3]=point[2]
	speed=0
	}
	if(trg=24)
	{
	point[1]=speed
	point[2]=direction
	point[3]=point[2]
	point[10]=180
	trg=23
	speed=0
	}
}

repeat(10)
{
point[630]=random(360)
repeat(8+point[633])
{
cre(400,304,objSSCherry)
a.point[2]=point[631]+3
a.speed=100
a.direction=point[630]
a.gravity=0.2
a.gravity_direction=a.direction+180
a.trg=28
a.point[29]=1

a.image_index=13
point[630]+=360/(8+point[633])
}
point[631]+=2
if(point[631]>=4){point[633]=16}
}


}

if(step=round(ts1*408.5))
{
with(objSSCherry)
{
	if(trg=23)
	{
	point[4]=360-point[2]
	point[2]=0
	point[7]=1
	}
}
}

if(step>=round(ts1*406.5) and step<round(ts1*411))
{
with(objSSCherry)
{
	if(trg=28)
	{
		image_xscale=point_distance(x,y,400,304)/140+0.1 
		image_yscale=image_xscale 
		if(point[1]=1){speed=point[2]} 
		if(point[1]=20){image_alpha=1 mask_index=sprite_index}
		point[1]+=1 
		if(point[1]>3 and point_distance(x,y,400,304)<(speed+gravity*2)){des()}
	}
	if(trg=23)
	{
if(point[5]<1){point[5]+=1/40}
point[6]=point[3]*(1-scrEasing1(point[5],2))
if(point[7]){if(point[8]<1){point[8]+=1/44}}
point[9]=point[4]*(1-scrEasing1(point[8],1))
if(!point[7]){point[11]=scrEasing1(point[5],2)}
else{point[11]=1-scrEasing1(point[8],1)}
if((point[1]*50*point[11])<100){point[12]=0 point[13]=100}else{point[12]=1 point[13]=0}
x=xstart+(point[1]*50*point[11]*point[12]+point[13])*dcos(-point[2]+point[6]+point[9]+point[10]+point[14])
y=ystart+(point[1]*50*point[11]*point[12]+point[13])*dsin(-point[2]+point[6]+point[9]+point[10]+point[14])
if(point[8]=1){des()}
image_xscale=point_distance(x,y,400,304)/140+0.1
image_yscale=image_xscale
point[14]+=-1
	}
}
}

if(step>=round(ts1*411) and step<round(ts1*415))
{
with(objSSCherry)
{
	if(trg=28)
	{
gravity=0.3
direction=point_direction(Px,Py,x,y)
speed=4+random(15)
point[29]=0
gravity_direction+=choose(-70,70)
trg=29
	}
	if(trg=29)
	{
	image_xscale+=random(0.03)
	image_yscale+=random(0.03)
cre(x,y,objSSCherry)
a.image_alpha=0.2
a.sprite_index=sprite_index 
a.image_index=10
a.mask_index=sprSSNothing 
a.trg=100 
a.image_xscale=image_xscale
a.image_yscale=image_yscale
a.gravity_direction=direction+180 
a.gravity=random(1) 
a.depth=depth+1
	}
}
}

if(step=round(ts1*411)
or step=round(ts1*412)
or step=round(ts1*413)
or step=round(ts1*414))
{
point[645]=32
if(!point[640]){
point[640]=400+random_range(-100,100)
point[641]=304-random(64)}

repeat(30)
{
cre(0,64,objSSCherry)
a.direction=point[642]+point_direction(0,64,point[640],point[641])
a.image_index=3
a.trg=31
a.point[1]=point_distance(0,64,point[640],point[641])
cre(0,608-64,objSSCherry)
a.direction=point[642]+point_direction(0,608-64,point[640],point[641])
a.image_index=3
a.trg=31
a.point[1]=point_distance(0,608-64,point[640],point[641])
cre(800,64,objSSCherry)
a.direction=point[642]+point_direction(800,64,point[640],point[641])
a.image_index=3
a.trg=31
a.point[1]=point_distance(800,64,point[640],point[641])
cre(800,608-64,objSSCherry)
a.direction=point[642]+point_direction(800,608-64,point[640],point[641])
a.image_index=3
a.trg=31
a.point[1]=point_distance(800,608-64,point[640],point[641])
point[642]+=360/30
}

with(objSSCherry)
{
	if(trg=31)
	{
speed=point[1]/11.4
image_angle=direction+180-90
	}
}
}

if(step>=round(ts1*411) and step<round(ts1*421))
{
with(objSSCherry)
{
	if(trg=31)
	{
point[29]=1
x-=point[6]
y-=point[7]
point[6]=random_range(-speed,speed)/2
point[7]=random_range(-speed,speed)/2
x+=point[6]
y+=point[7]
speed*=0.7
image_xscale=0.5+point_distance(x,y,xstart,ystart)/100
image_yscale=image_xscale
	}
}
camera_set_view_pos(view_camera[0],0,random_range(-point[645],point[645]))
point[645]*=0.7
}

if(step=round(ts1*415))
{
	point[900]=1
with(objSSCherry)
{
if(trg=31){des()}
}
if(instance_exists(objPlayer)){
with(objPlayer){des()}
cre(400,304,objPlayer)
}

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,make_color_rgb(118,75,172))
}

if(step>=round(ts1*415) and step<round(ts1*421))
{
with(objSSCherry)
{
	if(trg=12)
	{
	if(!point[1])
	{
	point[1]=1
	if(!point[4]){speed=random(14)+point_distance(x,y,point[2],point[3])/60}
	else{speed/=10}
	direction=point_direction(x,y,point[2],point[3])+point[4]+point[5]
	}
	speed*=0.9
	}
}
}

if(step=round(ts1*415))
{
repeat(10)
{
repeat(11)
{
cre(-100+point[651],-100+point[652],objSSCherry)
a.trg=12
a.image_alpha=0.5
a.mask_index=sprSSNothing
a.image_index=10

a.point[2]=100
a.point[3]=504
a.point[29]=1
point[651]+=100
}
point[651]=0
point[652]+=808/10
}
point[652]=0

repeat(10)
{
	point[649]=0
repeat(40)
{
cre(100,504,objSSCherry)
a.trg=12
a.image_alpha=0.5
a.mask_index=sprSSNothing
a.image_index=10
a.speed=(point[649]*10+point[647]/8+point[647]+10)*5
a.direction=point[648]
a.image_xscale=point[647]/16+1
a.image_yscale=a.image_xscale
a.point[2]=100
a.point[3]=504
a.point[4]=180
a.point[29]=1
if(point[666] mod 2=0){a.point[5]=30}else{{a.point[5]=-30}}
point[648]+=360/40
}
point[666]+=1
point[647]+=10+point[647]/4
}

}

if(step=round(ts1*418))
{
with(objSSCherry)
{
	if(trg=12)
	{
des()
	}
}
point[647]=0
repeat(10)
{
repeat(11)
{
cre(-100+point[651],-100+point[652],objSSCherry)
a.trg=12
a.image_alpha=0.5
a.mask_index=sprSSNothing
a.image_index=10

a.point[2]=700
a.point[3]=104
a.point[29]=1
point[651]+=100
}
point[651]=0
point[652]+=808/10
}
point[652]=0

repeat(10)
{
	point[649]=0
repeat(40)
{
cre(700,104,objSSCherry)
a.trg=12
a.image_alpha=0.5
a.mask_index=sprSSNothing
a.image_index=10
a.speed=(point[649]*10+point[647]/8+point[647]+10)*5
a.direction=point[648]
a.image_xscale=point[647]/16+1
a.image_yscale=a.image_xscale
a.point[2]=700
a.point[3]=104
a.point[4]=180
a.point[29]=1
if(point[666] mod 2=0){a.point[5]=30}else{{a.point[5]=-30}}
point[648]+=360/40
}
point[666]+=1
point[647]+=10+point[647]/4
}

}

if(step=round(ts1*416.5))
{
with(objSSCherry)
{
	if(trg=12)
	{
speed=0
image_alpha=0
	}
}
}

if(step=round(ts1*419.5))
{
with(objSSCherry)
{
	if(trg=12)
	{
speed=0
image_alpha=0
	}
}

}

if((step>=round(ts1*416.5) and step<round(ts1*418))
or (step>=round(ts1*419.5) and step<round(ts1*421)))
{
with(objSSCherry)
{
	if(trg=12)
	{
	if(image_xscale>1){kage=1}
point[5]+=30
if(point_distance(point[2],point[3],Px,Py)<point[5]){point[5]+=50}
image_index=9
if(point[5]>point_distance(point[2],point[3],x,y) and !point[6]){point[6]=1 
	image_alpha=1 mask_index=sprite_index}
if(point[6]){point[7]+=1 if(point[7]>=10){des()}}
	}
}
}

if(step=round(ts1*421))
{
with(objSSCherry)
{
	if(trg=12)
	{
des()
	}
}
x=400
y=304
scrSSstar(0,10,8,objSSCherry,36,14,1,12)
scrSSstar(0,10,8,objSSCherry,14,15,1,12)
with(objSSCherry)
{
	if(trg=14)
	{
	point[1]=speed
	point[2]=direction
	speed=0
	point[5]=random_range(-720,720)
	point[7]=10
	point[8]=1
	point[9]=2
	}
	if(trg=15)
	{
	point[1]=speed
	point[2]=direction
	speed=0
	point[5]=random_range(-720,720)
	point[7]=10
	point[8]=-1
	trg=14
	point[9]=2
	}
}
}

if(step>=round(ts1*421) and step<round(ts1*431))
{
with(objSSCherry)
{
	if(trg=14)
	{
	if(point[3]<1){point[3]+=1/30}
	point[4]=scrEasing2(point[3],2)
	image_xscale=(point_distance(x,y,xstart,ystart)/170+0.1)*point[4]*(1+point[9])
	image_yscale=image_xscale
x=(point[1]*40*(1+point[9]))*dcos(point[2]+point[5]+point[6]*point[8])+xstart
y=(point[1]*40*(1+point[9]))*dsin(point[2]+point[5]+point[6]*point[8])+ystart
point[5]*=0.75
point[6]+=point[7]
point[7]-=0.45
if(point[7]<=-1){point[9]+=0.01}else{point[9]*=0.8}
	}
}
}

if(step>=round(ts1*422.5) and step<round(ts1*425))
{
if(!point[683]){point[683]=1+random(359)}
repeat(2)
{
cre(0,64,objSSCherry)
a.direction=point[683]
a.image_index=10
a.trg=15
a.speed=11
a.depth=-10
point[683]+=8+random(10)
cre(800,64,objSSCherry)
a.direction=point[683]
a.image_index=10
a.trg=15
a.speed=11
a.depth=-10
point[683]+=8+random(10)
cre(0,608-64,objSSCherry)
a.direction=point[683]
a.image_index=10
a.trg=15
a.speed=11
a.depth=-10
point[683]+=8+random(10)
cre(800,608-64,objSSCherry)
a.direction=point[683]
a.image_index=10
a.trg=15
a.speed=11
a.depth=-10
point[683]+=8+random(10)
}
}

if(step=round(ts1*425))
{
point[680]+=0.03
with(objSSCherry)
{
	if(trg=14 or trg=15)
	{
		des()
	}
}
with(objBlock)
{
des()
}
}

if(step=round(ts1*425.7))
{
point[680]+=0.03
with(objSSsh)
{
des()
}
with(objSSCherry)
{
	if(trg!=98 or image_blend=c_black)
	{
des()
	}
	else
	{
	image_xscale+=0.1
	image_yscale+=0.1
	x+=5
	}
}

with(objPlayer)
{
visible=0
muteki=1
}
with(objBow)
{
visible=0
}
}

if(step=round(ts1*426.5))
{
point[680]+=0.03
with(objSSsh)
{
des()
}
with(objSSCherry)
{
des()
}
}






if(step=round(ts1*431))
{
		with(objIntoSabi2)
{
	des()
}
		with(objSSsh)
{
	des()
}
		with(objBlock)
{
	des()
}
		with(objSSCherry)
{
	des()
}
cre(0,32*3,objBlock)
a.image_xscale=32*30
a.image_yscale=32*-3
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
cre(0,608-32*3,objBlock)
a.image_xscale=32*30
a.image_yscale=32*3
a.visible=1
a.sprite_index=sprSSBlack1
a.depth=-50
cre(400,304,objSSCherry)
a.trg=95
a.image_xscale=0.8
a.image_yscale=0.8
a.image_speed=1.1
a.depth=96
a.image_alpha=0.5
a.mask_index=sprSSNothing
a.sprite_index=sprTetoFD
cre(0,0,objSSCherry)
a.trg=98
a.image_xscale=800
a.image_yscale=608
a.depth=100
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1

cre(0,0,objSSCherry)
a.trg=99
a.image_xscale=800
a.image_yscale=608
a.depth=99
a.mask_index=sprSSNothing
a.sprite_index=sprSSWhite1
a.image_alpha=1

a.image_blend=make_color_rgb(118,75,172)
point[900]=1
if(instance_exists(objPlayer)){
with(objPlayer){des()}
cre(400,454,objPlayer)
}
}

if(step>=round(ts1*431) and step<round(ts1*447))
{
		with(objSSCherry)
{
	if(trg=5)
	{
		speed+=0.08+random(0.08)
	}
	if(trg=4)
	{
if(!point[1]){point[1]=1 speed=point[8]}
speed+=1*point[9]
image_xscale=point_distance(x,y,point[3],point[4])/50-5+point[9]
image_yscale=image_xscale

if(speed=0 and point[7])
{
cre(x,y,objSSCherry)
a.speed=1+random(1)
a.direction=190+random(160)
a.trg=5
a.image_index=image_index
}
	}
}

if(step=round(ts1*443))
{
		with(objSSCherry)
{
	if(trg=5)
	{
		speed=20
		direction=point_direction(Px,Py,x,y)
	}
}
}

if(step<round(ts1*441))
{
if((7+step) mod 15=0)
{
point[750]=300+random(200)
point[751]=608-random(200)
point[752]=random(360)
repeat(24)
{
cre(point[750],point[751],objSSCherry)
a.speed=600
a.direction=point[752]
a.point[29]=1
a.point[9]=1
a.trg=4
a.point[8]=-26
a.point[3]=point[750]
a.point[4]=point[751]
a.image_index=10
if(point[753] mod 3=0){a.point[7]=1 a.image_index=9}
point[752]+=360/24
point[753]+=1
}
}
}

if(step=round(ts1*443.3))
{
repeat(24)
{
cre(400,500,objSSCherry)
a.speed=600
a.direction=point[752]
a.point[29]=1
a.trg=4
a.point[9]=1.5
a.point[8]=-30
a.point[3]=400
a.point[4]=500
a.image_index=13
a.depth=-9

cre(400,500,objSSCherry)
a.speed=600
a.direction=point[752]
a.point[29]=1
a.trg=4
a.point[9]=1.3
a.point[8]=-30
a.point[3]=400
a.point[4]=500
a.image_index=13
a.depth=-9

point[752]+=360/24
point[753]+=1
}


}

if(step=round(ts1*444.3))
{
repeat(24)
{
cre(400,500,objSSCherry)
a.speed=600
a.direction=point[752]
a.point[29]=1
a.trg=4
a.point[8]=-54
a.point[3]=400
a.point[4]=500
a.point[9]=3
a.image_index=12
a.depth=-10

cre(400,500,objSSCherry)
a.speed=600
a.direction=point[752]
a.point[29]=1
a.trg=4
a.point[8]=-45
a.point[3]=400
a.point[4]=500
a.point[9]=3
a.image_index=12
a.depth=-10

point[752]+=360/24
point[753]+=1
}


}


with(objSSCherry)
{
	if(trg=30)
	{
	if(!point[11]){
image_xscale=point[1]+1.3
image_yscale=point[1]+1.3
point[1]*=0.8
	}
	}
}

if(step=round(ts1*443))
{

repeat(10)
{
repeat(40)
{
point[880]+=30
cre(-200+point[880],-200+point[881],objSSCherry)
a.image_index=9
a.trg=30
a.point[29]=1
a.mask_index=sprSSNothing
a.image_alpha=0.3
a.point[1]=2
}
point[880]=0
point[881]+=130
}
point[881]=0

repeat(10)
{
repeat(34)
{
point[880]+=30
cre(-200+point[881],-200+point[880],objSSCherry)
a.image_index=9
a.trg=30
a.point[29]=1
a.mask_index=sprSSNothing
a.image_alpha=0.3
a.point[1]=2
}
point[880]=0
point[881]+=130
}
point[881]=0

}

if(step>=round(ts1*444))
{
with(objSSCherry)
{
	if(trg=30)
	{
if(!point[11])
{
if(!point[2]){point[2]=1 point[3]=210 point[6]=210 
	point[4]=point_direction(400,400,x,y)
	point[5]=point_distance(400,400,x,y)}
x=point[5]*dcos(-point[4]-point[3]+point[6])+400
y=point[5]*dsin(-point[4]-point[3]+point[6])+400
point[6]*=0.8
	}
	}
}
}

if(step>=round(ts1*445))
{
with(objSSCherry)
{
	if(trg=30)
	{
point[8]+=24
if(point_distance(x,y,400,400)>(600-point[8])){point[11]=1}
if(point[11]){if(!point[12]){
	gravity_direction=point_direction(Px,Py,x,y)
	gravity=point_distance(400,400,x,y)/200
	image_alpha=1
	mask_index=sprite_index
	point[12]=1
	}image_xscale+=gravity/4 image_yscale=image_xscale }
	}
}
}

}

if(step>=round(ts1*431) and step<round(ts1*431+ts1*16))
{
if((step=rhythm(431,point[756])
or step=rhythm(432,point[756])
or step=rhythm(433,point[756])
or step=rhythm(433.8,point[756])
or step=rhythm(434.6,point[756])))
{
repeat(12)
{
cre(Px,Py,objSSCherry)
a.image_index=10
a.image_alpha=0.2
a.mask_index=sprSSNothing
a.trg=2
a.point[2]=10+random(10)
a.point[4]=1.5+random(1)
a.image_xscale=a.point[4]
a.image_yscale=a.image_xscale
a.direction=random(360)
a.point[3]=1
}	
	with(objSSCherry)
{
	if(trg=2)
	{
	speed=50
	point[3]=random(2)
	}
}
if(step=rhythm(434.6,point[756])){point[756]+=4}
}
	
	with(objSSCherry)
{
	if(trg=2)
	{
	if(point[6]){speed=point[2] point[6]=0}
	speed*=0.85
	image_xscale=point[4]+point[3]
	image_yscale=image_xscale
	point[3]*=0.8
	
	if(speed>40){point[6]=1}
	}
}
}



if(step>=round(ts1*431) and step<round(ts1*463))
{
if(step=rhythm(431,point[740]))
{
		with(objSSCherry)
{
	if(trg=95)
	{
image_index=0
image_xscale*=-1
image_speed=1.1-other.point[745]
	}
}
	point[740]+=2+point[745]*3.3
}

if(step>=round(ts1*447))
{
point[745]+=0.004
}

}

if(step=round(ts1*431+ts1*16))
{
	point[900]=1
	point[720]=1
	with(objSSCherry){if(trg=5 or trg=4 or trg=2 or trg=7 or trg=30){des()}}
}

if(step=round(ts1*431+ts1*16) or step=round(ts1*439+ts1*16))
{
repeat(9-point[709])
{
point[701]=3+random(2)
point[702]=3+random(3)
point[703]=random(360)
point[704]=choose(-1,1)*(0.5+point[706])
point[706]+=0.37
point[717]=random(800/(7-point[709]))
repeat(16)
{
cre(point[705]+point[717],304,objSSCherry)
a.trg=1
a.image_index=9
a.point[1]=point[700]
a.point[5]=point[703]
a.point[6]=2+point[701]
a.point[7]=point[702]
a.point[8]=point[704]
a.point[29]=1
a.mask_index=sprSSNothing
a.image_alpha=0.04
point[708]+=1
if(point[708] mod 4=0){a.image_alpha=1 a.image_index=12}
point[700]+=628/16
}
point[705]+=800/(9-point[709])

}
point[705]=0
}

if(step>=round(ts1*431+ts1*16) and step<round(ts1*431+ts1*32))
{
if((step=rhythm(431+16,point[711])
or step=rhythm(432+16,point[711])
or step=rhythm(433+16,point[711])
or step=rhythm(433.8+16,point[711])
or step=rhythm(434.6+16,point[711])) and point[720]>0.3)
{

point[710]=100+random(408)
repeat(8)
{
cre(32,point[710],objSSCherry)
a.image_index=10
a.image_alpha=0.2
a.mask_index=sprSSNothing
a.trg=2
a.point[2]=10+random(10)
a.point[4]=1.5+random(1)
a.image_xscale=a.point[4]
a.image_yscale=a.image_xscale
a.direction=random(360)
a.point[3]=1
}	

point[710]=100+random(408)
repeat(8)
{
cre(800-32,point[710],objSSCherry)
a.image_index=10
a.image_alpha=0.2
a.mask_index=sprSSNothing
a.trg=2
a.point[2]=10+random(10)
a.point[4]=1.5
a.image_xscale=a.point[4]
a.image_yscale=a.image_xscale
a.direction=random(360)
a.point[3]=random(2)
}	
	with(objSSCherry)
{
	if(trg=2)
	{
	speed=50*other.point[720]
	point[3]=random(2)*other.point[720]
	}
}
if(step=rhythm(434.6+16,point[711])){point[711]+=4}
}
	
	with(objSSCherry)
{
	if(trg=2)
	{
	if(point[6]){speed=point[2]*other.point[720] point[6]=0}
	speed*=0.85
	image_xscale=point[4]+point[3]
	image_yscale=image_xscale
	point[3]*=0.8
	
	if(speed>40*other.point[720]){point[6]=1}
	}
}
}




if(step>=round(ts1*431+ts1*16) and step<round(ts1*431+ts1*32))
{
with(objSSCherry)
{
	if(trg=1)
	{
if(point[3]<1){point[3]+=1/20}
point[2]=point[1]*scrEasing1(point[3],2)
point[4]+=(point[6]*2/3+(point[6]/6)*sin(degtorad(point[5])))*other.point[720]
image_xscale=(1-0.5*sin(degtorad(point[5])))*(1-(abs(point[8])/10))+0.2
image_yscale=image_xscale
point[5]+=point[7]*other.point[720]
y=((point[2]+point[4]) mod 628-10)
point[9]+=point[8]*other.point[720]
if(point[9]<0){point[9]=820+point[9]}
x=(((xstart+point[9]) mod 820-10))
	}
}
}

if(step>=round(ts1*431+ts1*24) and step<round(ts1*431+ts1*32))
{
	if(point[720]>0){point[720]-=0.0078}else{point[720]=0}
}

if(step=round(ts1*433+ts1*16) or step=round(ts1*441+ts1*16))
{
with(objSSCherry)
{
	if(trg=1 and image_alpha>=1)
	{
		mask_index=sprite_index
	}
}
}

if(step=round(ts1*463))
{
	point[900]=1
	
	instance_create(0,0,objLiarDanceFinalController)
	
with(objSSCherry)
{
	if(trg=1 or trg=2)
	{
	if(trg=2)
	{
	//repeat(2)
	//{
	cre(x,y,objSSCherry)
	a.trg=1
	a.image_index=10
	//a.image_alpha=1
	
	a.mask_index=sprSSNothing
	a.image_alpha=0.05
	
	a.speed=0.4+random(0.9)
	a.direction=230+random(80)
	a.point[29]=1
	a.image_xscale=image_xscale*2/5
	a.image_yscale=image_xscale*2/5
	//}
	des()
	}
	
	
	
	speed=0.4+random(0.9)
	direction=230+random(80)
	point[29]=1
	image_xscale*=3/5
	image_yscale*=3/5
	
	//image_alpha=1
	//mask_index=sprite_index
	mask_index=sprSSNothing
	image_alpha=0.05
	}
}
}

if(step>=round(ts1*463))
{
with(objSSCherry)
{
	if(trg=1 or trg=2)
	{
if(y>608){y=0}
	}
}
}

if(step=round(ts1*463))
{
	with(objSSCherry)
{
	if(trg=95)
	{
sprite_index=sprSSTen
image_speed=0.4
y-=60
	}
}

}

if(step=round(ts1*479))
{
depth=5
point[900]=1
	with(objSSCherry)
{
if(trg=1 or trg=2)
{
image_index=13
speed=0
vspeed=0.15+random(0.35)
trg=3
}
	if(trg=95)
	{
sprite_index=sprDtetS
y+=90
	}
	
}

point[21]=0
point[22]=0

}


if(step>=round(ts1*479) and step<round(ts1*495))
{
point[21]+=44.325
 point[22]=370*sin(degtorad(point[21]))
	if(step mod 4=0)
	{
	cre(400+point[22],50,objSSCherry)
	a.speed=10
	a.direction=270+80*sin(degtorad(-point[21]/4+22.5))
	a.trg=5
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=2
    a.vspeed*=0.7
	cre(400-point[22],50,objSSCherry)
	a.speed=10
	a.direction=270+80*sin(degtorad(point[21]/4-22.5))
	a.trg=5
	a.image_xscale=5
	a.image_yscale=5
	a.image_index=2
    a.vspeed*=0.7
	}

	with(objSSCherry)
	{
		if(trg=5)
		{
		if(image_xscale>0.6){image_xscale-=0.2 image_yscale-=0.2}
		else{image_xscale=0.6 image_yscale=0.6}
		}
	}
	
	if(step mod 5=0)
{
cre(0,500,objSSCherry)
a.trg=6
a.direction=70+random(40)
a.speed=7+random(7)
a.gravity=0.1+random(0.1)
a.image_index=3

cre(800,500,objSSCherry)
a.trg=6
a.direction=70+random(40)
a.speed=7+random(7)
a.gravity=0.1+random(0.1)
a.image_index=3
}
}

if(step=round(491*ts1)
or step=round(491.5*ts1)
or step=round(492.5*ts1))
{
with(objSSCherry)
{
	if(trg=3)
	{
		point[29]=0
	}
	if(trg=14)
	{
		point[1]=1
	}
}
point[40]=point_direction(400,154,Px,Py)+360/20
if(step!=round(492.5*ts1))
{
repeat(10)
{
cre(400,154,objSSCherry)
a.trg=14
a.direction=point[40]
a.speed=30
a.image_angle=a.direction-90
a.image_index=12
a.image_xscale=1.5
a.image_yscale=1.5
point[40]+=360/10
}
repeat(40)
{
cre(400,154,objSSCherry)
a.trg=14
a.direction=point[40]
a.speed=30
a.image_angle=a.direction-90
a.image_index=12
a.image_alpha=0.2
a.mask_index=sprSSNothing
point[40]+=360/40
}
}
else
{
x=100 y=150
scrSSstar(0,30,3,objSSCherry,18,15,1,12)
scrSSstar(0,30,10,objSSCherry,18,16,1,12)

x=700 y=150
scrSSstar(0,30,3,objSSCherry,18,15,1,12)
scrSSstar(0,30,10,objSSCherry,18,16,1,12)
}
}

if(step>=round(ts1*491) and step<round(ts1*495))
{
if(step=round(492.5*ts1))
{
	with(objSSCherry)
{
	if(trg=15)
	{
		point[3]=1
		point[6]=speed/40
		image_xscale=1.5
		image_yscale=1.5
	}
	if(trg=16)
	{
		point[3]=1
		point[6]=speed/40
		image_xscale=1
		image_yscale=1
		image_alpha=0.5
		trg=15
	}
}
}
with(objSSCherry)
{
	if(trg=15)
	{
	if(point[2]<4){point[2]+=1 if(point[2]=4){speed=0}}else{
			speed+=point[6]
			if(x>400){direction+=point[6]*3+0.1}else{direction-=point[6]*3+0.1}
			if(image_alpha=1){
		cre(x,y,objSSCherry) 
		a.image_alpha=0.2 
		a.sprite_index=sprite_index 
		a.image_index=image_index 
		a.mask_index=sprSSNothing
		a.trg=100 
		a.image_angle=image_angle
		a.direction=direction+180
		a.speed=-4-random(4)
		a.gravity_direction=direction+180 
		a.gravity=random(1) 
		a.depth=depth+1}}
	}
	if(trg=14)
	{
		if(!point[3] and !point[1]){point[2]+=1 if(point[2]=4){speed=0}}
		if(point[1]){speed=18
			if(image_alpha=1){
		cre(x,y,objSSCherry) 
		a.image_alpha=0.2 
		a.sprite_index=sprite_index 
		a.image_index=image_index 
		a.mask_index=sprSSNothing
		a.trg=100 
		a.image_angle=image_angle
		a.direction=direction+180
		a.speed=-4-random(4)
		a.gravity_direction=direction+180 
		a.gravity=random(1) 
		a.depth=depth+1}
		}
	}
}
}

if( step=round(ts1*495))
{
with(objSSCherry)
{
des()
}
}

if( step=round(ts1*498))
{
with(objPlayer)
{
	visible=0
	frozen=true
	muteki=1
}
}
/*
if(step=round(ts1*495)
or step=round(ts1*496) 
or step=round(ts1*497.5)
or step=round(ts1*498))
{
cre(400,304,objSSCherry)
a.trg=92
a.sprite_index=sprT4P
a.image_index=point[799]
a.mask_index=sprSSNothing
a.depth=-100
a.image_blend=make_colour_hsv(10,200,255)
point[799]+=1
}

if( step=round(ts1*498))
{
with(objPlayer)
{
	visible=0
	muteki=1
}
with(objBow)
{
	visible=0
}
with(objSSCherry)
{
	if(trg!=95 and trg!=92 and trg!=99)
	{
des()
	}
}

with(objBlock)
{
des()	
}
}
*/


if(step=round(ts1*506))
{
scrStopMusic()
}

}
