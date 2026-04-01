/*
592 - sprLiarDanceAtk1TransitionText
612-630 - spam
*/


if instance_exists(objPlayer) {
    t++
}

else {
	instance_destroy()	
}

if t>=630 and t<=913 {

	if t mod 20 == 0 {
	
		rand=random(360)
		_x=random(800)
		_y=144+random(64)
		inc=choose(-6,6)
		for (var ang=rand; ang<rand+360; ang+=40) {
		    var a=instance_create(_x, 64, objCustomBullet);
			a.sprite_index=sprWBCherry_2
		    a.image_xscale=1.4;
		    a.image_yscale=a.image_xscale
		    a.cx=_x;
		    a.cy=_y;
		    a.xprevious=_x+random_range(-64,64)
		    a.dir=ang;
		    a.dir_inc=inc
		    a.len=0
		    a.tag="atk 3 circles"
		    a.persist=true;
		    a.free_variable[0]=((ang-rand) div 40) mod 2
			a.draw=true
			a.image_blend=scrLiarDanceColorPicker(ang-rand)
		}
	}

	if t mod 5 == 0 and instance_exists(objPlayer) {
		var a = instance_create(400+random_range(-350,350),32,objCustomBullet)
		a.sprite_index=sprWBCherry_2
		a.direction=point_direction(400,-912,a.x,a.y)
		a.speed=random_range(5,9)
		a.image_xscale=random_range(0.8,1)
		a.image_yscale=a.image_xscale;
		a.tag="atk 3"
			a.draw=true
	}
	if t mod 4 == 0 and instance_exists(objPlayer) {
		var a = instance_create(random(800),32,objCustomBullet)
		a.sprite_index=sprWBCherry_2
		a.direction=point_direction(400,-912,a.x,a.y)
		a.speed=random_range(5,8)
		a.image_xscale=random_range(1,1.25)
		a.image_yscale=a.image_xscale;
		a.drop_shadow=false;
		a.killer=false;
		a.image_blend=merge_colour(make_color_rgb(119, 75, 172),c_black,0.5)
		a.image_alpha=0.15
		a.tag="atk 3"
			a.draw=true
	}
	
	
	if t==855 and instance_exists(objPlayer) {         //or t==870 or t==885 or t==900 {
		for (_x=-1; _x<2; _x+=2) {
			for (_y=-1; _y<2; _y+=2) {
	            rand=0
	            for (var ang=0; ang<360; ang+=20) {
	                for (var i=0; i<3; i++) {
						var a = instance_create(400+400*_x, 304+168*_y, objCustomBullet);
		                a.cx=a.x;
		                a.cy=a.y;
		                a.xprevious=a.x;
		                a.yprevious=a.y;
		                a.dir=ang+rand;
		                a.sprite_index=sprWBCherry_2
		                a.image_xscale=1.7-i*0.05;
		                a.image_yscale=a.image_xscale;
		                a.image_blend=scrLiarDanceColorPicker(i+atk2_indicator)
		                a.tag="atk 2 beloved instagibs"
						a.draw=true;
		                a.free_variable[0]=i
		                a.free_variable[1]=144
						a.b_trig=true;
						a.persist=true;
						a.killer=false;
						a.image_alpha=0.25
					}
				}
			}
		}
	}
	
	if t>=855 and t<=869 {
		
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" {
				len=lerp(len,free_variable[1],0.2)
			}
		}
	}
	
	if t>=869 and t<=884 {
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" {
				if other.t==869 {
					xprevious=x;
					yprevious=y;
				}
				
				killer=false;
				len=lerp(len,32,0.24)
				image_xscale=lerp(image_xscale,1,0.24)
				image_yscale=image_xscale;
				
	            cx=EaseOutSine(other.t-869,xprevious,400+lengthdir_x(80,64+120*free_variable[0]),15)
	            cy=EaseOutSine(other.t-869,yprevious,304+lengthdir_y(80,64+120*free_variable[0]),15)
				//y=EaseOutSine(other.t-869,yprevious,152+152*free_variable[3]+(free_variable[4]*32)+(free_variable[0]*10.6),15)
	        }
	    }
	}
	
	if t>=884 and t<=900 {
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" {
				
				if other.t==884 {
					b_trig=false;
					direction=dir+random_range(-5,5)
					accel=random_range(0.15,0.3)
				}
				
				image_alpha+=0.075
				if image_alpha>=1
					killer=true;
			}
		}
	}
	
	if t==913 {
		
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" || tag=="atk 3 circles" || tag=="atk 3" {
				b_trig=false;
	            direction=point_direction(scrPX(),scrPY(),x,y)
	            gravity=0.17;
	            speed=random_range(5,12)
	            persist=false
			}
		}
		/*
	    var a = instance_create(0,0,objDarkness)
	    a.image_alpha=0.7
	    a.tag="atk 2.5"
	    a.depth=-700
		*/
	}
	
	
	
	
	
	
	
	
	with(objCustomBullet) {
		if tag=="atk 3 circles" {
		    if t<=30 {
		        _x = EaseOutSine(clamp(t,0,20),xprevious,cx,20);
		        _y = EaseOutSine(clamp(t,0,20),64,cy,20);
                
		        if t==30 {
		            cx=_x;
		            cy=_y;
		            b_trig=true;
		            persist=false;
		            len_inc=5.5+2*free_variable[0]
		        }
                
		        dir_inc=lerp(dir_inc,0,0.125);
		        len=lerp(len,48,0.08)
		        x = _x + lengthdir_x(len,dir);
		        y = _y + lengthdir_y(len,dir);
		    }
		}
	}
}



if t>=914 and t<=1196 {
	
	
	
	
	
	if t>=1170 and t<=1195 {
		with(objCustomBullet) {
			killer=false;	
		}
	    v = EaseInExpo(t-1170,0,350,25)
	    set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
	}
}

if t>=1195 and t<=1210 {
	if t==1195 {
	    instance_destroy(objCustomBullet)
		instance_destroy(objSSCherry)
	    with(objPlayer) {
	        x=400; xprevious=400;
	        y=304; yprevious=304;
	    }
	}
	v = EaseOutExpo(t-1195,350,0,15)
	set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
}


if t==1195 || t==1215 {
	repeat(104) {
	    _x = 400-random(430)*sign(t-1205)*atk3_to_4_side
	    _y=304+random_range(-208,208)
	    var a = instance_create(400,304,objCustomBullet)
	    a.killer=false;
	    a.drop_shadow=false;
	    a.image_xscale=random_range(1.75,2.25)
	    a.image_yscale=a.image_xscale
	    a.image_alpha=-0.1
	    a.image_angle=random(360)
	    a.tag="true final"
	    a.persist=true
	    a.cx=400
	    a.cy=304
	    a.dir=point_direction(a.cx,a.cy,_x,_y)
	    a.len=point_distance(a.cx,a.cy,_x,_y)
	    a.free_variable[0]=1;
		a.free_variable[1]=final_index;
		a.free_variable[2]=random_range(0.95,1.1)
		a.draw=true
		
		final_index++
	}
}


if t>=1195 and t<=1258 {
	with(objCustomBullet) {
	    if tag=="true final" {
			if free_variable[0]>-1 {
		        x = lerp(x, cx+lengthdir_x(len*free_variable[0],dir), 0.4)
		        y = lerp(y, cy+lengthdir_y(len*free_variable[0],dir), 0.4)
			}
			else {
				x = lerp(x, other.xx[free_variable[1]], 0.235)
				y = lerp(y, other.yy[free_variable[1]], 0.235)
				image_xscale=lerp(image_xscale,free_variable[2],0.4)
				image_yscale=image_xscale
			}
			
			
			if free_variable[0]==0 {
				//image_angle=0
				image_xscale=lerp(image_xscale,1,0.5)
				image_yscale=image_xscale
			}
	        if other.t<=1238
	            image_alpha=lerp(image_alpha, 0.15, 0.45)
	    }
	}
}


if t==1238 || t==1248 {
	with(objCustomBullet) {
	    if tag=="true final" {
	        free_variable[0]--
	        image_alpha+=1
			if other.t==1248 {
		        image_xscale+=random_range(0.1,1.5)
		        image_yscale=image_xscale
			}
	    }
		killer=false;
	}
	if t==1248 {
		
		instance_destroy(objBlock)
		/*
		instance_create_depth(0,0,250,objLiarDanceFinalSurface)
		
		repeat(5) {
			instance_create(random(800),random(608),objLiarDanceFinalSurfaceTarget)	
		}
		repeat(60) {
			a=instance_create(400,304,objLiarDanceFinalSurfaceMask);
			a.image_xscale=random_range(1,3);
			a.image_yscale=a.image_xscale;
			a.xprevious=irandom(800)
			a.yprevious=irandom(608)
		}
		*/
		/*
		repeat(250) {
			a=instance_create_depth(400,304,260,objCustomBullet)
			a.draw=true;
			a.drop_shadow=false;
			a.killer=false;
			a.tag="final bs"
			a.free_variable[0]=random_range(1,8)
			a.free_variable[1]=irandom(800)
			a.free_variable[2]=irandom(608)
			a.image_angle=random(360)
			a.image_blend=choose(
				make_colour_rgb(241,73,84),
				make_colour_rgb(252,233,80)
				//make_colour_rgb(78,0,172),
			)
		}
		*/
	}
}

if t>=1248 {
	with(objPlayer) {
		x=400;
		xprevious=x;
		y=304;
		yprevious=y;
	}
	with(objLiarDanceFinalSurfaceMask) {
		x=lerp(x,xprevious,0.5)
		y=lerp(y,yprevious,0.5)
		image_xscale=lerp(image_xscale,7,0.2)
		image_yscale=image_xscale;
	}
	with(objCustomBullet) {
		if tag=="final bs" {
			image_xscale=lerp(image_xscale,free_variable[0],0.2);
			image_yscale=image_xscale;
			x=lerp(x,free_variable[1],0.15)
			y=lerp(y,free_variable[2],0.15)
			
		}
	}
	if t<=1298 {
		v = EaseOutExpo(t-1248,0,-32,50)
		set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
	}
}

if t==9000 {
	instance_destroy()
}
