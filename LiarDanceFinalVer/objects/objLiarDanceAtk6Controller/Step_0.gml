//1465
/*
sprLiarDanceAtk6Liar
sprLiarDanceAtk6Dance
sprLiarDanceAtk6Usodeodorunosa
*/
if instance_exists(objPlayer) {
    t++
	
	with(objPlayer) {
		djump=1
	}
	x=scrPX()
	y=scrPY()
}

else {
	instance_destroy()	
}

if t==3026 {
	
	
	a=instance_create_depth(400,304,200,objLiarDanceAtk6Teto)
	a.image_alpha=0.25
	a.image_xscale=teto_side
	a.t=random(360)
	
	//color=make_color_rgb(201,131,255)
	for (dist=160; dist<=220; dist+=60) {
		for (angle=0; angle<360; angle+=4) {
			a=instance_create_depth(400+lengthdir_x(96,angle),304+lengthdir_y(96,angle),500-dist,objCustomBullet)
			a.sprite_index=sprLiarDanceAtk6CherryLine
			a.image_angle=angle+90
			switch(dist) {
				case 160:
					a.dir_inc=3
					a.image_blend=c_black;
					a.image_xscale=1.7;
					break;
					
				case 220:
					a.dir_inc=-3
					a.image_blend=c_white;
					a.image_xscale=1.1;
					break;
					
			}
			a.image_yscale=a.image_xscale
			a.drop_shadow=false
			a.tag="atk 6 start transition"
			a.free_variable[0]=sign(angle mod 12)
			a.free_variable[1]=random_range(-32,32)
			a.free_variable[2]=500-dist;
			a.dir=angle;
			a.persist=true
		}
	}
	
	for (i=0; i<2; i++) {
		
		/*
		aa=instance_create(400,304,objCustomBullet)
		aa.killer=false;
		aa.drop_shadow=false;
		aa.image_alpha=0
		aa.tag="atk 6 six spawner parent"
		*/
		for (angle=0; angle<360; angle+=120) {
			a=instance_create_depth(400+lengthdir_x(96,angle),304+lengthdir_y(96,angle),-50,objCustomBullet)
			a.drop_shadow=false;
			a.draw=true
			a.sprite_index=sprCustomRegularCherry
			a.image_index=((angle+60*i)/30)
			a.image_xscale=1.4
			a.image_yscale=a.image_xscale;
			a.free_variable[0]=random_range(32,-64)
			a.b_trig=true;
			a.cx=400
			a.cy=304
			a.len=96
			a.dir=(angle+60*i)
			//a.parent_id=aa.id
			a.dir_inc=-4.3
			a.persist=true
			a.free_variable[0]=i*3+angle/120
			a.tag="atk 6 six spawners"
			
		}
	}
}

if t>=3026 and t<=3076 {
	
	if t<=3066 {
		v=EaseOutCubic(t-3036,144,0,40);
		set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	}
	
	with(objDarkness) {
		if tag=="atk 6 starts with immediate flashbang" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
	with(objCustomBullet) {
		if tag=="atk 6 start transition" {
			len=EaseOutBounce(t,96+96*free_variable[0]+free_variable[1],free_variable[2],50)
		}
		if tag=="atk 6 six spawners" {
			len=EaseOutBounce(t,96,300,50)
			image_xscale=lerp(image_xscale,3,0.15)
			image_yscale=image_xscale
			if t<30 and t mod 2 == 0 {
				for (angle=0; angle<360; angle+=120) {
					a=instance_create_depth(x,y,depth,objCustomBullet)
					a.sprite_index=sprCustomRegularCherry;
					a.image_index=image_index;
					a.image_xscale=image_xscale;
					a.image_yscale=a.image_xscale;
					a.direction=dir+angle+90+t*5.4
					a.speed=2
					a.accel=0.2
					a.image_alpha=1-0.9*sign(t mod 8)
					a.killer=(a.image_alpha==1)
					a.tag="atk 6 impossible pattern"
					//a.persist=true
				}
			}
			/*
			if t==29
				instance_destroy()
			*/
		}
	}
}


if t>=3076 and t<=3136 {
	if t==3076 {
		for (i=0; i<circles_amount; i++) {
			rand=random(360)
			rand2=random(360)
			_dir_inc=0random_range(4,8)
			_ofs_inc=0//random_range(5,10)
			for (angle=0; angle<360; angle+=15) {
				a=instance_create(0,0,objLiarDanceAtk6R2DBullet)
				a.x_start=xx[i];
				a.y_start=yy[i];
				
				a.r_1=500
				a.free_variable[0]=circle_radius[i];
				a.r_2=-a.r_1;
				/*
				a.r_1=circle_radius[i]
				a.r_2=a.r_1;
				*/
				a.dir=angle+rand;
				a.ofs=rand2;
				a.dir_inc=_dir_inc;
				a.ofs_inc=_ofs_inc;
				a.sprite_index=sprCustomRegularCherry;		//sprLeeheCherry
				//a.image_xscale=3;
				a.image_xscale=a.free_variable[0]/110
				a.image_yscale=a.image_xscale;
				a.image_index=color_offset+i*2
				a.image_alpha=0;
				a.killer=false;
				a.tag="atk 6 prima circles"
				a.free_variable[1]=i;
				//a.t=-i*2
				a.t_inc=lerp(0.7,1.5,i/8)
				a.persist=true
			}	
		}
	}
	
	for (i=0; i<circles_amount; i++) {
		increment=EaseOutSine(t-3086,angle_offset_inc[i]/5,0,100)
		angle_offset[i]+=increment
		if i!=0 {
			xx[i]=xx[i-1]+lengthdir_x(radius_offset[i],angle_offset[i])
			yy[i]=yy[i-1]+lengthdir_y(radius_offset[i],angle_offset[i])	
		}
	}
	with(objLiarDanceAtk6R2DBullet) {
		if tag=="atk 6 prima circles" {
			
			
			if t<=50 {
				image_alpha=EaseOutCubic(t,0,0.4,50)
				//image_xscale=EaseLinear(t,3,free_variable[0]/110,35)
				//image_yscale=image_xscale;
				r_1=EaseOutBack(t,500,free_variable[0],50)
				r_2=r_1//EaseInOutCubic(t,-500,free_variable[0],35)
			}
			
			if instance_exists(objLiarDanceAtk6Controller) {
				x_start=objLiarDanceAtk6Controller.xx[free_variable[1]]
				y_start=objLiarDanceAtk6Controller.yy[free_variable[1]]
			}
			if other.t=3134 {
				a=instance_create(x,y,objCustomBullet);
				a.sprite_index=choose(sprMayuCherry,sprCustomGreyCherry, sprWBCherry)		//sprMayuCherry;
				a.image_xscale=image_xscale;
				a.image_yscale=a.image_xscale
				if a.sprite_index==sprWBCherry
					a.image_blend=c_dkgray
				a.direction=point_direction(scrPX(),scrPY(),x,y)
				a.speed=random_range(4,10)
				a.gravity_direction=a.direction+180+random_range(20,45)*choose(-1,1)
				a.gravity=random_range(0.2,0.45)
				a.tag="atk 6 prima circles destruction"
				
				tag="atk 6 prima circles fade out"
				//instance_destroy()
			}
		}
	}
	
	with(objCustomBullet) {
		if tag=="atk 6 start transition" {
			if free_variable[2]==280 and t mod 30 == 0 {
				//a=instance_create(
			}
		}
	}
}

if t>=3160 and t<=3240 {
	
	with(objCustomBullet) {
		if tag=="atk 6 prima circles destruction" {
			killer=false;
			if image_alpha>0.2
				image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
		if tag=="atk 6 six spawners" {
			
			
			
			if t mod 2 == 0 {
				
				for (angle=0; angle<360; angle+=120) {
					a=instance_create_depth(x,y,depth,objCustomBullet)
					a.sprite_index=sprite_index//sprCustomRegularCherry;
					a.image_index=image_index;
					a.image_xscale=image_xscale;
					a.image_yscale=a.image_xscale;
					a.direction=dir+angle-lerp(0,60,(other.t-3160)/60)
					a.drop_shadow=false;
					a.draw=true;
					a.speed=3
					a.accel=0.2
					//a.image_alpha=1-0.9*sign(t mod 6)
					//a.killer=(a.image_alpha==1)
					a.tag="atk 6 impossible pattern 2"
					//a.persist=true
				}	
			}
			
		}
		if tag=="atk 6 six spawners circles"  {
			if t<=20 {
				image_xscale=EaseInBack(t,3,2,20)
				image_yscale=image_xscale;
				len=dsin(t*9)*112
			}
			x=parent_id.x+lengthdir_x(len,dir+point_direction(parent_id.x,parent_id.y,400,304))
			y=parent_id.y+lengthdir_y(len,dir+point_direction(parent_id.x,parent_id.y,400,304))
		}
		if tag=="atk 6 six spawners bad circles" {
			if t<=25 {
				image_xscale=EaseInBack(t,3,1,25)
				image_yscale=image_xscale;
			}
		}
		if tag=="atk 6 accelerating bullshit spawner" {
			//if t mod 3 == 0 
			//image_index++
			image_blend=make_color_hsv(t*4,255,255)
			if t mod 3 == 0 {
				for (i=0; i<2; i++) {
					a=instance_create_depth(x,y,depth+1,objCustomBullet)
					a.sprite_index=sprite_index		//sprInvertedLeeheCherry			//sprCustomRegularCherry;
					a.image_index=image_index//irandom(12)
					a.image_blend=image_blend
					a.image_xscale=image_xscale;
					a.image_yscale=a.image_xscale;
					a.direction=direction+t*23+180*i
					a.speed=random_range(4,7)
					a.accel=0.05
					a.free_variable[0]=random_range(0.9,1.2)
					a.drop_shadow=false
					a.draw=true
					a.tag="atk 6 accelerating bullshit"
				}
			}
			len=lerp(len,250,0.2)
			deg_y=lerp(deg_y,-0.8,0.125)
			//dir_inc=lerp(dir_inc,1,0.1)
		}
		if tag=="atk 6 accelerating bullshit" {
			image_xscale=lerp(image_xscale,free_variable[0],0.15)
			image_yscale=image_xscale
			image_index++	
		}
	}
	
	/*
	if t mod 8 == 0 {
		_y=608*accelerating_bs_mirror//*sign(t mod 16)
		x_shift=random_range(-90,90)
		for (xx=0; xx<800; xx+=180) {
			a=instance_create(xx+x_shift,_y,objCustomBullet)
			a.sprite_index=sprInvertedLeeheCherry			//sprCustomRegularCherry;
			a.image_index=irandom(12)
			a.image_xscale=3;
			a.image_yscale=a.image_xscale;
			a.direction=point_direction(a.x,a.y,a.x,304)+random_range(-10,10)
			a.speed=random_range(3,6)
			a.accel=0.12
			a.tag="atk 6 accelerating bullshit"
		}
	}
	*/
}

if t==3160 {
	rand=0//random(360)
	index=irandom(12)
	mirror=choose(-1,1)
	for (angle=0; angle<360; angle+=180) {
		a=instance_create_depth(-50,-50,-380,objCustomBullet)
		a.sprite_index=sprMayuCherry				//sprCustomRegularCherry		//sprInvertedLeeheCherry
		a.image_xscale=8;
		a.image_yscale=a.image_xscale;
		a.image_index=index;
		a.drop_shadow=false
		a.draw=true
		a.b_trig=true;
		a.cx=400;
		a.cy=304;
		a.dir=angle+rand;
		a.len=500;
		a.direction=a.dir+140
		a.persist=true
		a.dir_inc=8
		a.deg_x=mirror
		a.tag="atk 6 accelerating bullshit spawner"
	}
}

if t>=3160 and t<=3200 {
	with(objCustomBullet) {
		if tag=="atk 6 accelerating bullshit spawner" {
			dir_inc=lerp(dir_inc,1,0.05)
		}
	}
	
}

if t==3200 || t==3220 {
	with(objCustomBullet) {
		if tag=="atk 6 accelerating bullshit spawner" {
			dir_inc=15
			
			/*
			for (spd=3; spd<21; spd+=3) {
				for (angle=-45; angle<=45; angle+=90) {
					
					a=instance_create_depth(x,y,depth+1,objCustomBullet)
					a.sprite_index=sprite_index		//sprInvertedLeeheCherry			//sprCustomRegularCherry;
					a.image_index=image_index//irandom(12)
					a.image_blend=image_blend
					a.image_xscale=lerp(image_xscale*0.7,2,spd/18)
					a.image_yscale=a.image_xscale;
					a.direction=point_direction(x,y,scrPX(),scrPY())+random_range(35,325);
					a.speed=irandom_range(3,20);
					a.accel=0.2
					a.free_variable[0]=a.image_xscale;
					a.drop_shadow=false
					a.draw=true
					a.tag="atk 6 accelerating bullshit"
					a.alarm[1]=(3240-other.t)
				}
			}
			*/
		}
	}
}

if t>=3200 and t<=3240 {
	with(objCustomBullet) {
		if tag=="atk 6 accelerating bullshit spawner" {
			dir_inc=lerp(dir_inc,1,0.15)
		}
	}
	
}

/*
if t==3160 || t==3168 || t==3176 || t==3184 || t==3194 || t==3204 {
	
}
*/

//3160,3168,3176,3184,3204,3220,

if t==3240 || t==3260 || t==3275 || t==3295 {
	
	with(objCustomBullet) {
		
		if tag=="atk 6 wobbling circles" {
			
			t=0;
			//cx=scrPX()
			//cy=scrPY()
			
			dir=point_direction(cx,cy,x,y)
			dir_inc=random_range(1,2)*choose(-1,1)
			len=point_distance(cx,cy,x,y)
			free_variable[0]=point_distance(cx,cy,x,y)
			free_variable[1]=clamp(free_variable[0]+random_range(32,64),150,250+random_range(-48,48))
			//free_variable[2]=random_range(1,2.5)
			//free_variable[3]=15+5*(other.t!=3260)
		}
		
		if tag=="atk 6 six spawners" || tag=="atk 6 six spawners circles" || tag=="atk 6 impossible pattern"
		|| tag=="atk 6 impossible pattern 2" || tag=="atk 6 accelerating bullshit" || tag=="atk 6 accelerating bullshit spawner" {
			tag="atk 6 wobbling circles"
			b_trig=true
			cx=400//scrPX()
			cy=304//scrPY()
			t=0;
			dir=point_direction(cx,cy,x,y)
			dir_inc=random_range(1,2)*choose(-1,1)
			free_variable[0]=point_distance(cx,cy,x,y)
			free_variable[1]=clamp(free_variable[0]+random_range(32,64),150,250+random_range(-48,48))
			//free_variable[2]=random_range(1,2.5)
			drop_shadow=false
			draw=true
			depth=-200
			killer=false;
			alarm[1]=40
			//alarm[1]=20
		}
	}
	
}

if t==3240 {
	a=instance_create_depth(0,0,-500,objLiarDanceAtk6SmallTransitionSurface)
	a.target_tag="atk 6 transition 1"
	a.teto_side=-1
	
	/*
	for (dist=transition_circle_radius; dist<transition_circle_radius+80*5; dist+=80) {
		for (angle=0; angle<360; angle+=8) {
			a=instance_create(400+lengthdir_x(dist,angle),304+lengthdir_y(dist,angle),objDecoCustomObject)
			a.tag="atk 6 transition 1"
			a.image_xscale=lerp(1,2,(dist-transition_circle_radius)/320)
			a.image_yscale=a.image_xscale
			a.image_alpha=0
		}
	}
	*/
	
	with(objCustomBullet) {
		if sprite_index==sprLiarDanceAtk6CherryLine
			killer=false;
	}
	
	
	color_offset=random(255)
	_dir_inc=-2.5
	for (dist=-400; dist<500; dist+=20) {
		a=instance_create(400+lengthdir_x(dist*1.2,spiral_angle+abs(dist)/8),304+lengthdir_y(dist*1.2,spiral_angle+abs(dist)/8),objLiarDanceAtk6Bullet)
		a.killer=false;
		a.sprite_index=sprMayuCherry;
		a.image_blend=make_colour_hsv(abs(dist)/2+color_offset,255,255);
		a.image_xscale=lerp(1,2.5,abs(dist)/500)+random_range(-0.2,0.2);
		a.image_yscale=a.image_xscale;
		a.image_angle=random(360)
		a.image_alpha=0.
		a.b_trig=true;
		a.cx=400;
		a.cy=304;
		a.dir=spiral_angle+abs(dist)/8;
		a.len=dist;
		a.dir_inc=_dir_inc;
		a.tag="atk 6 fancy spiral"
		a.persist=true
		a.drop_shadow=false
		a.draw=false;
	}
	/*
	repeat(40) {
		a = instance_create(random(800),random(608),objLiarDanceAtk6Bullet);
		a.killer=false;
		a.sprite_index=sprMayuCherry;
		a.image_blend=make_colour_hsv(random(255),255,255);
		a.image_xscale=random_range(0.8,1.5)
		a.image_yscale=a.image_xscale;
		//a.image_angle=random(360)
		a.image_alpha=0.
		a.direction=random(360)
		a.speed=4
		a.persist=true
		a.drop_shadow=false
		a.draw=false;
		a.tag="atk 6 not so fansy screenwraps"
	}
	 */
	repeat(45) {
		a=instance_create(random(800),random(608),objLiarDanceAtk6FakeGlow)
		a.image_blend=make_colour_hsv(random(255),255,255)
		a.image_xscale=0//random_range(0.05,0.35)
		a.image_yscale=a.image_xscale;
		a.image_alpha=0.25
		a.direction=random(360)
		a.speed=random_range(0.5,1);
		a.gravity_direction=a.direction;
		a.gravity=0.05
		a.image_angle=a.direction;
	}
}

//t==3240 || t==3260 || t==3275
if t>=3240 and t<=3255 {
	
	
	v=EaseOutExpo(t-3240,0,48,15)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	
	camera_set_view_angle(view_camera[0],EaseOutBack(t-3240,0,-3,15))
	
	with(objLiarDanceAtk6SmallTransitionSurface) {
		if target_tag == "atk 6 transition 1" {
			x2[0]=EaseOutCubic(other.t-3240,0,800,15)
			x2[1]=EaseOutCubic(other.t-3240,800,0,15)
		}
	}
	
	with(objCustomBullet) {
		if 	tag=="atk 6 transition 1" {
			len=lerp(len,free_variable[0],0.1)
		}
	}
	
}

if t==3255 {
	
	a=instance_create_depth(0,0,-600,objLiarDanceAtk6SmallTransitionSurface)
	a.target_tag="atk 6 transition 2"
	//a.teto_side=-1
	a.draw_start_index=2
}

if t>=3255 and t<=3270 {
	
	v=EaseOutExpo(t-3255,48,96,15)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	camera_set_view_angle(view_camera[0],EaseOutBack(t-3255,-3,5,15))
	
	with(objLiarDanceAtk6SmallTransitionSurface) {
		
		if target_tag == "atk 6 transition 2" {
			y2[2]=EaseOutCubic(other.t-3255,0,608,15)
			y2[3]=EaseOutCubic(other.t-3255,608,0,15)
		}
	}
}

if t==3275 {
	instance_create_depth(0,0,-900,objLiarDanceAtk6PrimitiveTransition)	
}

if t>=3267 and t<=3330 {
	v=EaseOutExpo(t-3267,96,EaseInCubic(t-3267,192,-96,63),63)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	camera_set_view_angle(view_camera[0],-dsin(EaseInOutSine(t-3275,90,360,63))*3)
	
	with(objCustomBullet) {
		if tag=="atk 6 watch out your steps" {
			if t<35 {
				image_alpha=lerp(image_alpha,0.3,0.1)	
			}
			if t==35 {
				killer=true
				image_alpha=1
				direction=point_direction(scrPX(),scrPY(),x,y)
				speed=random_range(4,10)
				gravity_direction=direction+180+random_range(20,45)*choose(-1,1)
				gravity=random_range(0.2,0.45)
				
				tag="atk 6 fade out"
			}
		}
	}
	with(objLiarDanceAtk6FakeGlow) {
		image_xscale=lerp(image_xscale,0.5,0.05)
		image_yscale=image_xscale//lerp(image_yscale,1,0.05)
	}
}

if t==3310 {
	instance_destroy(objLiarDanceAtk6SmallTransitionSurface)
	with(objCustomBullet) {
		if tag=="atk 6 wobbling circles" {
			killer=false;
			b_trig=false;
			persist=false;
			speed=random_range(8,16)
			direction=random(360)
			tag="atk 6 wobbling fade out"
		}
	}
	offset=irandom(12)
	with(objLiarDanceAtk6Bullet) {
		if tag=="atk 6 fancy spiral" {
			a=instance_create(x,y,objCustomBullet)
			a.b_trig=true;
			a.cx=cx;
			a.cy=cy;
			a.dir=dir;
			a.len=len;
			a.dir_inc=dir_inc
			a.sprite_index=sprCustomRegularCherry;
			a.image_index=abs(len)/20+other.offset
			//a.image_blend=merge_colour(c_white,c_black,1-abs(len)/400)
			a.image_xscale=image_xscale;
			a.image_yscale=a.image_xscale;
			a.image_angle=image_angle;
			a.tag=tag;
			a.persist=persist;
			a.killer=false
			alarm[1]=22;
			
		}
		if tag=="atk 6 not so fansy screenwraps" {
			a = instance_create(x,y,objCustomBullet)
			a.sprite_index=sprCustomRegularCherry;
			a.image_index=irandom(12)
			a.image_xscale=image_xscale;
			a.image_yscale=a.image_xscale;
			a.direction=direction;
			a.speed=speed;
			a.tag=tag
			a.killer=false;
			a.persist=true;
			alarm[1]=22;
			
		}
	}
}


if t>=3310 and t<=3410 {
	with(objCustomBullet) {
		if tag=="atk 6 fancy spiral" {
			//dir_inc=EaseOutSine(other.t-3310,-4,-1,110)	
		}
		if tag=="atk 6 expanding circles" || tag=="atk 6 expandingn't circles" {
			//if tag=="atk 6 expanding circles"
				len_inc=lerp(len_inc,0,0.1)
			image_xscale=clamp(len/200,1,3)
			image_yscale=image_xscale
			if other.t==3420
				len_inc=0
			if len<=0 and tag=="atk 6 expandingn't circles" {
				tag="atk 6 circle fade out"	
				killer=false;
				b_trig=false;
				direction=random(360)
				speed=random_range(0.4,1)
			}
		}
	}
	
	if t<3420 {
		if t mod 20 == 0 {
			with(objCustomBullet) {
				if tag=="atk 6 expanding circles" {
					len_inc=other.expanding_circles_speed
					free_variable[2]++
				}
				
				if tag=="atk 6 expandingn't circles" {
					len_inc=-random_range(13.5,15)		//other.expanding_circles_speed
					
				}
			}
			offset=t * 180 / 20 + expanding_circles_offset
			for (angle=0; angle<360; angle+=8) {
				a=instance_create_depth(400,304,100,objCustomBullet)
				a.killer=false;
				a.image_alpha=0.1
				a.image_blend=c_black
				a.drop_shadow=false;
				a.draw=true
				a.b_trig=true;
				a.cx=400
				a.cy=304;
				a.dir=angle//+offset;
				a.len_inc=expanding_circles_speed
				a.free_variable[0]=offset
				a.free_variable[1]=(angle < 180)
				a.free_variable[2]=0
				a.free_variable[3]=sign(t mod 40)
				//a.free_variable[1]=3
				a.tag="atk 6 expanding circles"
				
			}
			
			
			for (angle=0; angle<360; angle+=60) {
				
				a=instance_create_depth(400,304,100,objCustomBullet)
				//a.killer=false;
				a.sprite_index=sprCustomRegularCherry
				a.image_index=offset;
				a.image_angle=random(360)
				a.drop_shadow=false;
				a.draw=true
				a.b_trig=true;
				a.cx=400
				a.cy=304;
				a.dir=t * 36 / 20 + angle + random_range(-10,10);
				a.len=400+irandom(16)
				a.len_inc=-10		//expanding_circles_speed
				a.persist=true
				//a.free_variable[1]=3
				a.tag="atk 6 expandingn't circles"	
			}
		}
	}
}

if t>=3312 and t<=3332 {
	with(objLiarDanceAtk6PrimitiveTransition) {
		inner_radius=EaseOutSine(other.t-3312,-1,outer_radius,20)
		if other.t==3332
			instance_destroy()
	}
}

if t==3340 {
	with(objCustomBullet) {
		if sprite_index==sprLiarDanceAtk6CherryLine || tag=="atk 6 fancy spiral"
			killer=true
	}
}

if t==3410 {
	with(objCustomBullet) {
		if  tag=="atk 6 expandingn't circles" || tag=="atk 6 fancy spiral" {
			b_trig=false;
			tag="atk 6 wobbling transition"
			free_variable[0]=image_xscale
			t=0
			len=point_distance(scrPX(),scrPY(),x,y)
			direction=point_direction(scrPX(),scrPY(),x,y)+random_range(-10,10)
			speed=random_range(2,30)
			friction=speed/30
			repeat(3) {
				a = instance_create(x,y,objCustomBullet)
				a.sprite_index=sprite_index;
				a.image_xscale=image_xscale;
				a.image_yscale=image_yscale;
				a.image_index=image_index;
				a.image_angle=image_angle;
				a.direction=point_direction(scrPX(),scrPY(),x,y)+random_range(-40,40)
				a.speed=random_range(2,30)
				a.friction=a.speed/30
				a.free_variable[0]=image_xscale
				a.len=len
				a.tag=tag
			}
		}
		if tag=="atk 6 expanding circles" {
			b_trig=false;
			t=0;
			if dir==0
				other.expanding_circles_distance=min(len,other.expanding_circles_distance)
		}
	}
}

if t>=3410 and t<=3440 {
	
	v=EaseOutBack(t-3410,-96,0,30)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	with(objCustomBullet) {
		if tag=="atk 6 wobbling transition" {
			len=clamp(point_distance(scrPX(),scrPY(),x,y),96,400)
			image_xscale=(free_variable[0]+random(EaseOutSine(t,0.5,0,30))*choose(-1,1))*clamp(len/96,0.2,2.5)
			image_yscale=(free_variable[0]+random(EaseOutSine(t,0.5,0,30))*choose(-1,1))*clamp(len/96,0.2,2.5)
			if t==30 {
				persist=false;
				friction=0;
				gravity_direction=point_direction(scrPX(),scrPY(),x,y)+random_range(30,90)
				gravity=0.35
			}
		}
		
		if tag=="atk 6 expanding circles" {
			if t>=20
				image_alpha-=0.01
			//if image_alpha<=0
			//	instance_destroy()
				
		}
		
	}	
}

if t==3440 || t==3485 {
	
	
	order=choose(0,1,2)
	
	_x=400+420*sign(3450-t)
	_y=304;
	pd=280//point_distance(_x,_y,scrPX(),scrPY())-50;
	
	for (dist=0; dist<=pd; dist+=pd/5) {
		mirror=choose(-1,1)
		angle_inc=180-sign(dist)*171
		index=(dist*5/pd+order) mod 3
		
		switch(index) {
			case 0: col=c_black; break;
			case 1: col=make_color_rgb(225,89,109); break
			case 2: col=c_white; break;
		}
		for (angle=0; angle<=180; angle+=angle_inc) {
			a=instance_create_depth(_x,_y,-400,objCustomBullet)
			a.drop_shadow=false;
			//a.killer=false;
			a.draw=true
			a.b_trig=true;
			a.cx=a.x;
			a.cy=a.y;
			a.dir=point_direction(a.x,a.y,400,304) - 90;
			a.len=dist;
			a.deg_y=mirror;
			a.sprite_index=sprWBCherry_2
			a.image_xscale=lerp(2,3.5,dist/pd)
			a.image_yscale=a.image_xscale;
			a.image_blend=col;
			a.free_variable[0]=a.dir;
			a.free_variable[1]=angle*2+180*(wiggly_pies_mirror*sign(3450-t)==1);
			a.persist=true;
			a.tag="atk 6 wiggly pies"
		}
	}
	
	
	
	with(objCustomBullet) {
		if tag=="atk 6 expanding circles" {
			if dir==0 {
				for (add_angle_value=0; add_angle_value<360; add_angle_value+=10) {
					a=instance_create(x,y,objCustomBullet);
					a.sprite_index=sprWBCherry_2;
					a.image_xscale=image_xscale;
					a.image_yscale=image_yscale;
					
					if other.t==3485
						a.image_blend=c_black
					a.killer=false;
					a.persist=true
					a.drop_shadow=false;
					a.draw=true;
					a.b_trig=true;
					a.cx=cx;
					a.cy=cy;
					a.dir=dir//+free_variable[0];
					a.len=point_distance(400,304,x,y)			//-50*sign(other.t-3440)
					a.free_variable[1]=dir+free_variable[0];
					a.free_variable[2]=add_angle_value;
					a.tag="atk 6 expanding circles part"
				}
			}
			else
				instance_destroy()
		}
	}
	
	for (dist=30; dist<90; dist+=30) {
		rand=dist//random(360)
		for (add_angle_value=0; add_angle_value<360; add_angle_value+=10) {
			a=instance_create(0,0,objCustomBullet);
			a.sprite_index=sprWBCherry_2;
			if t==3485
				a.image_blend=c_black
			a.killer=false;
			a.persist=true
			a.drop_shadow=false;
			a.draw=true;
			a.b_trig=true;
			a.cx=400;
			a.cy=304;
			a.dir=rand+90
			a.len=dist+120*(t>3440)
			a.free_variable[1]=rand
			a.free_variable[2]=add_angle_value;
			a.tag="atk 6 expanding circles part"
		}
	}
}


if t==3520  {
	with(objCustomBullet) {
		if tag=="atk 6 expanding circles part" || tag=="atk 6 wiggly pies" {
			b_trig=false;
			direction=point_direction(scrPX(),scrPY(),x,y)
			speed=random_range(4,16)
			persist=false;
		}
		if tag=="atk 6 expanding circles"
			instance_destroy()
			
	}
}

if t==3500 {
	
	rand=flower_angle
	
	for (dist=0; dist<600; dist+=32) {
		for (i=-1; i<2; i+=2) {
			for (angle=0; angle<360; angle+=60) {
				a=instance_create(0,0,objCustomBullet)
				a.len=dist;
				a.dir=random(360)
				a.cx=400+lengthdir_x(dist,rand+angle+dist*i/8)
				a.cy=304+lengthdir_y(dist,rand+angle+dist*i/8)
				a.dir=random(360)
				a.len=random_range(32,88)
				a.x=a.cx
				a.y=a.cy
				a.sprite_index=sprWBCherry;
				a.image_alpha=0.;
				a.image_blend=c_black;
				a.image_xscale=lerp(1,4,dist/800);
				a.image_yscale=a.image_xscale;
				a.killer=false;
				a.tag="atk 6 indicating flower"
			}
		}
	}	
}

if t>=3500 and t<=3570 {
	if t>=3520 {
		v=EaseOutBack(t-3520,0,-96,50)
		set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	
		with(objLiarDanceAtk6Teto) {
			image_alpha=lerp(image_alpha,0.05,0.15)	
		}
	}
	
	with(objCustomBullet) {
		if tag=="atk 6 indicating flower" {
			len=clamp(len-2,4,96)
			x=cx+lengthdir_x(len,dir)
			y=cy+lengthdir_y(len,dir)
			if len<16
				image_alpha=lerp(image_alpha,0.075,0.2)
		}
	}
}

if t==3570 {
	with(objShadowDrawer) {
		draw_player=false;
	}
	a=instance_create_depth(0,0,-1300,objLiarDanceAtk6Transition)
	a.r[0]=0;
	a.r[1]=0;
	a.r[2]=0;
	a.r[3]=1000;
	a.teto_index=objLiarDanceAtk6Teto.image_index
	a.teto_scale=objLiarDanceAtk6Teto.image_xscale
}

if t>=3560 and t<=3590 {
	
	repeat(2) {
		for (i=-1; i<2; i+=2) {
			for (angle=0; angle<360; angle+=60) {
				a=instance_create(0,0,objLiarDanceAtk6Bullet)
				a.killer=false;
				a.cx=400;
				a.cy=304;
				a.dir=angle + flower_angle;
				a.len_inc=irandom_range(20,60)
				a.sprite_index=sprWBCherry;
				a.image_alpha=0.;
				a.image_blend=c_black;
				a.image_xscale=1
				a.image_yscale=a.image_xscale;
				a.free_variable[0]=flower_angle;
				a.free_variable[1]=angle;
				a.free_variable[2]=i
				a.tag="atk 6 flower"
			
			}
		}
	}
	
}

if t>=3570 and t<=3595 {
	with(objLiarDanceAtk6Transition) {
		surf_r=EaseOutQuint(other.t-3570,0,800,20)
	}
	with(objLiarDanceAtk6Bullet) {
		if tag=="atk 6 flower" {
			image_xscale=lerp(1,5,len/500);
			image_yscale=image_xscale;
			dir = free_variable[0] + free_variable[1] + len*free_variable[2]/8
			x=cx+lengthdir_x(len,dir)+random_range(-3,3)
			y=cy+lengthdir_y(len,dir)+random_range(-3,3)
			image_xscale+=random_range(-0.3,0.1)*lerp(1,4,len/800)
			image_yscale=image_xscale
		}
	}
}

if t==3240-34 {
	with(objLiarDanceAtk6Teto) {
		//alarm[0]=1
		alarm_density=18
	}
}

if t==3298 {
	
	with(objLiarDanceAtk6Teto) {
		alarm_density=35
	}
}







if t==3590 {
	instance_destroy(objLiarDanceAtk6Bullet)
	instance_destroy(objCustomBullet)
	instance_destroy(objLiarDanceAtk6Transition)
	instance_destroy(objLiarDanceAtk6Teto)
	
	with(objLiarDanceAtk6FakeGlow) {
		gravity=0;
		speed=3;
		image_alpha=0.2
	}
	
	a=instance_create_depth(0,0,150,objLiarDanceAtk6PrimitiveTransition)
	a.t=36;
	a.image_alpha=0.65
	a.layer_amount=1
	a.inner_radius=0
	a.outer_radius=600;
	a._size=600
	a.draw_background=false
	a.color=c_red
	
	v=32
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	for (xx=-250; xx<=250; xx+=250) {
		a=instance_create_depth(400+xx,304,200,objLiarDanceAtk6Teto)
		a.image_alpha=0.1
		a.image_xscale=teto_side
		a.t=random(360)
		a.alarm_density=28
		a.alarm[0]=-1
	}
	
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 6 another flashbang"
	
	instance_destroy(objPlayer)

	instance_create_layer(400,304,"Player",objPlayer)
	
	_x=400+400*second_part_side
	scaler=1;
	
	for (yy=0; yy<608; yy+=21*scaler) {
		
		ind=(second_part_line_stand_out + (yy/21*scaler)) mod 2
		
		a=instance_create(_x,yy,objCustomBullet)
		a.sprite_index=sprLiarDanceAtk6MayuLine		//sprLiarDanceAtk6CherryLine
		a.image_xscale=scaler;
		a.image_yscale=a.image_xscale;
		a.image_angle=90*second_part_side;
		//a.image_blend=c_black;
		a.image_alpha=0.1;
		a.killer=false;
		a.cx=_x
		a.free_variable[0]=350+dsin(second_part_line_angle+yy*30/21)*50
						   -random_range(200,250)*ind
		a.free_variable[1]=second_part_side
		a.free_variable[2]=180
		a.tag="atk 6 second part first lines"
		a.persist=true
		a.t=-(yy/21*scaler)/2
	}
	
	rand=irandom(12)
	rand_y=liar_wall_y
	for (yy=0; yy<608; yy+=128) {
		a=instance_create(_x,yy+rand_y,objCustomBullet)
		a.sprite_index=sprLeeheCherry;
		a.image_index=rand+(yy/128)
		a.image_xscale=2.4;
		a.image_yscale=a.image_xscale;
		a.direction=point_direction(a.x,a.y,400,a.y)
		a.speed=random_range(5,10)
		a.friction=a.speed/25;
		a.tag="atk 6 second part wall"
		a.persist=true
	}
	
	//Setting up the grid a bit earlier so fps doesnt drop due to big instances clusters
	_x=liar_grid_x
	_y=liar_grid_y
	rand=liar_grid_angle

	for (xx=0; xx<=800; xx+=126) {
		for (yy=-96; yy<704; yy+=21) {
			angle=point_direction(400,304,xx,yy)
			dist=point_distance(400,304,xx,yy)
			a=instance_create(0,0,objCustomBullet)
			a.cx=_x+lengthdir_x(dist,angle+rand);
			a.cy=_y+lengthdir_y(dist,angle+rand)
			a.x=a.cx
			a.y=a.cy
			a.image_alpha=0.
			//a.image_blend=c_black;
			a.image_xscale=lerp(0.5,4,dist/800)
			a.image_yscale=a.image_xscale
			a.killer=false;
			a.t=-(a.cx/800)*((a.cy+96)/800)*50
			a.tag="atk 6 grid"
			a.persist=true
		}
	}
	
}

if t>=3590 and t<=3640 {
	
	v=EaseOutSine(t-3590,32,64,50)
	set_camera(v+EaseOutCubic(t-3590,0,32*second_part_side,50),v/1.3,800-v*2,608-v*2/1.3,0)
	camera_set_view_angle(view_camera[0],EaseOutCubic(t-3590,0,-4,50)*second_part_side)
	
	with(objDarkness) {
		if tag=="atk 6 another flashbang" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
}

if t==3630 {
	
	_x=400-400*second_part_side
	scaler=1;
	
	for (yy=0; yy<608; yy+=21*scaler) {
		
		ind=(second_part_line_stand_out + (yy/21*scaler)) mod 2
		
		a=instance_create(_x,yy,objCustomBullet)
		a.sprite_index=	sprLiarDanceAtk6MayuLine		//sprLiarDanceAtk6CherryLine
		a.image_xscale=scaler;
		a.image_yscale=a.image_xscale;
		a.image_angle=-90*second_part_side;
		//a.image_blend=c_black;
		a.image_alpha=0.1;
		a.killer=false;
		a.cx=_x
		a.free_variable[0]=350+dsin(second_part_line_angle+yy*30/21+180)*50
						   -random_range(200,250)*ind
		a.free_variable[1]=-second_part_side
		a.free_variable[2]=0
		a.tag="atk 6 second part first lines"
		a.persist=true
		a.t=-(yy/21*scaler)/2
	}
	
	rand=irandom(12)
	rand_y=liar_wall_y+50
	for (yy=0; yy<608; yy+=128) {
		a=instance_create(_x,yy+rand_y,objCustomBullet)
		a.sprite_index=sprLeeheCherry;
		a.image_index=rand+(yy/128)
		a.image_xscale=2.4;
		a.image_yscale=a.image_xscale;
		a.direction=point_direction(a.x,a.y,400,a.y)
		a.speed=random_range(5,10)
		a.friction=a.speed/25;
		a.tag="atk 6 second part wall"
		a.persist=true
	}
	
	//Setting up the grid a bit earlier so fps doesnt drop due to big instances clusters
	_x=liar_grid_x
	_y=liar_grid_y
	rand=liar_grid_angle
	
	for (xx=0; xx<=800; xx+=21) {
		for (yy=-96; yy<704; yy+=126) {
			angle=point_direction(400,304,xx,yy)
			dist=point_distance(400,304,xx,yy)
			a=instance_create(0,0,objCustomBullet)
			a.cx=_x+lengthdir_x(dist,angle+rand);
			a.cy=_y+lengthdir_y(dist,angle+rand)
			a.x=a.cx
			a.y=a.cy
			a.image_alpha=0.
			//a.image_blend=c_black;
			a.image_xscale=lerp(0.5,4,dist/800)
			a.image_yscale=a.image_xscale
			a.killer=false;
			a.tag="atk 6 grid"
			a.persist=true
		}
	}
	
}

if t>=3640 and t<=3690 {
	
	
	v=64
	set_camera(v+32*second_part_side*EaseOutCubic(t-3640,1,-1,50),v/1.3,800-v*2,608-v*2/1.3,0)
	camera_set_view_angle(view_camera[0],EaseOutCubic(t-3640,-4,4,50)*second_part_side)
}

if t==3690 {
	with(objCustomBullet) {
		if tag=="atk 6 second part first lines" {
			image_alpha=1;
			image_blend=c_white;
		}
	}
}

if t>=3690 and t<=3710 {
	
	v=EaseOutBack(t-3690,64,EaseOutCubic(t-3690,128,32,20),20)
	set_camera(v-32*second_part_side*EaseOutCubic(t-3690,1,0,20),v/1.3,800-v*2,608-v*2/1.3,0)
	camera_set_view_angle(view_camera[0],EaseOutBack(t-3690,4*second_part_side,0,20))
}

if t==3730 {
	with(objCustomBullet) {
		if tag=="atk 6 grid"
			t=-(cx/800)*((cy+96)/800)*50
	}
	
}

if t>=3730 and t<=3800 {
	with(objCustomBullet) {
		if tag=="atk 6 grid" {
			if t>=0 and t<30
				image_alpha=lerp(image_alpha,1/22,0.1)
		}
	}
	
	if t mod 5 == 0 {
		_y=304+random_range(-200,200);
		_x=300+irandom(64);
		point_dir_y=irandom(608)
		dir=random(360)		//point_direction(_x,_y,400,point_dir_y)
		index=irandom(12);
		mirror=choose(-1,1)
		for (angle=0; angle<360; angle+=90) {
			for (spd=5; spd<8; spd+=2) {
				a=instance_create_depth(400+_x*mirror,_y,-200,objCustomBullet)
				a.drop_shadow=false;
				a.draw=true;
				a.sprite_index=sprLeeheCherry;
				a.image_index=index;
				a.image_xscale=2.5;
				a.image_yscale=a.image_xscale;
				a.direction=dir+angle		//angle+rand;
				a.speed=spd;
				a.accel=0.1
				a.tag="atk 6 little bursts"
				/*
				a=instance_create_depth(400-_x,_y,-200,objCustomBullet)
				a.drop_shadow=false;
				a.draw=true;
				a.sprite_index=sprLeeheCherry;
				a.image_index=index;
				a.image_xscale=2;
				a.image_yscale=a.image_xscale;
				a.direction=180-dir+angle		//angle+180-rand;
				a.speed=spd;
				a.accel=0.15
				a.tag="atk 6 little bursts"
				*/
			}	
		}
	}
}

if t==3806 || t==3822 || t==3842 || t==3860 {
	liar_circle_radius-=150					//lerp(liar_circle_radius,64,0.35)
	rand_dir_inc=random_range(4,9)
	with(objCustomBullet) {
		if tag=="atk 6 i ran out of ideas for tags" {
			free_variable[0]=lerp(free_variable[0],64,0.45)
			dir_inc=other.rand_dir_inc;
		}
		if tag=="atk 6 second part first lines"
			instance_destroy()
		if tag=="atk 6 little bursts" {
			direction=point_direction(scrPX(),scrPY(),x,y)
			speed=random_range(4,15)
		}
	}
	
	with(objLiarDanceAtk6Teto) {
		image_xscale*=-1	
	}
	
	rand=random(360)
	mirror=choose(-1,1)
	for (angle=0; angle<360; angle+=15) {
		a=instance_create_depth(liar_grid_x+lengthdir_x(500,angle),liar_grid_y+lengthdir_y(500,angle),-400,objCustomBullet)
		a.cx=liar_grid_x
		a.cy=liar_grid_y
		a.dir=angle+rand;
		a.len=500;
		a.free_variable[0]=500;
		a.dir_inc=mirror*rand_dir_inc
		a.sprite_index=sprInvertedLeeheCherry;
		a.image_index=8;
		a.image_xscale=5;
		a.image_yscale=a.image_xscale;
		a.tag="atk 6 i ran out of ideas for tags"
		a.drop_shadow=false;
		a.draw=true
		a.persist=true
	}
}

if t>=3806 and t<=3880 {
	liar_circle_finradius=lerp(liar_circle_finradius,liar_circle_radius,0.2)	
	with(objCustomBullet) {
		if tag=="atk 6 grid" {
			if !killer {
				if point_distance(other.liar_grid_x,other.liar_grid_y,cx,cy)>other.liar_circle_finradius {
					image_blend=c_white;
					image_alpha=1;
					killer=true;
				}
				image_alpha-=0.01
			}
		}
		
		if tag=="atk 6 i ran out of ideas for tags" {
			len=lerp(len,free_variable[0],0.1);
			x=cx+lengthdir_x(len,dir);
			y=cy+lengthdir_y(len,dir);
			dir_inc=lerp(dir_inc,0,0.1);
			image_xscale=lerp(1,8,len/500);
			image_yscale=image_xscale;
		}
	}
}


if t==3875 {
	with(objCustomBullet) {
		if tag=="atk 6 grid" || tag=="atk 6 i ran out of ideas for tags" {
			image_alpha=0.5
			direction=point_direction(scrPX(),scrPY(),x,y)
			speed=random_range(6,18)
			gravity_direction=direction+180+random_range(15,30)*choose(-1,1)
			gravity=0.3
			tag="atk 6 i ran out of ideas for tags 2"
			killer=false;
		}
	}
	
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 6 and another flashbang"
	
	
	
	_y=304+304*second_part_side
	scaler=1;
	
	for (xx=0; xx<800; xx+=21*scaler) {
		
		ind=(second_part_line_stand_out + (xx/21*scaler)) mod 2
		
		a=instance_create(xx,_y,objCustomBullet)
		a.sprite_index=sprLiarDanceAtk6MayuLine
		a.image_xscale=scaler;
		a.image_yscale=a.image_xscale;
		if second_part_side==-1
			a.image_angle=180
		a.image_alpha=0.1;
		a.killer=false;
		a.cy=_y
		a.free_variable[0]=250+dsin(second_part_line_angle+xx*30/21)*50-random_range(80,100)*ind
		a.free_variable[1]=second_part_side
		a.free_variable[2]=180;
		a.tag="atk 6 second part second lines"
		a.persist=true
		a.t=-(xx/21*scaler)/2
	}
	
	rand=irandom(12)
	rand_x=liar_wall_x
	for (xx=0; xx<800; xx+=128) {
		a=instance_create(xx+rand_x,_y,objCustomBullet)
		a.sprite_index=sprLeeheCherry;
		a.image_index=rand+(xx/128)
		a.image_xscale=2.4;
		a.image_yscale=a.image_xscale;
		a.direction=point_direction(a.x,a.y,a.x,304)+random_range(-5,5)
		a.speed=random_range(7,14)
		a.friction=a.speed/25;
		a.tag="atk 6 second part wall"
		a.persist=true
	}
}

if t>=3875 and t<=3900 {
	with(objDarkness) {
		if tag=="atk 6 and another flashbang" {
			image_alpha-=0.02
			if image_alpha<=0
				instance_destroy()
		}
	}
}


if t>=3875 and t<=3690 {
	
	/*
	v=64
	set_camera(v+32*second_part_side*EaseOutCubic(t-3640,1,-1,50),v/1.3,800-v*2,608-v*2/1.3,0)
	camera_set_view_angle(view_camera[0],EaseOutCubic(t-3640,-4,4,50)*second_part_side)
	*/
}

if t==3927 {
	
	_y=304-304*second_part_side
	scaler=1;
	
	for (xx=0; xx<800; xx+=21*scaler) {
		
		ind=(second_part_line_stand_out + (xx/21*scaler)) mod 2
		
		a=instance_create(xx,_y,objCustomBullet)
		a.sprite_index=sprLiarDanceAtk6MayuLine
		a.image_xscale=scaler;
		a.image_yscale=a.image_xscale;
		if -second_part_side==-1
			a.image_angle=180
		a.image_alpha=0.1;
		a.killer=false;
		a.cy=_y
		a.free_variable[0]=250+dsin(second_part_line_angle+xx*30/21+180)*50-random_range(80,100)*ind
		a.free_variable[1]=-second_part_side
		a.free_variable[2]=0;
		a.tag="atk 6 second part second lines"
		a.persist=true
		a.t=-(xx/21*scaler)/2
	}
	
	
	rand=irandom(12)
	rand_x=liar_wall_x+25
	for (xx=0; xx<800; xx+=128) {
		a=instance_create(xx+rand_x,_y,objCustomBullet)
		a.sprite_index=sprLeeheCherry;
		a.image_index=rand+(xx/128)
		a.image_xscale=2.4;
		a.image_yscale=a.image_xscale;
		a.direction=point_direction(a.x,a.y,a.x,304)+random_range(-5,5)
		a.speed=random_range(7,14)
		a.friction=a.speed/25;
		a.tag="atk 6 second part wall"
		a.persist=true
	}
}

if t>=4015 and t<=4050 {
	with(objCustomBullet) {
		if tag=="uso de odoru no sa" {
			image_alpha+=(0.5)/35
		}
	}
	repeat(2) {
		a=instance_create(0,irandom(608),objCustomBullet);
		a.sprite_index=choose(sprMayuCherry,sprLeeheCherry,sprInvertedLeeheCherry,sprCustomRegularCherry,sprWBCherry_2)
		a.image_xscale=random_range(0.5,0.8);
		a.image_yscale=a.image_xscale;
		a.image_angle=random(360)
		a.direction=random_range(-15,15)
		a.speed=random_range(2,8)
		a.accel=0.15;
		a.tag="atk 6 final bs"
		a.persist=true
		
		a=instance_create(800,irandom(608),objCustomBullet);
		a.sprite_index=choose(sprMayuCherry,sprLeeheCherry,sprInvertedLeeheCherry,sprCustomRegularCherry,sprWBCherry_2)
		a.image_xscale=random_range(0.5,0.8);
		a.image_yscale=a.image_xscale;
		a.image_angle=random(360)
		a.direction=180+random_range(-15,15)
		a.speed=random_range(2,8)
		a.accel=0.15;
		a.tag="atk 6 final bs"
		a.persist=true
	}
	
	
	v=EaseOutSine(t-4015,32,0,35)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
}

if t==4050 {
	with(objPlayer) {
		image_alpha=0
		frozen=true
		visible=false;
	}
	with(objLiarDanceAtk6PrimitiveTransition) {
		draw_player=false;	
	}
	with(objCustomBullet) {
		killer=false;	
	}
}

if t==4063 {
	//instance_destroy(objCustomBullet)	
	with(objCustomBullet) {
		if sprite_index!=sprLiarDanceAtk6Usodeodorunosa
			instance_destroy()
	}
}

if t==4075 {
	instance_destroy(objLiarDanceAtk6FakeGlow)	
	instance_destroy(objLiarDanceAtk6Teto)	
}

if t>=4050 {
	
	with(objPlayer) {
		x=400;
		y=304;
		xprevious=400;
		yprevious=304;
	}
}

if t==3619 || t==3645 || t==3675 || t==3695 || t==3730 || t==3768 || t==3875 || t==3900 || t==3925 || t==3953 || t==3978 || t==4014 || t==4050 {
	with(objLiarDanceAtk6Teto) {
		image_xscale*=-1	
	}
}




if t==3590 || t==3645 || t==3875 || t==3927 {
	
	a=instance_create_depth(400,304,149,objCustomBullet)
	a.sprite_index=sprLiarDanceAtk6Liar
	a.image_blend=make_color_rgb(225,89,109)
	a.image_xscale=1.5;
	a.image_yscale=a.image_xscale;
	a.image_alpha=0.5
	a.killer=false;
	a.alarm[1]=20;
	a.drop_shadow=false;
	a.draw=true
}

if (t>=3620 and t<=3632) || (t>=3665 and t<=3677) || (t>=3902 and t<=3914) || (t>=3953 and t<=3965) {
	if t==3620 || t==3665 || t==3902 || t==3953
		text_t=0
	if t mod 3 == 0 {
		
		for (xx=150; xx<800; xx+=300) {
			//236 + 118*0.8325 (=98.235)
			a=instance_create_depth(xx,128+128*text_t,149,objCustomBullet)
			a.sprite_index=sprLiarDanceAtk6Liar
			a.image_xscale=0.75
			a.image_yscale=a.image_xscale;
			a.image_alpha=0.5
			a.killer=false;
			a.alarm[1]=6;
			a.drop_shadow=false;
			a.draw=true
		}
		text_t++;
	}
}

if t==3690 || t==3978 {
	a=instance_create_depth(400,304,149,objCustomBullet)
	a.sprite_index=sprLiarDanceAtk6Dance
	a.image_blend=make_color_rgb(225,89,109)
	a.image_xscale=1.5;
	a.image_yscale=a.image_xscale;
	a.image_alpha=0.5
	a.killer=false;
	a.alarm[1]=10;
	a.drop_shadow=false;
	a.draw=true
	
	for (xx=150; xx<800; xx+=300) {
		//236 + 118*0.8325 (=98.235)
		a=instance_create_depth(xx,128,149,objCustomBullet)
		a.sprite_index=sprLiarDanceAtk6Dance
		a.image_xscale=0.75
		a.image_yscale=a.image_xscale;
		a.image_alpha=0.5
		a.killer=false;
		a.alarm[1]=10;
		a.drop_shadow=false;
		a.draw=true
		a=instance_create_depth(xx,608-128,149,objCustomBullet)
		a.sprite_index=sprLiarDanceAtk6Dance
		a.image_xscale=0.75
		a.image_yscale=a.image_xscale;
		a.image_alpha=0.5
		a.killer=false;
		a.alarm[1]=10;
		a.drop_shadow=false;
		a.draw=true
	}
}

if t==4015 {
	a=instance_create_depth(400,304,129,objCustomBullet)
	a.sprite_index=sprLiarDanceAtk6Usodeodorunosa
	a.image_xscale=7/8;
	a.image_yscale=a.image_xscale;
	a.image_alpha=0.//5
	a.killer=false;
	a.drop_shadow=false;
	a.draw=true;
	a.persist=true
	a.tag="uso de odoru no sa"
}

if t==4063 || t==4075 {
	with(objCustomBullet) {
		if tag=="uso de odoru no sa" {
			image_alpha+=0.25	
			image_xscale+=0.045;
			image_yscale+=0.045;
		}
	}
}

if t==4102 {
	with(objCustomBullet) {
		if tag=="uso de odoru no sa" {
			direction=270;
			speed=120;
		}
	}
	
}

if t>=4102 and t<=4140 {
	with(objCustomBullet) {
		if tag=="uso de odoru no sa trail"
			instance_destroy()
		if tag=="uso de odoru no sa" {
			y=modwrap(y,-100,708)
			yy_max=EaseOutSine(other.t-4102,50,250,38)
			image_alpha=EaseOutSine(other.t-4102,1,0.35,38)
			for (yy=0; yy<yy_max; yy+=yy_max/6) {
				a=instance_create_depth(x,modwrap(y-yy,-200,1000),129,objCustomBullet)
				a.sprite_index=sprLiarDanceAtk6Usodeodorunosa
				a.image_xscale=image_xscale;
				a.image_yscale=a.image_xscale;
				a.image_alpha=image_alpha
				a.killer=false;
				a.drop_shadow=false;
				a.draw=true;
				a.persist=true
				a.direction=direction;
				a.speed=speed;
				a.tag="uso de odoru no sa trail"	
			}
		}
	}
}

if t==4140 {
	a=instance_create_depth(0,0,-500,objDarkness)
	a.image_blend=c_black;
	instance_destroy(objLiarDanceAtk6PrimitiveTransition)
}

with(objCustomBullet) {
	if tag=="atk 6 start transition" {
		x=400+lengthdir_x(len,dir)
		y=304+lengthdir_y(len,dir)
			
		image_angle=dir+90
	}
	if tag=="atk 6 impossible pattern" || tag=="atk 6 impossible pattern 2" {
		image_xscale=lerp(image_xscale,1,0.1);
		image_yscale=image_xscale;
		if t==10
			persist=false
			
	}
	
	/*
	if tag=="atk 6 accelerating bullshit"  {
		image_xscale=clamp(point_distance(scrPX(),scrPY(),x,y)/130,1.25,3)
		image_yscale=image_xscale;
		if t==10
			persist=false	
	}
	*/
	
	if tag=="atk 6 trail" {
		image_xscale=lerp(image_xscale,0,0.1);
		image_yscale=image_xscale;
		image_alpha-=0.05
		if image_alpha<=0
			instance_destroy()
	}
	
	if tag=="atk 6 start transition" {
		if (other.t>=3076 and other.t<=3136) || (other.t>=3160 and other.t<=3410) {
			_len = 0
			_len += dsin(dir*1.72*4 + t*1.121*3)*110.0;
			_len += dsin(dir*2.221*4 + t*0.437*3)*130.0;
			_len += dsin(dir*3.1122*4 + t*4.269*3)*81;
			//_len += dsin(t*15) * (-50)
			
			len=lerp(len,free_variable[2]+_len*dsin(t*8),0.1)
			if other.t=3136
				t=0
		}
		if other.t>=3136 and other.t<=3160 {
			len=lerp(len,free_variable[2]+dsin(t*180/24)*free_variable[1]*2,0.2)
		}
		if other.t>=3410 and t<=3440 {
			len=lerp(len,free_variable[2]-64,0.14)	
		}
		if other.t==3310 {
			free_variable[2]+=96
		}
		
		if other.t==3520 {
			//dir_inc=0;
			len_inc=random_range(6,12)
		}
		
		
		/*
		if other.t==3440 {
			len_inc=random_range(2,5);
			persist=false;
		}
		*/
		//if other.t==3136
			//dir_inc=0
	}
	
	if tag=="atk 6 fade out" {
		image_alpha-=0.05
		image_xscale+=0.05
		image_yscale=image_xscale;
		if image_alpha<0
			instance_destroy()
	}
	if tag=="atk 6 wobbling circles" {
		
		if free_variable[0]<free_variable[1]
			len=EaseOutBack(t,free_variable[0],free_variable[1],18)
		else
			len=EaseInBack(t,free_variable[0],free_variable[1],18)
			
		if other.t>=3275
			image_alpha=lerp(image_alpha,0.75,0.15)
		//image_xscale=lerp(image_xscale,free_variable[2],0.15)
		//image_yscale=image_xscale
	}
	
	if tag=="atk 6 wobbling fade out" {
		image_alpha-=0.04
		image_xscale+=0.075
		image_yscale=image_xscale
		if image_alpha<0
			instance_destroy()
	}
	
	if tag=="atk 6 not so fansy screenwraps" {
		x=modwrap(x,0,800)
		y=modwrap(y,0,608)
	}
	
	if tag=="atk 6 circle fade out"	 {
		image_alpha-=0.05
		if image_alpha<=0
			instance_destroy()
	}	
	
	if tag=="atk 6 expanding circles part" {
		
		if t==2
			killer=true
		if other.t<3475 {
			dir=free_variable[1]+EaseInCubic(t,EaseOutExpo(t,0,free_variable[2],27),360,27)
			free_variable[1]+=EaseOutSine(t,5,1,27)
			if t==27
				instance_destroy()
		}
		else {
			dir=free_variable[1]+EaseInCubic(t,EaseOutExpo(t,0,free_variable[2],35),free_variable[2]*3/4,35)
			free_variable[1]+=EaseOutSine(t,5,1,35)
		}
	}
	
	if tag=="atk 6 wiggly pies" {
		if t<=35 {
			dir=EaseOutQuint(t,free_variable[0]+15,EaseInExpo(t,free_variable[1]-90,free_variable[0]+195,35),35)
			
			if t==35
				instance_destroy()
		}
	}
	
	if tag=="atk 6 second part first lines" {
		if other.t<=3690 {
			if t>=0 and t<=25
				x=cx-EaseOutQuart(t,0,free_variable[0],25)*free_variable[1]
				
			if t>=25 and t<=35 {
				//image_blend=merge_colour(c_black,c_white,(t-25)/10)
				image_alpha=EaseOutSine(t-25,0.1,0.75,10)
				if t==35
					killer=true
			}
			
			if t>=25 and t<=50
				x=cx-EaseInSine(t-25,free_variable[0],0,25)*free_variable[1]
		}
		if other.t>=3690 {
			image_blend=make_color_hsv((y+t*7)mod 255,EaseOutSine(other.t-3690,0,160,116),255)	
		}
		if other.t>=3690 and other.t<=3710 {
			//350+dsin(second_part_line_angle+yy*30/21)*50
			x=cx-EaseOutBack(other.t-3690,
							0,
							250+dsin(y+other.second_part_line_angle+free_variable[2])*EaseInBack(other.t-3690,110,0,20),
							20)
				*free_variable[1]
		}
		if other.t>=3730 and other.t<=3806 {
			x=cx-(250-EaseInOutSine(other.t-3730,0,300,76)+dsin(y*1.5+other.second_part_line_angle+free_variable[2]+t*8)*EaseOutSine(other.t-3730,0,50,76))*free_variable[1]
		}
		if other.t==3806
			instance_destroy()
	}
	
	if tag=="atk 6 second part second lines" {
		if other.t<3978 {
			/*
			a.cy=_y
			a.free_variable[0]=250+dsin(second_part_line_angle+xx*30/21)*50-random_range(150,190)*ind
			a.free_variable[1]=second_part_side
			a.free_variable[2]=180;
			*/
			if t>=0 and t<=25
				y=cy-EaseOutQuart(t,0,free_variable[0],25)*free_variable[1]
			
			
			if t>=25 and t<=35 {
				//image_blend=merge_colour(c_black,c_white,(t-25)/10)
				image_alpha=EaseOutSine(t-25,0.1,0.75,10)
				if t==35
					killer=true
			}
			
			if t>=25 and t<=50
				y=cy-EaseOutQuart(t-25,free_variable[0],0,25)*free_variable[1]
		}
		if other.t>=3978 and other.t<=3998 {
			/*
			
			x=cx-EaseOutBack(other.t-3690,
							0,
							250+dsin(y+other.second_part_line_angle+free_variable[2])*EaseInBack(other.t-3690,110,0,20),
							20)
				*free_variable[1]
			*/
			y = cy - EaseOutBack(other.t-3978, 0, 180 + dsin(x+other.second_part_line_angle+free_variable[2])*EaseInBack(other.t-3978,110,0,20),20)
					*free_variable[1]
		}
		if other.t==4015 {
			gravity_direction=point_direction(x,304,x,y)
			gravity=random_range(0.05,0.25)
		}
	}
	
	if tag=="atk 6 second part wall" {
		if t==25 {
			friction=0;
			persist=false;
			accel=random_range(0.25,0.7)
		}
		if t>=25 {
			a=instance_create(x,y,objDecoCustomObject)
			a.sprite_index=sprite_index;
			a.image_index=image_index;
			a.image_xscale=2;
			a.image_yscale=a.image_xscale
			a.direction=direction+180+random_range(-15,15)
			a.speed=2
			a.tag=tag
		}
	}
	if tag=="atk 6 little bursts" {
		image_xscale=lerp(image_xscale,1,0.1);
		image_yscale=image_xscale;
	}
	if tag=="atk 6 i ran out of ideas for tags 2" {
		image_alpha-=0.05
			if image_alpha<=0
				instance_destroy()
	}
}

with(objDecoCustomObject) {
	if tag=="atk 6 second part wall" {
		image_xscale-=0.1
		image_yscale=image_xscale
		if image_xscale<=0
			instance_destroy()
	}
}

with(objLiarDanceAtk6R2DBullet) {
	if tag=="atk 6 prima circles fade out" {
		image_alpha-=0.05
		image_xscale+=0.05
		image_yscale=image_xscale;
		if image_alpha<0
			instance_destroy()
	}
}