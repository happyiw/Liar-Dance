
t++

if instance_exists(objPlayer) {
	with(objPlayer) {
		if !place_free(x,y+9) and other.t<2332 {
			x-=1.5
			xprevious-=1.5
		}
	}
}

else {
	/*
	with(objLiarDanceAtk4Road) {
		hspeed=0	
	}
	with(objLiarDanceAtk4RoadSign) {
		hspeed=0	
	}
	instance_destroy()	
	*/
	with(objCustomBullet) {
		persist=false;	
	}
}

if t==1826 {
	instance_create_depth(0,472,201,objLiarDanceAtk4Road)
	//instance_create_depth(0,0,200,objLiarDanceAtk4ShadowDrawer)
	
	instance_destroy(objLiarDanceAtk3FinalTransition)
	instance_destroy(objCustomBullet)
	instance_destroy(objDecoCustomObject)
	
	if !instance_exists(objLiarDanceAtk3PrimitiveTransition) {
		a=instance_create_depth(400,304,-1000,objLiarDanceAtk3PrimitiveTransition)
		for (i=0; i<120; i++) {
			a.r1[i]=0
			a.r2[i]=800
		}
	}
	
	v=0
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	with(objPlayer) {
		image_alpha=1
		x=400
		xprevious=x
	}
	
	for (_x=300;_x<=300+800*4; _x+=1200) {
		a=instance_create_depth(_x+random_range(-150,150),480-32,200,objLiarDanceAtk4RoadSign)
		a.base_scale=1.4//random_range(1.5,2);
		a.image_xscale=a.base_scale;
		a.image_yscale=a.base_scale;
	}
}

if t>=1826 and t<=1976 {
	with(objLiarDanceAtk3PrimitiveTransition) {
		
		y=scrPY()
		for (i=0; i<120; i++) {
			r1[i]=EaseOutCubic(other.t-1826,0,800,150)
		}
	}
	
	if t<=1926 {
		v=EaseOutCubic(t-1826,160,0,100)
		set_camera(v,v/1.3+EaseOutCubic(t-1826,112,0,100),800-v*2,608-v*2/1.3,0)
	}
	
}

//if t mod (30+7*(t>=2012)) == 0 {
if t mod 44 == 22 and t<2000 {
	rand_y=480-random_range(32,128)
	
	option=choose(1,2)
	
	a = instance_create_depth(832,rand_y,-2,objLiarDanceAtk4BouncyCherries)
	
	switch(option) {
		case 1:
			a.sprite_index=sprMayuCherry;
			a.image_blend=make_colour_hsv(random(255),255,255)
		break;
		case 2:
			a.sprite_index=sprLeeheCherry;
			a.image_index=irandom(12)
		break;
	}
	
	/*
	a.sprite_index=sprCustomRegularCherry
	a.image_index=irandom(12)
	*/
	a.image_xscale=random_range(1.35,1.7)
	a.image_yscale=a.image_xscale
	a.image_angle=random(360)
	a.direction=180-20		//random_range(12,25)
	a.speed=random_range(4,9)
	a.gravity=random_range(0.1,0.175)
	a.persist=true;
	a.free_variable[0]=random_range(1,3)
	a.free_variable[1]=0
	a.free_variable[2]=a.gravity
	a.tag="atk 4 jumpy cherries"
	a.draw=true
}

if t mod 44 == 0 and t<1950 {
	rand_y=480-random_range(32,128)
	
	a = instance_create_depth(832,rand_y,-2,objLiarDanceAtk4BouncyCherries)
	a.sprite_index=sprCustomRegularCherry
	a.image_index=irandom(12)
	a.image_xscale=random_range(1.2,1.5)
	a.image_yscale=a.image_xscale
	a.image_angle=random(360)
	a.direction=180-20		//random_range(12,25)
	a.speed=random_range(4,9)
	a.gravity=random_range(0.1,0.175)
	a.persist=true;
	a.free_variable[0]=random_range(1,3)
	a.free_variable[1]=0
	a.free_variable[2]=a.gravity
	a.tag="atk 4 jumpy cherries"
	a.draw=true	
}

if t>=1950 and t<=2050 {
	with(objLiarDanceAtk4Car) {
		x=EaseOutSine(other.t-1950,xstart,760+dsin(other.t/2)*16,100)
	}
}

if t==1950 {
	
	scale=0.84
	_x=800 + (549*scale/2)
	_y=488
	
	a=instance_create_depth(_x,_y,-1,objLiarDanceAtk4Car)
	a.image_xscale=scale;
	a.image_yscale=a.image_xscale;
	
	a2=instance_create_depth(_x,_y,-5,objDecoCustomObject)
	a2.parent_id=a.id;
	a2.sprite_index=sprLiarDanceAtk4CarWindow
	a2.image_xscale=scale;
	a2.image_yscale=a2.image_xscale;
	a2.tag="atk 4 car window"
	a2.persist=true
}

if t>=1950 {
	with(objLiarDanceAtk4Car) {
		if other.t>=2050
			x=760+dsin(other.t/2)*16
			
		if other.t mod 64 == 0 {
			
			option=choose(1,2)
			
			a = instance_create_depth(x-22,y-52,-2,objLiarDanceAtk4BouncyCherries)
			switch(option) {
				case 1:
					a.sprite_index=sprMayuCherry;
					a.image_blend=make_colour_hsv(random(255),255,255)
				break;
				case 2:
					a.sprite_index=sprLeeheCherry;
					a.image_index=irandom(12)
				break;
			}
			a.image_xscale=random_range(1.35,1.7)
			a.image_yscale=a.image_xscale
			a.image_angle=random(360)
			a.direction=90+random_range(13,17)		//random_range(12,25)
			a.speed=4.8			//random_range(5.5,7.5)
			a.gravity=random_range(0.1,0.175)
			a.persist=true;
			a.free_variable[0]=random_range(1,3)
			a.free_variable[1]=random_range(1.3,2.6)*2
			a.free_variable[2]=a.gravity
			a.tag="atk 4 jumpy cherries"
			a.draw=true
		}
		if other.t mod 64 == 32 {
			a = instance_create_depth(x-22,y-52,-2,objLiarDanceAtk4BouncyCherries)
			a.sprite_index=sprCustomRegularCherry
			a.image_index=irandom(12)
			a.image_xscale=random_range(1.2,1.5)
			a.image_yscale=a.image_xscale
			a.image_angle=random(360)
			a.direction=90+random_range(13,17)		//random_range(12,25)
			a.speed=4.8			//random_range(5.5,7.5)
			a.gravity=random_range(0.1,0.175)
			a.persist=true;
			a.free_variable[0]=random_range(1,3)
			a.free_variable[1]=random_range(1.3,2.6)*2
			a.free_variable[2]=a.gravity
			a.tag="atk 4 jumpy cherries"
			a.draw=true		
		}
	}
	if t>=2108 {
		if t==2108 || t mod 42 == 4 {
			_x=random_range(100,700)
			x_shift=irandom_range(16,96)
			if _x>=300 and _x<=500
				x_shift*=choose(-1,1)
			else if _x>600
				x_shift*=-1;
			_y=random_range(160,224)
			
			a = instance_create_depth(_x+x_shift,32,-2,objCustomBullet)
			a.sprite_index=sprInvertedLeeheCherry			//sprCustomRegularCherry
			a.image_index=irandom(12)
			a.image_xscale=1.5
			a.image_yscale=a.image_xscale
			//a.image_angle=random(360)
			//a.direction=90+random_range(5,30)
			//a.speed=random_range(8,9.5)				
			//a.gravity=random_range(0.1,0.175)
			a.persist=true;
			a.free_variable[0]=random_range(1,3)
			a.free_variable[1]=random_range(1.3,2.6)
			a.free_variable[2]=choose(-1,1)
			a.free_variable[3]=_x;
			a.free_variable[4]=_y;
			a.tag="atk 4 small spiral spawner"
			a.draw=true
			a.persist=true
		}
	}
	with(objCustomBullet) {
		if tag=="atk 4 small spiral spawner" {
			if t<=48 {
				x=EaseInQuart(t,xstart,free_variable[3],40)
				y=EaseOutSine(t,ystart,free_variable[4],40)
			}
			if t==47 {
				rand=random(360)
				for (angle=0; angle<360; angle+=20) {
					a=instance_create_depth(x,y,objLiarDanceAtk4Car.depth-15,objCustomBullet)
					a.sprite_index=sprite_index;
					a.image_xscale=image_xscale;
					a.image_yscale=image_yscale;
					a.image_index=image_index;
					a.direction=angle+rand;
					a.speed=(3+(angle mod 90)/60)*free_variable[2]
					a.accel=0.05*free_variable[2]
					a.draw=true;
					a.tag="atk 4 small spiral"
				}
				
				instance_destroy()
			}
		}
		if tag=="atk 4 small spiral" {
			image_xscale=lerp(image_xscale,0.8,0.1)
			image_yscale=image_xscale
		}
	}
}

if t==2332 {
	if instance_exists(objPlayer) {
		a=instance_create_depth(0,0,-400,objLiarDanceScreenBreakEffect)
		a.spd_inc_min=0;
	    a.spd_inc_max=0;
	    a.alpha=1;
	    a.enable_alphablend=false
	    a.move=0;
	}
	with(objPlayer) {
		image_alpha=0	
	}
	instance_destroy(objLiarDanceAtk4ShadowDrawer)
	instance_destroy(objLiarDanceAtk3PrimitiveTransition)
}

if t>=2332 and t<=2394 {
	with(objLiarDanceScreenBreakEffect) {
        a = EaseLinear(t,0,4,62);
		text_alpha= a/4
		/*squares_list_limit=floor(EaseLinear(t,2,95,62))
		if t mod 2 == 0 {
			ds_list_shuffle(squares_list)	
		}*/
	    for(i = 0; i < 25; i ++){
	        for(ii = 0; ii < 19; ii ++){
				xx_offset[i, ii]=random_range(-a,a)
				yy_offset[i, ii]=random_range(-a,a)
				scale[i, ii]=1+random(0.4)*a/4
				if t mod 2 == 0
					blend[i, ii]=merge_colour(c_white, choose(c_red,c_lime,c_blue), a/irandom_range(12,15))
			}
		}
    }
	if t>=2360 {
		with(objLiarDanceAtk4BouncyCherries)
			killer=false;
			
		with(objCustomBullet)
			killer=false;
	}
	
	with(objPlayer) {
		x=clamp(x,32,768)
		xprevious=x
	}
	
	v=EaseInCubic(t-2332,0,128,62)
	set_camera(v,v/1.3+v/3,800-v*2,608-v*2/1.3,0)
}

with(objDecoCustomObject) {
	if tag=="atk 4 car window" {
		x=parent_id.x;
		y=parent_id.y;
	}
}

with(objCustomBullet) {
	if tag=="atk 4 little explosions deco" {
		if t>=25 {
			image_alpha-=0.005
			if image_alpha<=0
				instance_destroy()
		}
	}
	if tag=="atk 4 shockwave" {
		len_inc=lerp(len_inc,0,0.1)
		if len_inc<3 {
			if image_alpha<0.75
				killer=false;
			image_alpha-=0.02
			if image_alpha<=0
				instance_destroy()
		}
	}
}

with(objLiarDanceAtk4BouncyCherries) {
	if tag=="atk 4 jumpy cherries" {
		x-=free_variable[1]
		if vspeed>0 and depth!=-10
			depth=-10
	}
}