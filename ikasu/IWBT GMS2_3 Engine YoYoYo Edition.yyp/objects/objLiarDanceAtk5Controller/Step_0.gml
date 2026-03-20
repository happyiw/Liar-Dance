if instance_exists(objPlayer) {
    t++
	with(objPlayer) {
		djump=1
	}
	x=scrPX()
	y=scrPY()
}

else {
	global.edgeDeath=true
	instance_destroy()	
}

if t==2394 {
	with(objLiarDanceScreenBreakEffect) {        
		move=1;
        x_offset=0;
        y_offset=0;
        spd_inc_min = 0.35;
        spd_inc_max = 0.5;
        alpha=1;
		enable_surfacecopy=0;
		draw_bg=0;
		
		//squares_list_limit=1
	    for(i = 0; i < 25; i ++){
	        for(ii = 0; ii < 19; ii ++){
				rotate_spr[i,ii]=random_range(1,6)*choose(-1,1)
				scale_dec[i,ii]=random_range(-0.1,0.1)
			}
		}
	}
	instance_destroy(objLiarDanceAtk4Road)
	instance_destroy(objLiarDanceAtk4RoadSign)
	instance_destroy(objCustomBullet)
	instance_destroy(objBlock)
	with(objPlayer) {
		image_alpha=1;
		x=400;
		xprevious=400;
		y=460;
		yprevious=460;
	}
	
	a = instance_create_layer(400,304,"Background_cherries",objLiarDanceAtk5KaijuBG)
	//a.sprite_index=sprLiarDanceAtk5KaijuBG
	a.image_xscale=1.25;
	a.image_yscale=a.image_xscale
	a.image_blend=c_black
	
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.8
	a.tag="atk 5 starts with immediate flashbang"
	
	a=instance_create_depth(400,304,-75,objLiarDanceSpotlight)
	a.image_blend=c_black
	a.image_xscale=1.35;
	a.image_yscale=a.image_xscale;
	a.image_alpha=0.5
	
	rand_blend=random(255)
	for (spd=2; spd<21; spd+=2) {
		ang_inc=45//-5*(spd>2)
		rand=270+(ang_inc/2)+(spd-2)*7*spiral_mirror-23*spiral_mirror			//270+random_range(-5,5)+(ang_inc/2)+random(360)*(spd<=4)
		blend=make_color_hsv((spd*14+rand_blend) mod 255,62+(spd-2)*10.7,255)
		for (angle=rand; angle<rand+360; angle+=(ang_inc)/3) {
			a=instance_create(400,304,objCustomBullet)
			//a.sprite_index=sprLeeheCherry;
			//a.image_index=(spd div 3)+rand;
			a.sprite_index=sprMayuCherry;
			a.image_blend=blend						//make_color_hsv((spd*11+rand_blend) mod 255,62+lerp(0,193,((angle-unnecessary_indicator) mod 360)/360),255)
			a.image_xscale=lerp(0.75,1.6,(spd-2)/18)
			a.image_yscale=a.image_xscale
			//a.image_alpha=1-0.8*sign((angle-rand) mod ang_inc*3)
			a.image_alpha=0.2
			a.draw=true;
			a.direction=angle;
			a.speed=spd;
			a.tag="atk 5 circles jumpscare"
			a.persist=true
			a.free_variable[0]=random_range(130,200)
			a.free_variable[1]=1-0.8*sign((angle-rand) mod ang_inc*3)
			a.killer=false
			//a.killer=(a.image_alpha==1)
		}
	}
}
if t>=2394 and t<=2454 {
	v=EaseOutQuart(t-2394,128,EaseInCubic(t-2394,-96,32,60),60)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	with(objLiarDanceScreenBreakEffect) {   
		alpha=EaseOutQuint(clamp(other.t-2394,0,25),1,0.1,25)
		
	    for(i = 0; i < 25; i ++){
	        for(ii = 0; ii < 19; ii ++){
				spd[i, ii] = lerp(spd[i, ii], 1, 0.05)
				rotate_spr[i,ii] = lerp(rotate_spr[i,ii], 0, 0.05)
				scale_dec[i,ii] = lerp(scale_dec[i,ii], 0, 0.05)
				spd_inc[i,ii] = lerp(spd_inc[i,ii], 0, 0.05)
			}
		}
		if other.t==2454
			instance_destroy()
	}
	with(objDarkness) {
		if tag=="atk 5 starts with immediate flashbang" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
	
	with(objCustomBullet) {
		if tag=="atk 5 circles jumpscare" {
			if other.t<=2419
				image_alpha=EaseOutQuart(other.t-2394,0.2,free_variable[1],25)
			if other.t==2419
				killer=(image_alpha==1)
			if other.t>=2434 
				image_alpha=clamp(image_alpha+0.035,0,1)
		}
	}
}

if t>=2454 and t<=2464 {
	
	v=EaseOutQuart(t-2454,32,96,10)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	with(objCustomBullet) {
		if tag=="atk 5 circles jumpscare" {
			if other.t==2454 {
				b_trig=true;
				cx=400;
				cy=304;
				dir=direction;
				dir_inc=random_range(-20,20)
				len=speed*t;
				t=0;
			}
			len=lerp(len,free_variable[0],0.1)
			dir_inc=lerp(dir_inc,0,0.2)
			image_alpha=clamp(image_alpha+0.04,0,1)
			if image_alpha==1 and killer=false
				killer=true
		}
	}
}

if t==2464 {
	with(objCustomBullet) {
		if tag=="atk 5 circles jumpscare" {
			b_trig=false;
			direction=dir+180+random_range(60,300)
			speed=random_range(3,7)
			gravity_direction=dir
			gravity=0.25
			free_variable[0]=random_range(1,2)
			persist=false;
		}
	}
	
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 5 starts with immediate flashbang 2"
	
	dirinc=8//random_range(3,10)*choose(-1,1)
	for (ang=90; ang<450; ang+=72) {
		i = ((ang - 90) / 72);
		val = abs(i - 2) - (i > 2 ? 1 : 0);
		a = instance_create_depth(400,304,-150,objCustomBullet);
		a.b_trig=true;
		a.cx=400;
		a.cy=304;
		a.dir=ang;
		a.draw=true
		a.sprite_index=sprMayuCherry;
		a.image_blend=c_yellow;
		a.image_xscale=2;
		a.image_yscale=a.image_xscale;
		a.image_alpha=0//.15;
		a.killer=false;
		a.tag="atk 5 star spawner"
		a.free_variable[0]=2-val;
		a.free_variable[1]=dirinc;
		a.free_variable[2]=500
		a.persist=true
	}
	
}

if t==2460 {
	
	rand_blend=random(255)
	
	for (i=0; i<=15; i++) {
		func_result=lerp(96,-96,i/15)			//EaseOutQuart(i,96,-96,15)
		xx[0]=func_result;			yy[0]=func_result/1.3;
		xx[1]=800-func_result;		yy[1]=yy[0];
		xx[2]=xx[0];				yy[2]=608-func_result/1.3;
		xx[3]=xx[1];				yy[3]=yy[2]
		for (j=0; j<4; j++) {
				
			base_direction=point_direction(xx[j],yy[j],400,304)
			spd = lerp(6, 20, i/15)
			blend=make_color_hsv((spd*5+rand_blend) mod 255,62+(spd-2)*10.7,255)
			for (angle=base_direction-50; angle<=base_direction+60; angle+=26) {
				a=instance_create(xx[j],yy[j],objCustomBullet)
				a.sprite_index=sprMayuCherry;
				a.image_blend=blend						
				a.image_xscale=lerp(0.75,1.6,(spd-2)/18)
				a.image_yscale=a.image_xscale
				a.draw=true;
				a.direction=angle-lerp(10,20,(spd-6)/14);
				a.speed=spd;
				a.tag="atk 5 corners jumpscare"
				a.persist=true
			}
			if i==10 {
				for (angle=base_direction-60; angle<=base_direction+60; angle+=30) {
					a=instance_create(xx[j],yy[j],objCustomBullet)
					a.direction=angle
					a.speed=random_range(0.5,5)
					a.sprite_index=sprMayuCherry;
					a.image_blend=make_color_hsv((spd*14+rand_blend) mod 255,62+(a.speed-2)*10.7,255)						
					a.image_xscale=0.75
					a.image_yscale=a.image_xscale
					a.draw=true;
					a.tag="atk 5 corners jumpscare"
					a.persist=true
				}
			}
		}
	}
}

if t==2480 {
	with(objCustomBullet) {
		if tag=="atk 5 corners jumpscare" {
			accel=0.05
			persist=false;
		}
	}
}

if t>=2464 and t<=2524 {
	v=EaseOutQuart(t-2464,96,-96,60)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	
	with(objCustomBullet) {
		if tag=="atk 5 circles jumpscare" {
			image_xscale=lerp(image_xscale,free_variable[0],0.15)
			image_yscale=image_xscale;
		}
		if tag=="atk 5 star spawner" {
			if t<=36 {
				len=EaseOutSine(t,0,free_variable[2],36)
				image_alpha=EaseOutSine(t,0,1,36)
			}
			dir_inc=EaseOutSine(t,free_variable[1],0,60)
		}
	}
	
	with(objDarkness) {
		if tag=="atk 5 starts with immediate flashbang 2" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
}

if t==2500-2 || t==2512-2 || t==2524-2 {
	
	with(objCustomBullet) {
		
		/*
		for further star idea development:
		angle=18
		a = 2*r*dsin(2*pi/5)
		*/
		if tag=="atk 5 star spawner" {
			if free_variable[0]==0 {
				for (dist=0; dist<=1; dist+=0.05) {
					for (i=-1; i<2; i+=2) {
						a=instance_create_depth(x,y,depth+dist,objCustomBullet);
						a.parent_id=id;
						a.sprite_index=sprMayuCherry;
						a.image_blend=make_color_hsv(39,lerp(255,62,dist),255)				
						a.image_xscale=lerp(image_xscale,image_xscale/2,dist)
						a.image_yscale=a.image_xscale
						a.draw=true;
						a.b_trig=true
						a.cx=x;
						a.cy=y;
						a.dir=dir+180+18*i;		//18
						a.free_variable[0]=dist*(free_variable[2]*0.67)
						a.free_variable[1]=i;
						a.tag="atk 5 star formation"
						a.persist=true
					}
				}
				image_alpha=0
				//instance_destroy()
			}
			free_variable[0]--
		}
	}
}

if t>=2498 and t<=2534 {
	with(objCustomBullet) {
		if tag=="atk 5 star formation" {
			if t<=8 {
				len=EaseOutSine(t,0,free_variable[0],8)
			}
			cx=parent_id.x;
			cy=parent_id.y;
			dir=parent_id.dir+180+25*free_variable[1]
		}
	}
}

if t==2534 {
	
	with(objCustomBullet) {
		if tag=="atk 5 star formation" {
			b_trig=false;
			cx=400
			cy=304
			dir=point_direction(400,304,x,y)
			len=point_distance(400,304,x,y)
			
			a=instance_copy(false)
			a.deg_x=-1
		}
	}
	
	vsquare=v
}

if t==2534 || t==2546 || t==2558 || t==2568 || t==2582 || t==2594 || t==2605 {
	vsquare+=30
	dirinc=15
	with(objCustomBullet) {
		if tag=="atk 5 star formation" {
			if free_variable[0]==0 and free_variable[1] and other.t<2568 {		//other.t!=2605 {
				a=instance_create_depth(x,y,depth,objCustomBullet)
				a.image_xscale=image_xscale;
				a.image_blend=image_blend
				a.visible=false;
				
				a.dir=dir
				a.tag="atk 5 some stupid spawner"
			}
			if (free_variable[0]*20) mod 3 == 0 and other.t>=2568 {
				
				a=instance_create_depth(x,y,depth,objCustomBullet)
				a.sprite_index=sprite_index;
				a.image_xscale=image_xscale;
				a.image_yscale=image_yscale
				a.image_blend=image_blend
				a.draw=true
				
				a.direction=dir+random_range(-20,20)
				a.speed=random_range(15,23)
				a.tag="atk 5 star trash"
			}
			dir_inc=other.dirinc*deg_x
			len*=0.85
		}
		if tag=="atk 5 corners jumpscare" {
			if other.t==2594 {
				direction=point_direction(scrPX(),scrPY(),x,y)
				speed=16
				persist=false
			}
		}
	}
}

if t>=2534 and t<=2605 {
	v=lerp(v,vsquare,0.15)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	with(objCustomBullet) {
		if tag=="atk 5 some stupid spawner" {
			for (var ang=dir; ang<dir+360; ang+=72) {
				a=instance_create_depth(x,y,depth+20,objCustomBullet)
				a.sprite_index=sprMayuCherry
				a.image_blend=merge_colour(c_red,c_black,random_range(0.4,0.5))				
				a.image_xscale=image_xscale
				a.image_yscale=a.image_xscale
				a.draw=true
				a.direction=ang;
				a.speed=32
				a.tag="atk 5 some stupid anti aimed stuff"
			}
			if t==5
				instance_destroy()
		}
		
		if tag=="atk 5 star formation" {
			dir_inc=lerp(dir_inc,0,0.175)
			x=cx+lengthdir_x(len,dir)
			y=cy+lengthdir_y(len,dir)
		}
		if tag=="atk 5 some stupid anti aimed stuff" {
			image_xscale=lerp(image_xscale,0.75,0.2)
			image_yscale=image_xscale
		}
	}
}
//34,46,58,68,82,94,605?

if t==2605 {
	
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 5 starts with immediate flashbang 3"
	
	with(objCustomBullet) {
		if tag=="atk 5 star formation" {
			if free_variable[0]==-1
				instance_destroy()
			direction=point_direction(scrPX(), scrPY(), x, y)+random_range(-15,15)
			speed=random_range(16,32)
			persist=true;
		}
		else
			instance_destroy()
	}
	
	for (i=0; i<35; i++) {
		a=instance_create_depth(random(800),random(608),-15+120*(i>=17),objCustomBullet);
		a.sprite_index=sprLiarDanceAtk5CherryStar;
		a.aimlock=true;
		a.direction=random(360);
		a.draw=true;
		a.cx=400;
		a.cy=304;
		a.dir=irandom(75)+75*i;
		if i<15
			a.len=lerp(100,650,i/15)
		else
			a.len=random_range(100,550);
		a.dir_inc=random_range(5,10)*choose(-1,1);
		a.curving=random_range(5,10)*choose(-1,1);
		a.image_xscale=5;
		a.image_yscale=a.image_xscale;
		a.image_alpha=0;
		a.killer=false
		//a.image_blend=c_black
		a.free_variable[0]=random_range(0.15,1);
		a.free_variable[1]=(i<15)							//lower this value to make it easier
		a.tag="atk 5 final star transformation";
		a.persist=true;
	}
}

if t>=2605 and t<=2675 {
	
	
	v=EaseOutCubic(t-2605,96,-96,70)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	with(objDarkness) {
		if tag=="atk 5 starts with immediate flashbang 3" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
	
	with(objCustomBullet) {
		if tag=="atk 5 final star transformation" {
			if t<=70 {
				x=cx+lengthdir_x(len,dir)
				y=cy+lengthdir_y(len,dir)
				dir_inc=lerp(dir_inc,0,0.075)
				curving=lerp(curving,0,0.06)
				image_alpha=EaseOutExpo(t,0,(0.08+0.92*free_variable[1])/EaseInSine(t,4,1,70),70)
				image_xscale=free_variable[0]//EaseOutCubic(t,5,free_variable[0],60)
				image_yscale=image_xscale;
				//image_blend=merge_colour(c_black,c_white,EaseInCubic(t,0,1,60))
			}
			if t mod 4 == 0
				image_blend=merge_colour(c_white,c_red,random(0.2))
			if t==69 and image_alpha>0.5
				killer=true;
		}
		if tag=="atk 5 star formation" {
			if x<=-96 || x>=896 || y<=-96/1.3 || y>=608+96/1.3 {
				if (free_variable[0]*20) mod 2 == 0
					instance_destroy()
				killer=false;
				image_alpha=0.06
				tag="atk 5 original star leftover"
			}
		}
		if tag=="atk 5 original star leftover" {
			x=modwrap(x,-96,896)
			y=modwrap(y,-96/1.3,608+96/1.3)
			if other.t>=2640
				speed=lerp(speed,0,0.8)
		}
	}
}

if t==2675 {
		
	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 5 starts with immediate flashbang 4"
	
	with(objCustomBullet) {
		if tag=="atk 5 final star transformation" {
			aimlock=false;
			direction=270+random_range(-5,5)
			speed=random_range(0.5,6)
			killer=false;
			//gravity_direction=dir//+180+random_range(-30,30)
			gravity=-random_range(0.1,0.2)
			persist=false
		}
		if tag=="atk 5 original star leftover"
			instance_destroy()
	}
	rand=choose(0,180)		//random(360)
	val=irandom_range(20,100)
	mirror=choose(-1,1)
	for (i=0; i<3; i++) {
		a=instance_create(-100,-100,objCustomBullet)
		
		a.sprite_index=sprMayuCherry;
		a.image_blend=make_color_hsv(39+val*i,255,255)				
		a.image_xscale=5
		a.image_yscale=a.image_xscale
		a.draw=true
		a.b_trig=true;
		a.cx=400;
		a.cy=304;
		a.dir=rand+120*i
		a.dir_inc=2.5
		a.deg_x=mirror
		a.len=600
		a.tag="atk 5 three spawners"
		a.free_variable[0]=0;
		a.persist=true
	}
}

if t>=2675 and t<=2745 {
	
	with(objCustomBullet) {
		if tag=="atk 5 final star transformation" {
			image_alpha=lerp(image_alpha,0.08,0.05)
		}
	}
	with(objDarkness) {
		if tag=="atk 5 starts with immediate flashbang 4" {
			image_alpha-=0.04
			if image_alpha<0
				instance_destroy()
		}
	}
}

if t>=2675 and t<=2816 {
	with(objCustomBullet) {
		if tag=="atk 5 three spawners" {
			len=lerp(len,320,0.035)
			dir_inc=EaseInQuart(other.t-2675,2.5,0,141)
			if t mod 2 == 0 and other.t<=2766 {
				for (ang=0; ang<360; ang+=120) {
					a=instance_create_depth(x,y,depth+1,objCustomBullet);
					a.sprite_index=sprite_index;
					a.image_xscale=0.8+(t mod 12 == 0)*0.2
					a.image_yscale=a.image_xscale
					a.image_blend=image_blend
					a.draw=true
					a.direction=dir+180+ang+t*4.6
					a.speed=3
					a.accel=0.07
					a.image_alpha=1-0.775*sign(t mod 12)
					a.killer=(a.image_alpha==1)
					a.tag="atk 5 three spawner spirals"
				}
				if t mod 10 == 0 {
					//repeat(2) {
						
						a=instance_create_depth(x,y,depth+1,objCustomBullet);
						a.sprite_index=sprite_index;
						a.image_xscale=0.8+(t mod 12 == 0)*0.2
						a.image_yscale=a.image_xscale
						a.image_blend=image_blend
						a.draw=true
						a.direction=random(360)
						a.speed=3
						a.accel=0.05
						a.tag="atk 5 three spawner spirals"	
					//}
				}
			}
			if other.t=2816 {
				
				for (angle=0; angle<120; angle+=40) {
					
					a=instance_create_depth(x,y,depth+1,objCustomBullet);
					a.sprite_index=sprite_index;
					a.image_xscale=image_xscale;
					a.image_yscale=a.image_xscale;
					a.image_blend=image_blend;
					a.draw=true;
					a.cx=400;
					a.cy=304;
					a.free_variable[0]=dir+angle;
					a.dir=dir
					a.len=len;
					a.tag="atk 5 expanded spawners"
				}
				_dir=point_direction(x,y,400,304)
				for (angle=_dir-90; angle<=_dir+90; angle+=30) {
					
					a=instance_create_depth(x,y,depth+1,objCustomBullet);
					a.sprite_index=sprite_index;
					a.image_xscale=image_xscale;
					a.image_yscale=a.image_xscale;
					a.image_blend=image_blend;
					a.draw=true;
					a.direction=angle+random_range(-10,10)
					a.speed=random_range(5,8)
					a.friction=(a.speed-3)/irandom_range(40,150)
					//a.gravity_direction=dir;
					//a.gravity=0.1
					a.tag="atk 5 so we nuked spawners"
					a.persist=true
					a.free_variable[0]=random_range(0.75,1)
				}
				instance_destroy()
			}
		}
	}
}
if t>=2675 and t mod 2 == 0 {
	xx[0]=-96;					yy[0]=random(755);			dir[0]=0
	xx[1]=896;					yy[1]=random(755);			dir[1]=180
	xx[2]=random(992);			yy[2]=(-96)/1.3;			dir[2]=270
	xx[3]=random(992);			yy[3]=608+96/1.3			dir[3]=90
	for (i=0; i<4; i++) {
		a = instance_create(xx[i],yy[i],objCustomBullet)
		a.direction=dir[i]+random_range(-10,10)
		a.speed=random_range(1,6)
		a.sprite_index=sprMayuCherry;
		a.image_blend=choose(c_gray,c_dkgray)
		a.image_xscale=random_range(0.5,3)
		a.image_yscale=a.image_xscale
		a.image_angle=random(360)
		a.gravity_direction=dir[i]+180;
		a.gravity=0.25;
		a.draw=true
	}
	
	with(objCustomBullet) {
		if tag=="atk 5 so we nuked spawners" {
			image_xscale=lerp(image_xscale,free_variable[0],0.09)
			image_yscale=image_xscale
			if speed<3
				friction=0
		}
		if tag=="atk 5 expanded spawners" {
			if t<=30
				dir=lerp(dir,free_variable[0],0.05)
			else {
				dir_inc+=0.5
				a = instance_create(x,y,objCustomBullet)
				a.sprite_index=sprite_index;
				a.image_xscale=image_xscale;
				a.image_yscale=a.image_xscale;
				a.image_blend=image_blend;
				a.draw=true;
				a.direction=dir
				a.speed=10
				a.tag="atk 5 final"
				
				len-=3
			}
			
				x=cx+lengthdir_x(len,dir)
				y=cy+lengthdir_y(len,dir)
		}
	}
}

if t>=2856 and t<=2952 {
	
	v=EaseOutCubic(t-2856,-96,96,96)
	set_camera(v+random_range(-8,8)*lerp(0,1,(t-2856)/96),
			   v/1.3+random_range(-8,8)*lerp(0,1,(t-2856)/96),
			   800-v*2,608-v*2/1.3,0)
}

if t==2925 {
	a=instance_create_depth(0,0,-500,objLiarDanceAtk5TechIssuesEffect)
	a.alarm[0]=29
}

if t==2952 {
	v=0;
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	instance_destroy(objCustomBullet)
	instance_destroy(objLiarDanceAtk5KaijuBG)
	instance_destroy(objLiarDanceSpotlight)
	
	_id = layer_get_id("Background")
	bg_id = layer_background_get_id(_id)
	layer_background_blend(bg_id,c_black)
	
	
	
	a=instance_create_depth(0,0,-400,objDecoCustomObject)
	a.sprite_index=sprLiarDanceAtk5BRB
	a.image_index=choose(0,1)
	//show_message(layer_background_get_blend((bg_id)))
	
}

if t>=2952 {
	with(objPlayer) {
		image_alpha=0;
		x=400;
		y=304;
		xprevious=400;
		yprevious=304;
		frozen = true;
	}
}

if t==2994 {
	
	a=instance_create_depth(0,0,-500,objLiarDanceAtk5TechIssuesEffect)
	//a.alarm[0]=29
	a.t=26
	a.t_inc=-1
}

if t==2995 {
	
	
	
	v=144;
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	instance_destroy(objDecoCustomObject)
	a=instance_create(400,304,objDecoCustomObject)
	a.sprite_index=sprLiarDanceAtk6TetoSilhoulette;
	a.image_alpha=0.2
	a.image_xscale=teto_side
	a.tag="atk 5 dancing silhoulette"
}