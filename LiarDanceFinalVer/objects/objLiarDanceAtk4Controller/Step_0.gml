if instance_exists(objPlayer) {
    t++
	with(objPlayer) {
		x-=1.5
		xprevious-=1.5
	}
}

else {
	with(objLiarDanceAtk4Road) {
		hspeed=0	
	}
	with(objLiarDanceAtk4RoadSign) {
		hspeed=0	
	}
	instance_destroy()	
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
if t mod 35 == 10 and t<2000 {
	rand_y=480-random_range(32,128)
	a = instance_create(832,rand_y,objLiarDanceAtk4BouncyCherries)
	a.sprite_index=sprCustomRegularCherry
	a.image_index=irandom(12)
	a.image_xscale=random_range(1.35,2.2)
	a.image_yscale=a.image_xscale
	a.image_angle=random(360)
	a.direction=180-20		//random_range(12,25)
	a.speed=random_range(5.5,8)
	a.gravity=random_range(0.1,0.175)
	a.persist=true;
	a.free_variable[0]=random_range(1,3)
	a.free_variable[1]=0
	a.tag="atk 4 jumpy cherries"
	a.draw=true
}

if t>=1966 and t<=2112 {
	with(objLiarDanceAtk4Car) {
		x=EaseOutSine(other.t-2000,xstart,760,112)
	}
}

if t==2000 {
	
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

if t>=2000 {
	//232,97
	//274,149
	if t mod 50 == 0 {
		with(objLiarDanceAtk4Car) {
			a = instance_create_depth(x-22,y-52,-2,objLiarDanceAtk4BouncyCherries)
			a.sprite_index=sprCustomRegularCherry
			a.image_index=irandom(12)
			a.image_xscale=random_range(1.35,2.2)
			a.image_yscale=a.image_xscale
			a.image_angle=random(360)
			a.direction=90+random_range(13,17)		//random_range(12,25)
			a.speed=4.8			//random_range(5.5,7.5)
			a.gravity=random_range(0.1,0.175)
			a.persist=true;
			a.free_variable[0]=random_range(1,3)
			a.free_variable[1]=random_range(1.5,2.6)
			a.tag="atk 4 jumpy cherries"
			a.draw=true
		}
	}
}

if t>=2112 {
	_t=(t-2112)
	if _t mod 35 == 0 {
		
	}
	//2112,2146,2184,2218
}

if t==2332 {
	a=instance_create_depth(0,0,-400,objLiarDanceScreenBreakEffect)
	a.spd_inc_min=0;
    a.spd_inc_max=0;
    a.alpha=1;
    a.enable_alphablend=false
    a.move=0;
	with(objPlayer) {
		image_alpha=0	
	}
	instance_destroy(objLiarDanceAtk4ShadowDrawer)
	instance_destroy(objLiarDanceAtk3PrimitiveTransition)
}

if t>=2332 and t<=2394 {
	with(objLiarDanceScreenBreakEffect) {
        a = EaseLinear(t,0,4,62);
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
	v=EaseInCubic(t-2332,0,128,62)
	set_camera(v,v/1.3+v/3,800-v*2,608-v*2/1.3,0)
}

with(objDecoCustomObject) {
	if tag=="atk 4 car window" {
		x=parent_id.x;
		y=parent_id.y;
	}
}

with(objLiarDanceAtk4BouncyCherries) {
	if tag=="atk 4 jumpy cherries" {
		x-=free_variable[1]
		if vspeed>0 and depth!=-10
			depth=-10
	}
}