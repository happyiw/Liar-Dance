/*
if instance_exists(objPlayer) {
    t++
}
else {
	instance_destroy()	
}
*/

t++
if !instance_exists(objPlayer) {
	with(objCustomBullet) {
		persist=false;	
	}
}

if t<=1510 {
	
	with(objPlayer) {
		visible=false;
		image_alpha=0;
	}	
}

if t>=1260 and t<=1310 {
	with(objLiarDanceAtk3CloudSurfaceTarget) {
		/*
		image_alpha=EaseOutCubic(other.t-1260,0,1,20)
		image_xscale=EaseOutCubic(other.t-1260,1.3,0.7,20)
		image_yscale=EaseOutCubic(other.t-1260,1.3,0.65,20)
		*/
		y=EaseOutQuart(other.t-1260,950,304,50)
	}
	with(objDecoCustomObject) {
		if tag=="atk 3 bg bullets" || tag=="atk 3 bg player" {
			if tag=="atk 3 bg player" and instance_exists(objPlayer) {
				sprite_index=objPlayer.sprite_index
				image_xscale=objPlayer.image_xscale*objPlayer.xScale
			}
			y=EaseOutQuart(other.t-1260,ystart,ystart-500,50)
			if other.t-1260==50
				instance_destroy()
		}
	}
	with(objPlayer)
		image_alpha=0//EaseOutSine(clamp(other.t-1260,0,20),1,0,20)
		
}


/*
1265,1280,1300,1315,1335,1350,1370,
*/
if t==1265 || t==1280 || t==1300 || t==1315 || t==1335 || t==1350 || t==1370 {
	with(objLiarDanceAtk3Bullet) {
		if tag=="atk 3 overtake bursts"	{
			vspeed+=random_range(2.5,4)
		}
	}
	switch(attack_option) {
		case 0:
			ang_inc=12
			for (angle = 180; angle<=360; angle+=ang_inc) {
				a = instance_create	(400, 80, objLiarDanceAtk3Bullet)
				a.direction=angle+random(ang_inc/1.5)*choose(-1,1)
				a.speed=random_range(4,6)*(1.75+0.3*dsin(angle))
				a.image_xscale=2.5
				a.image_yscale=a.image_xscale
				a.gravity=-0.15
				a.tag="atk 3 overtake bursts"
			}
		break;
			
		case 1:
			rand=random(360)
			
			for (ang=rand; ang<rand+360; ang+=360/(2+humaniac_var)) {
				a=instance_create(400, 170, objLiarDanceAtk3Bullet)
				a.bounce=true
				a.image_xscale=0.75;
				a.image_yscale=a.image_xscale;
				a.direction=ang
				a.speed=5.2
				//a.image_alpha=0.25+(0.75*(t>=1300))
				//a.killer=(a.image_alpha==1)
				a.tag="atk 3 human maniac bounce"
			}
			humaniac_var=(humaniac_var+1) mod 3
		break;
			
		case 3:
			with(objLiarDanceAtk3Bullet) {
				if tag=="atk 3 24h spawner" {
					if other.t==1335 || other.t==1350 || other.t==1370 {
						reference=other.fail_angle
						for (angle=reference; angle<reference+360; angle+=20) {
							a=instance_create(x,y,objLiarDanceAtk3Bullet)
							a.image_alpha=0
							a.killer=false
							a.dir=angle;
							a.free_variable[0]=free_variable[0]
							a.tag="atk 3 24h instagib circles"
						}
					}
					else {
						if free_variable[0]==other.fail_var {
							rand=random(360)
							for (angle=rand; angle<rand+360; angle+=24) {
								a=instance_create(x,y,objLiarDanceAtk3Bullet)
								a.b_trig=true
								a.cx=x;
								a.cy=y;
								a.dir=angle;
								a.len_inc=5;
								a.dir_inc=free_variable[1]*0.25
								a.image_alpha=0.15+0.85*sign((angle-rand) mod 48)
								a.killer=(a.image_alpha==1)
								a.tag="atk 3 24h curve circles"
							}
							free_variable[1]*=-1
						}
					}
				}
			}
			fail_var*=-1
			fail_angle+=6.67
		break;
	}
}

if t>=1265 and t<=1375 {
	if attack_option==2 and t mod 5 == 0 {
		a = instance_create(400+random_range(-200,200),96,objLiarDanceAtk3Bullet)
		a.image_xscale=random_range(0.8,1.2)
		a.image_yscale=a.image_xscale
		a.image_angle=random(360)
		a.direction=270+random_range(-4,4)
		a.speed=random_range(2,5)
		a.gravity=0.1
		a.tag="atk 3 black world spam"
	}
}

if t==1375 || t==1385 {
	with(objLiarDanceAtk3Bullet) {
		if tag=="atk 3 overtake bursts" {
			gravity=0
			speed=0
			x+=lengthdir_x(random_range(40,80),direction)
			y+=lengthdir_y(random_range(40,80),direction)
			image_alpha=0.25
			killer=false
		}
		
		if tag=="atk 3 human maniac bounce" {
			speed=0
			y=lerp(y,ystart+random_range(-80,32),0.5)
			image_alpha=0.25
			killer=false
			image_xscale-=0.15
			image_yscale=image_xscale
		}
		if tag=="atk 3 24h spawner" {
			if free_variable[0]==other.fail_var {
				direction=point_direction(400,y,x,y)
				speed=6
			}
		}
		if tag=="atk 3 24h instagib circles" {
			if free_variable[0]==other.fail_var {
				for (spd=3; spd<12; spd+=2) {
					a=instance_create(x,y,objLiarDanceAtk3Bullet)
					a.direction=dir
					a.speed=spd
					a.tag="atk 3 24h instagib circles jumpscare"
				}
				instance_destroy()
			}
		}
		
		if tag=="atk 3 black world spawner" 
			cy-=64
		
		if tag=="atk 3 black world circle" 
			len/=3
		
	}
	fail_var*=-1
}

if t==1405 {
	with(objLiarDanceAtk3Bullet) {
		if tag=="atk 3 overtake bursts" {
			direction=random(360)
			speed=0.5
		}
		if tag=="atk 3 human maniac bounce" {
			repeat(2) {
				a=instance_create(x, y, objLiarDanceAtk3Bullet)
				a.bounce=true
				a.image_xscale=image_xscale;
				a.image_yscale=image_yscale;
				a.direction=random(360)
				a.speed=5.5
				a.friction=a.speed/20
				a.tag="atk 3 human maniac little bouncies"
			}
		}
		if tag=="atk 3 black world circle" || tag=="atk 3 black world spawner"
			instance_destroy()
	}
	/*
	for (i=-1; i<2; i+=2) {
		
		a = instance_create(400+400*i, 304, objLiarDanceAtk3Bullet)
		a.dir=random(360)
		a.dir_inc=2
		a.cx=400+200*i
		a.cy=304
		a.tag="atk 3 black world spawner 2"
		
		rand=random(360)
		for (angle=rand; angle<rand+360; angle+=36) {
			a2=instance_create(400+400*i,96, objLiarDanceAtk3Bullet)
			a2.parent_id=a.id
			a2.dir=angle;
			a2.len=100
			a2.dir_inc=3.5
			a2.persist=true
			a2.tag="atk 3 black world circle 2"
		}	
	}
	*/
}

if t>=1395 and t<=1510 {
	if attack_option==3 and t mod 15 == 0 {
		a=instance_create(400+random_range(-232,232),480,objLiarDanceAtk3Bullet)
		a.killer=false;
		a.image_alpha=0.4
		a.image_xscale=2
		a.image_yscale=a.image_xscale;
		a.tag="atk 3 24h rising spawner"
	}
	/*
	if attack_option==2 and t mod 10 == 0 {
		a = instance_create(100,random(608),objLiarDanceAtk3Bullet)
		a.image_xscale=random_range(0.8,1.2)
		a.image_yscale=a.image_xscale
		a.image_angle=random(360)
		a.speed=random_range(2,5)
		a.gravity=0.1
		a.tag="atk 3 black world spam"
		
		a = instance_create(700,random(608),objLiarDanceAtk3Bullet)
		a.image_xscale=random_range(0.8,1.2)
		a.image_yscale=a.image_xscale
		a.image_angle=random(360)
		a.direction=180
		a.speed=random_range(2,5)
		a.gravity=0.1
		a.tag="atk 3 black world spam"
	}
	*/
}

if t==1265+140 || t==1280+140 || t==1300+140 || t==1315+140 || t==1335+140 || t==1350+140  {
		
	with(objLiarDanceAtk3Bullet) {
		if tag=="atk 3 human maniac little bouncies" {
			speed=5.5
		}
	}
	switch(attack_option) {
		case 0:
			
			for (_x=0; _x<=800; _x+=800) {
				_y=304+random_range(-100,100)
				a=instance_create(_x, _y, objLiarDanceAtk3Bullet)
				a.image_xscale=2.5
				a.image_yscale=a.image_xscale;
				a.tag="atk 3 overtake circle parent"
				a.free_variable[0]=sign(_x-400)
				a.free_variable[1]=random_range(-32,32)
				
				rand=random(360)
				inc=random_range(4,6)*choose(-1,1)
				for (angle=rand; angle<rand+360; angle+=72) {
					aa=instance_create(_x, _y, objLiarDanceAtk3Bullet)
					aa.parent_id=a.id;
					aa.image_xscale=1.25;
					aa.image_yscale=aa.image_xscale
					aa.dir=angle;
					aa.dir_inc=inc;
					aa.len=64
					aa.tag="atk 3 overtake circle"
					aa.persist=true
					
					aa=instance_create(_x, _y, objLiarDanceAtk3Bullet)
					aa.parent_id=a.id;
					aa.image_xscale=0.75;
					aa.image_yscale=aa.image_xscale
					aa.dir=angle;
					aa.dir_inc=inc;
					aa.len=96
					aa.tag="atk 3 overtake circle"
					aa.persist=true
				}
			}
			
		break;
		
		case 2:
			with(objLiarDanceAtk3Bullet) {
				if tag=="atk 3 black world stuttering bursts" {
					x+=lengthdir_x(free_variable[0]*3,direction)
					y+=lengthdir_y(free_variable[0]*3,direction)
				}
			}
			repeat(30) {
				a=instance_create(400+200*black_world_i,200,objLiarDanceAtk3Bullet)
				a.direction=random(360)
				a.speed=random_range(4,10)
				a.image_xscale=0.5;
				a.image_yscale=a.image_xscale
				a.free_variable[0]=a.speed
				a.friction=0.2
				a.tag="atk 3 black world stuttering bursts"
			}
			black_world_i*=-1
		break;
	}
}


if t==1510 {
	with(objCustomBullet) {
		killer=false	
	}
	
	with(objLiarDanceAtk3CloudSurfaceTarget) {
		sprite_index=sprLiarDanceAtk3CloudDistorted
	}
	a=instance_create_depth(0,0,-5000,objDarkness)
	a.image_alpha=0.
	a.image_blend=c_black
	
	a=instance_create_depth(0,0,-1000,objLDBasicShaderHandler)
	a.intensity=0.0
	
	repeat(65) {
		a = instance_create_depth(400+random_range(-224,224),304+random_range(-128,128),-2000,objDecoCustomObject)
		a.image_xscale=random_range(0.75,1.25)
		a.image_yscale=a.image_xscale;
		//a.persist=true
		//a.killer=false;
		a.image_alpha=0
		a.tag="atk 3 explosion jumpscare"
	}	
}

if t>=1510 and t<=1545 {
	/*
	density1=floor(lerp(0,2,(t-1510)/35))
	density2=floor(lerp(5,15,(t-1510)/35))
	if t mod (5-density1) == 0 {
		with(objDecoCustomObject) {
			if tag=="atk 3 visual mess"
				instance_destroy()
		}
		
		ease_variable=EaseInCubic(other.t-1510,0.7,0.45,35)*0.8
		rand=random(360)
		for (angle=rand; angle<rand+360; angle+=(360/density2)) {
			a=instance_create_depth(-150,-150,-150,objDecoCustomObject)
			a.x=400+lengthdir_x(random_range(32,400*ease_variable),angle)
			a.y=304+lengthdir_y(random_range(32,400*ease_variable)*0.75,angle)
			a.sprite_index=sprLiarDanceAtk3Cloud
			a.image_xscale=ease_variable*random_range(0.2,0.35)
			a.image_yscale=a.image_xscale*0.93
			a.tag="atk 3 visual mess"
		}
	}
	*/
	if t mod 8 == 0 {
		
		with(objDecoCustomObject) {
			if tag=="atk 3 small transition"
				instance_destroy()
			if tag=="atk 3 explosion jumpscare" {
				x=xstart+lengthdir_x(lerp(96,0,t/35),random(360))
				y=ystart+lengthdir_y(lerp(96,0,t/35),random(360))
				image_alpha=lerp(0,0.5,t/35)
				image_xscale=random_range(0.75,1.25)
				image_yscale=image_xscale;
			}
		}
		repeat(75) {
			a = instance_create_depth(random(800),random(608),-200,objDecoCustomObject)
			a.sprite_index=sprMayuCherry
			a.image_blend=make_colour_hsv(irandom(255),255,120)
			a.image_xscale=random_range(0.75,1.25)*1.4
			a.image_yscale=a.image_xscale;
			a.direction=90+random_range(-15,15)
			a.speed=random_range(5,12)
			a.gravity=random_range(0.1,0.2)
			a.image_alpha=lerp(0.5,1,(t-1510)/35)
			a.tag="atk 3 small transition"
		}
	}
	v=EaseInCubic(t-1510,0,160,35)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	with(objLiarDanceAtk3CloudSurfaceTarget) {
		image_xscale=EaseInCubic(other.t-1510,0.7,0.28,35)
		image_yscale=image_xscale*0.93
		image_alpha=EaseLinear(other.t-1510,1,0.4,35)
		//image_speed=EaseLinear(other.t-1510,1,4,35)
	}
	with(objLDBasicShaderHandler) {
		t_inc+=0.25
		intensity+=0.8/28
	}
	with(objDarkness) {
		image_alpha=EaseOutExpo(other.t-1510,0,0.85,35)
	}
}

//1545
if t==1545 {
	instance_destroy(objLiarDanceAtk3CloudSurface)
	instance_destroy(objLiarDanceAtk3Bullet)
	instance_destroy(objLDBasicShaderHandler)
	instance_destroy(objDarkness)
	instance_destroy(objBlock)
	
	with(objDecoCustomObject) {
		if tag=="atk 3 explosion jumpscare" {
			a=instance_create(xstart,ystart,objCustomBullet)
			a.sprite_index=sprWhiteCherry
			a.image_xscale=random_range(1,1.5)
			a.image_yscale=a.image_xscale;
			a.direction=point_direction(400,608*2.5,x,y)
			a.speed=random_range(5,16)
			a.gravity=random_range(0.1,0.2)
			a.tag=tag
			a.persist=true
		}
		instance_destroy()
	}
	
	instance_create(0,0,objShadowDrawer)
	
	with(instance_create(0,96,objBlock))
		image_xscale=25
	with(instance_create(0,480,objBlock))
		image_xscale=25
		
	with(instance_create(-32,96,objBlock))
		image_yscale=15
	with(instance_create(800,96,objBlock))
		image_yscale=15
		
	instance_create_depth(0,0,250,objLiarDanceAtk3OptionSurface)
	
	a = instance_create(400+200*mirror,304,objLiarDanceAtk3OptionSurfaceTarget)
	a.image_index=attack_option
	a.image_xscale=0.6;
	a.image_yscale=a.image_xscale;
	
	a = instance_create(400-200*mirror,304,objLiarDanceAtk3OptionSurfaceTarget)
	a.image_index=(attack_option+choose(1,2)) mod 3
	a.image_xscale=0.6;
	a.image_yscale=a.image_xscale;
	
	
	for (i=-1; i<2; i+=2) {
		repeat(20) {
			a = instance_create(400-200*i+random_range(-48,48),304+random_range(-48,48),objLiarDanceAtk3OptionSurfaceCircle)
			a.r=random_range(15,60)
			a.direction=random(360)
			a.speed=random_range(2,5)
			a.gravity=random_range(0.15,0.225)
		}
	}
	
	repeat(150) {
		a = instance_create(400+random_range(-224,224),304+random_range(-224,224)*0.93,objDecoCustomObject)
		a.image_xscale=random_range(0.75,1.25)
		a.image_yscale=a.image_xscale;
		a.direction=90+random_range(-15,15)
		a.speed=random_range(5,16)
		a.gravity=random_range(0.1,0.2)
		a.image_alpha=0.1
		a.tag="atk 3 explosion jumpscare"
	}
	
	if instance_exists(objPlayer) {
		instance_destroy(objPlayer)
		a=instance_create_layer(400, 450, "Player", objPlayer)
	}
	
	a=instance_create_depth(400,480,100,objDecoCustomObject)
	a.sprite_index=sprLiarDanceHappyTeto
	a.image_xscale=0.7
	a.image_yscale=a.image_xscale;
	a.tag="atk 3 happy teto"
	
	y_shift=random(32)
	for (yy=96; yy<512; yy+=24) {
		dist=900
		angle=random(360)
		a=instance_create(modwrap(400+lengthdir_x(dist, angle),0,800), modwrap(yy+lengthdir_y(dist,angle),0,608),objCustomBullet)
		a.persist=true
		a.image_alpha=0
		a.image_xscale=5;
		a.image_yscale=a.image_xscale
		a.killer=false
		a.cx=400
		a.cy=yy+y_shift
		a.dir=angle
		a.dir_inc=irandom_range(10,20)/6
		a.len=900
		a.tag="atk 3 lazy wall"
	}
}

if t>=1545 and t<=1545+65 {
	with(objDecoCustomObject) {
		if tag=="atk 3 happy teto" {
			y=EaseOutBack(clamp(other.t-1545,0,35),480,180,35)
		}
	}
	v=EaseOutCubic(t-1560,160,0,65)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
}

if t>=1545 and t<=1660 {
	with(objCustomBullet) {
		if tag=="atk 3 lazy wall" {
			image_alpha=EaseLinear(t,0,0.1,115);
			image_xscale=EaseLinear(t,5,1.5,115);
			image_yscale=image_xscale;
			len=EaseOutCubic(t,900,100,115)	
		}
	}
}

if t==1660 || t==1670 {
	with(objCustomBullet) {
		if tag=="atk 3 explosion jumpscare" {
			gravity=0
			speed=0
			direction=point_direction(scrPX(),scrPY(),x,y)
			x+=lengthdir_x(48,direction)
			y+=lengthdir_y(48,direction)
		}
		
		if tag=="atk 3 lazy wall" {
			image_xscale-=0.125;
			image_yscale=image_xscale;
			image_alpha+=0.35
			len-=50
			dir_inc=0
			cx+=random_range(-16,16)
			cy+=random_range(-16,16)
		}
	}
	with(objDecoCustomObject) {
		if tag=="atk 3 explosion jumpscare" {
			image_alpha+=0.45;
			gravity=0
			speed=0
			direction=point_direction(scrPX(),scrPY(),x,y)
			x+=lengthdir_x(48,direction)
			y+=lengthdir_y(48,direction)
			persist=false
		}
	}
}

if t==1686 {
	
	with(objDecoCustomObject) {
		if tag=="atk 3 explosion jumpscare" {
			repeat(2) {
				with(instance_create(x,y,objCustomBullet)) {
					sprite_index=sprMayuCherry
					image_xscale=other.image_xscale
					image_yscale=image_xscale
					image_alpha=image_alpha
					//image_blend=make_color_hsv(random(255),255,255)
					killer=killer
					
					_dist=point_distance(400,0,scrPX(),0)
					direction = point_direction(400+max(150,_dist)*objLiarDanceAtk3Controller.mirror,y,x,y)+random_range(-15,15)
					
					//direction=point_direction(400+max(192,_dist*objLiarDanceAtk3Controller.mirror),y,x,y)+random_range(-15,15)
					
					speed=random_range(6.5,12)
					gravity=random_range(0.1,0.2)
					free_variable[0]=random_range(1.25,2.5)
					tag="atk 3 lame bursts"
					depth=100
				}
			}
			instance_destroy()
		}
		else if tag!="atk 3 happy teto"
			instance_destroy()
		else {
			image_speed=0
			
		}
	}
	with(objCustomBullet) {
		if tag=="atk 3 explosion jumpscare" || tag=="atk 3 lazy wall" {
			repeat(2) {
				with(instance_create(x,y,objCustomBullet)) {
					sprite_index=sprMayuCherry
					image_xscale=other.image_xscale
					image_yscale=image_xscale
					image_alpha=image_alpha
					//image_blend=make_color_hsv(random(255),255,255)
					killer=(y<476)
					
					_dist=point_distance(400,0,scrPX(),0)
					direction = point_direction(400+max(150,_dist)*objLiarDanceAtk3Controller.mirror,y,x,y)+random_range(-15,15)
					
					//direction=point_direction(clamp(scrPX(),400+170*objLiarDanceAtk3Controller.mirror,400+300*objLiarDanceAtk3Controller.mirror),y,x,y)+random_range(-15,15)
					speed=random_range(6.5,12)
					gravity=random_range(0.1,0.2)
					free_variable[0]=random_range(1.25,2.5)
					tag="atk 3 lame bursts"
					depth=100
				}
			}
			instance_destroy()
		}
	}
	
	instance_create_depth(400,304,0,objLiarDanceAtk3PrimitiveTransition)
	
	rand=random(360)
	for (angle = rand; angle < rand+360; angle+=30) {
		a = instance_create(400,304,objCustomBullet);
		a.sprite_index=sprCustomRegularCherry
		a.image_index=(angle - rand) div 30
		a.image_xscale=0;
		a.image_yscale=0;
		a.b_trig=true;
		a.cx=400;
		a.cy=304;
		a.dir=angle;
		a.dir_inc=20
		a.deg_y=-mirror
		a.image_alpha=0.3+0.7*sign((angle - rand) mod 60)
		a.killer=(a.image_alpha==1)
		//a.free_variable[0]=sign((angle - rand) mod 60)
		a.tag="atk 3 last instagib"
	}
}

if t>=1686 and t<=1756 {
	with(objLiarDanceAtk3PrimitiveTransition) {
		for (i=0; i<120; i++) {
			r1[i]=lerp(r1[i],250-150*(i mod 2) + r_rand[i],0.05)		//inner radius
		}

		r=lerp(r,550,0.075)												//outer radius
	}
	with(objCustomBullet) {
		if tag=="atk 3 last instagib" {
			image_xscale=EaseOutCubic(t,0,1.25,70)
			image_yscale=image_xscale;
			dir_inc=EaseInOutSine(t,8,0,70)
			//len=EaseOutSine(t,0,150+32*free_variable[0],70)
			len=EaseOutSine(t,0,150+32*(image_alpha<1),70)
			if other.t>=1736 {
				image_alpha	+= 0.035
			}
		}
	}
	v=EaseInQuint(t-1686,0,96,70)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
}

if t==1756 {
		
	instance_create_depth(0,0,-100,objLiarDanceAtk3FinalTransition)
	with(objCustomBullet) {
		if tag=="atk 3 last instagib" {
			repeat(40) {
				a=instance_create(x,y,objCustomBullet)
				a.direction=point_direction(cx,cy,x,y)+random_range(-45,45)
				a.speed=random_range(2,10)
				a.sprite_index=sprite_index;
				a.image_index=image_index;
				a.tag="atk 3 last jumpscare"
			}
			instance_destroy()
		}
	}
	
	repeat(50) {
		len=random_range(100,700)
		dir=random(360)
		dir2=random(360)
		
		a=instance_create(400,304,objCustomBullet)
		a.x=400+lengthdir_x(len,dir2)
		a.y=304+lengthdir_y(len,dir2)
		a.image_xscale=lerp(2,9,(len-100)/600)
		a.image_yscale=a.image_xscale;
		a.image_alpha=0.6
		a.direction=random(360)
		a.speed=1
		a.persist=true
		a.killer=false
		a.image_blend=make_color_rgb(119,75,172)
		a.tag="atk 3 deco bs"
		
		a=instance_create(400,304,objCustomBullet)
		a.sprite_index=sprEmptyCherry;
		a.x=400+lengthdir_x(len,dir)
		a.y=304+lengthdir_y(len,dir)
		a.image_xscale=lerp(2,9,(len-100)/600)
		a.image_yscale=a.image_xscale;
		a.image_alpha=1
		a.direction=random(360)
		a.speed=1
		a.persist=true
		a.killer=false
		a.drop_shadow=false;
		a.draw=true
		a.image_blend=make_color_rgb(119,75,172)
		a.tag="atk 3 deco bs"
		
		
	}
}

if t>=1756 and t<=1786 {
	v=EaseOutSine(t-1756,96,-160,30)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	//show_debug_message(string(camera_get_view_x(view_camera[0]))+" "+string(camera_get_view_y(view_camera[0]))+" "+string(camera_get_view_width(view_camera[0]))+" "+string(camera_get_view_height(view_camera[0])))
	
	with(objLiarDanceAtk3FinalTransition) {
		surf_r=EaseOutSine(other.t-1756,0,800,30)
	}
}
if t==1786 {
	
	with(objLiarDanceAtk3PrimitiveTransition) {
		
		
		for (i=0; i<120; i++) {
			r1[i]=950
			r2[i]=1200
		}
		depth=-250
	}
	with(objPlayer) {
		image_alpha=0
	}
	instance_destroy(objShadowDrawer)
}
if t>=1786 and t<=1826 {
	with(objLiarDanceAtk3FinalTransition) {
		for (i=2; i<4; i++) {
			r[i]=EaseInOutSine(clamp(other.t-1786+10*(i-1),0,35),2000+50*i,0,35)
		}
		surf_r=EaseInOutSine(clamp(other.t-1801,0,20),800,0,20)
	}
	
	with(objLiarDanceAtk3PrimitiveTransition) {
		
		
		for (i=0; i<120; i++) {
			r1[i]=EaseInOutSine(clamp(other.t-1786,0,35),950,0,35)
		}
		//depth=-150
	}
	
	//show_debug_message(string(camera_get_view_x(view_camera[0]))+" "+string(camera_get_view_y(view_camera[0]))+" "+string(camera_get_view_width(view_camera[0]))+" "+string(camera_get_view_height(view_camera[0])))
	
	v=EaseInCubic(t-1786,-160,96,35)
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
}

if t==1826 {
	instance_destroy(objLiarDanceAtk3FinalTransition)
	instance_destroy(objCustomBullet)
	instance_destroy(objDecoCustomObject)
	
	v=0
	set_camera(v,v/1.3,800-v*2,608-v*2/1.3,0)
	
	
	with(objPlayer) {
		image_alpha=1
	}
}

with(objLiarDanceAtk3OptionSurfaceCircle) {
	if other.t<1676
		gravity_direction=point_direction(x,y,xstart,ystart)+7
	else {
		gravity+=0.1
		gravity_direction=point_direction(400,y,x,y)
	}
}

with(objCustomBullet) {
	if tag=="atk 3 lame bursts" {
		image_xscale=lerp(image_xscale,free_variable[0],0.15)
		image_yscale=image_xscale;
	}
	
	if tag=="atk 3 lazy wall" {
		x=modwrap(cx+lengthdir_x(len,dir),0,800)
		y=modwrap(cy+lengthdir_y(10,dir),96,512)
	}	
}

with(objLiarDanceAtk3Bullet) {
	if tag=="atk 3 overtake bursts" {
		image_xscale=lerp(image_xscale,1,0.1)
		image_yscale=image_xscale
	}
	if tag=="atk 3 human maniac bounce" {
		if other.t>=1300 and other.t<1380 {
			image_alpha+=0.05
			if image_alpha==1
				killer=true
		}
	}
	
	
	
	
	if tag=="atk 3 overtake circle parent" {
		x=lerp(x, 400+free_variable[0]*240, 0.1)
		y=lerp(y, ystart+free_variable[1], 0.1)
		if t>=22 {
			image_alpha-=0.05
			image_xscale+=0.05
			image_yscale=image_xscale
			if image_alpha<=0
				instance_destroy()
		}
	}
	if tag=="atk 3 overtake circle" {
		if t<22 {
			x=parent_id.x+lengthdir_x(len,dir)
			y=parent_id.y+lengthdir_y(len,dir)
			dir_inc=lerp(dir_inc, 0, 0.05)
		}
		if t==22 {
			direction=dir
			speed=5+max(0,1*sign(1-image_xscale))
			persist=false
		}
	}
	
	
	
	
	
	
	if tag=="atk 3 24h spawner" {
		if other.t-1260<=75
			y=EaseOutSine(other.t-1260,ystart, 480-64, 75)	
	}
	if tag=="atk 3 24h instagib circles" {
		image_alpha=lerp(image_alpha,0.325,0.25)
		if t<=5 {
			len=EaseOutSine(t,128,250,5)
		}
		x=xstart+lengthdir_x(len,dir)
		y=ystart+lengthdir_y(len,dir)
	}
	if tag=="atk 3 24h rising spawner" {
		if t<=20 {
			y=EaseOutSine(t,ystart,ystart-192,20)	
		}
		if t==20 {
			scrMakeCircle(x,y,"Foreground_cherries",random(360),8,5,objLiarDanceAtk3Bullet)
			instance_destroy()
		}
	}
	
	
	
	
	
	if tag=="atk 3 black world spawner" {
		x=lerp(x, cx+lengthdir_x(200,dir), 0.1)
		y=lerp(y, cy+lengthdir_y(32,dir*3),0.1)
	}
	if tag=="atk 3 black world circle" || tag=="atk 3 black world circle 2" {
		if instance_exists(parent_id) {
			x=lerp(x, parent_id.x+lengthdir_x(len,dir),0.1)
			y=lerp(y, parent_id.y+lengthdir_y(len,dir),0.1)
		}
		if other.t==1265 || other.t==1300 || other.t==1335 || other.t==1370 ||
			other.t==1265+140 || other.t==1300+140 || other.t==1335+140 {
			a=instance_create(x,y,objLiarDanceAtk3Bullet)
			a.direction=dir
			a.speed=5
			a.tag="atk 3 black world circle burst"
		}
	}
	if tag=="atk 3 black world spawner 2" {
		x=lerp(x, cx+lengthdir_x(32,dir*3), 0.1)
		y=lerp(y, cy+lengthdir_y(228,dir),0.1)
		
	}
	if tag=="atk 3 black world stuttering bursts" {
		if speed<2 {
			friction=0
			speed=2
		}
	}
	
}