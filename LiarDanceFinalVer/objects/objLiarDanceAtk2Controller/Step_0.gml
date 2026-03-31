//if instance_exists(objPlayer) {
    t++
//}
if !instance_exists(objPlayer) {
	
	with(objCustomBullet) {
		persist=false;	
	}
	
	//instance_destroy()	
}

if t==630 {
	instance_destroy(objCustomBullet)
	instance_destroy(objDarkness)
	instance_destroy(objLiarDanceAtk1SurfaceCopy)
	//instance_destroy(objUglyTransition1Style3_4)
	//instance_destroy(objUglyTransitionGUIDrawerStyle3_4)
	//instance_destroy(objAtk1TransitionStyle3_4)
	instance_destroy(objDecoCustomObject)
instance_destroy(objLiarDanceAtk1TransitionText)

	with(objPlayer) {
	    frozen=false
		visible=true
	    x=96
		xprevious=96
	}
    
	with(objShadowDrawer) {
		draw_player=true	
	}
	
	var a = instance_create(0,0,objDarkness)
	a.image_alpha=0.7
	a.tag="atk 2"
	a.depth=-700
    
	v=0
	set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
	
	camera_set_view_angle(0,0)
	//view_angle[0]=0
    
	rangle=20;
	for (var i=0; i<3; i++) {
	    ang_inc=45
	    for (var ang=0; ang<360; ang+=ang_inc) {
	        for (j=0; j<3; j++) {
	            var a = instance_create(400,304,objCustomBullet);
	            a.b_trig=true;
	            a.cx=400;
	            a.cy=304;
	            a.dir=ang+rangle+ang_inc*i/3;
	            a.len=48;
	            a.tag="atk 2 spawner"
	            a.free_variable[0]=2-i;
	            a.free_variable[1]=j;
	            a.dir_inc=4+8*(i mod 2)
	            a.persist=true;
	            a.drop_shadow=false
	        }
	    }
	}
}

if t>=630 and t<=913 {

	if t==855 and instance_exists(objPlayer) {         //or t==870 or t==885 or t==900 {
	    for (_x=0; _x<=800; _x+=800) {
	        for (_y=136; _y<=472; _y+=336) {
	            rand=0
	            for (var ang=rand; ang<rand+360; ang+=20) {
	                for (var i=0; i<3; i++) {
	                    a = instance_create(_x, _y, objCustomBullet);
	                    //a.b_trig=true;
	                    a.cx=_x;
	                    a.cy=_y;
	                    a.xprevious=_x;
	                    a.yprevious=_y;
	                    a.dir=ang;
	                    a.sprite_index=sprWBCherry_2
	                    a.image_xscale=1.7-i*0.05;
	                    a.image_yscale=a.image_xscale;
	                    a.image_blend=scrLiarDanceColorPicker(i+atk2_indicator)
	                    a.tag="atk 2 beloved instagibs"
	                    a.free_variable[0]=i
	                    a.free_variable[1]=144
	                    //a.drop_shadow=false;
	                }
	            }
	        }
	    }
	}

	if t>=869 and t<=884 {
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" {
	            persist=true
	            killer=false;
	            free_variable[1]=80
	            if other.t==870 
	                len=16
	            dir_inc=lerp(-15,0,(other.t-870)/15)
	            cx=EaseOutSine(other.t-869,xprevious,400+lengthdir_x(80,64+120*free_variable[0]),15)
	            cy=EaseOutSine(other.t-869,yprevious,304+lengthdir_y(80,64+120*free_variable[0]),15)
	        }
	    }
	}
    
	if t>=884 and t<=900 {
	    with(objCustomBullet) {
	        if tag=="atk 2 beloved instagibs" {
	            persist=true
	            killer=false;
	            free_variable[1]=64+24*free_variable[0]*1.5
	            image_xscale=0.65+0.5*free_variable[0]
	            image_yscale=image_xscale
	            dir_inc=lerp(15,0,(other.t-870)/15)
	            if other.t==870 
	                len=16
	            cx=400+EaseOutSine(other.t-884,lengthdir_x(80,64+120*free_variable[0]),0,16)
	            cy=304+EaseOutSine(other.t-884,lengthdir_y(80,64+120*free_variable[0]),0,16)
	        }
	    }
        
	}
    
	if t==913 {
        
	    a = instance_create(0,0,objDarkness)
	    a.image_alpha=0.7
	    a.tag="atk 2.5"
	    a.depth=-700
	}
	
	with(objDarkness) {
	    if tag=="atk 2" {
	        image_alpha-=0.014
	        if image_alpha<=0
	            instance_destroy()
	    }
	}
	
	with(objDecoCustomObject) {
	    if tag=="atk 2 trail" {
	        image_xscale-=0.05;
	        image_yscale=image_xscale;
	        if image_xscale<=0
	            instance_destroy()
	        if other.t==913
	            instance_destroy()
	    }
	}
	with(objCustomBullet) {
	    if tag=="atk 2 spawner" {
	        if other.t<914 {
                
	            image_xscale=lerp(image_xscale,0.75+0.25*free_variable[0],1/15)
	            image_yscale=image_xscale;
	            len=lerp(len,32+48*free_variable[0],1/15);
	            if free_variable[0]==0 and free_variable[1]==0 {
	                if (t mod 6 == 0 and other.t <= 840) || (t mod 9 == 0 and other.t > 840) {
	                    var a = instance_create(x,y,objCustomBullet);
	                    a.direction=dir+180+dcos(t*2.7)*34;
	                    a.speed=7;
	                    a.image_xscale=image_xscale;
	                    a.image_yscale=image_yscale;
	                    a.tag="chorus atk 1"
	                }
	                if t mod 9 == 0 {
	                    var a = instance_create(x,y,objCustomBullet);
	                    a.direction=dir+180+dcos(t*2.7)*30+45;
	                    a.speed=8;
	                    a.image_xscale=image_xscale;
	                    a.image_yscale=image_yscale;
	                    a.killer=false;
	                    a.sprite_index=sprBlockMaskCentered;
	                    a.free_variable[0]=random_range(1,3)*choose(-1,1)
	                    a.image_blend=merge_colour(make_color_rgb(119, 75, 172),c_black,0.5)
	                    a.image_alpha=0.15
	                    a.drop_shadow=false;
	                    a.tag="chorus atk 1 visuals"
	                }
	            }
	            if other.t mod 17 == 1 {
	                free_variable[0] = (free_variable[0] + 1) mod 3;
	            }
	        }
	        if other.t==913 {
	            b_trig=false
	            direction=point_direction(scrPX(),scrPY(),x,y)
	            gravity=0.2;
	            speed=random_range(3,10)
	            persist=false
	        }
	    }
	    if tag=="chorus atk 1" {
	        if other.t==913 {
	            direction=point_direction(scrPX(),scrPY(),x,y)
	            gravity=0.2;
	            speed+=random_range(-1,5)
	            persist=false
	            image_blend=c_white
	        }
	    }
	    if tag=="chorus atk 1 visuals" {
	        image_angle+=2;
	        if other.t==913 {
	            direction=point_direction(scrPX(),scrPY(),x,y)
	            gravity=0.2;
	            persist=false
	        }
	    }
	    if tag=="atk 2 beloved instagibs" {
	        if other.t!=913 {
	            x=cx+lengthdir_x(len,dir)
	            y=cy+lengthdir_y(len,dir)
	            len=lerp(len,free_variable[1],0.18)
	        }
	        else {
	            direction=dir;      //90+random_range(-30,30)
	            speed=5+free_variable[0]*2
				killer=true
	        }
	    }
	}
}

if t>=914 and t<=1196 {
	with(objDarkness) {
	    if tag=="atk 2.5" {
	        image_alpha-=0.014
	        if image_alpha<=0
	            instance_destroy()
	    }
	}
    
	if t mod 20 == 0 and instance_exists(objPlayer) {
	    with(objCustomBullet) {
	        if tag=="atk 3 circles into lines" {
	            var index=ds_list_find_index(other.atk3_list,free_variable[0]);
	            image_blend=scrLiarDanceColorPicker(index)
	            cx=index*34
	            tag="atk 3 line formation"
	        }
	    }
	    rand=random(360)
	    _x=random(800)
	    _y=144+random(64)
	    inc=choose(-6,6)
	    for (var ang=rand; ang<rand+360; ang+=40) {
	        a=instance_create(_x, 64, objCustomBullet);
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
            
	        var index = (ang-rand) mod 120
	        if index == 0 and t<1090 {
	            a=instance_create(_x, 64, objCustomBullet);
	            a.image_xscale=1.25;
	            a.image_yscale=a.image_xscale
	            a.image_blend=c_white
	            a.free_variable[0]=((ang-rand) div 120) + 3*(t-920) div 20
				//show_message(a.free_variable[0])
	            a.cx=_x;
	            a.cy=_y;
	            a.xprevious=_x+random_range(-64,64)
	            a.dir=ang;
	            a.dir_inc=inc
	            a.len=0
	            a.tag="atk 3 circles into lines"
	            a.persist=true;
	        }
	    }
	}
	if t mod 5 == 0 and instance_exists(objPlayer) {
	    a = instance_create(400+random_range(-350,350),32,objCustomBullet)
	    a.direction=point_direction(400,-912,a.x,a.y)
	    a.speed=random_range(5,9)
	    a.image_xscale=random_range(0.8,1)
	    a.image_yscale=a.image_xscale;
	    a.tag="atk 3"
	}
	if t mod 4 == 0 and instance_exists(objPlayer) {
	    a = instance_create(random(800),32,objCustomBullet)
	    a.direction=point_direction(400,-912,a.x,a.y)
	    a.speed=random_range(5,8)
	    a.image_xscale=random_range(1,1.25)
	    a.image_yscale=a.image_xscale;
	    a.drop_shadow=false;
	    a.killer=false;
	    a.image_blend=merge_colour(make_color_rgb(119, 75, 172),c_black,0.5)
	    a.image_alpha=0.15
	    a.tag="atk 3"
	}
	with(objCustomBullet) {
	    if tag=="atk 3 circles" || tag=="atk 3 circles into lines" {
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
	    if tag=="atk 3 line formation" {
	        x = lerp(x, cx, 0.15)
	        y = lerp(y, 144, 0.15)
	    }
	}
    
	if t==1134 || t==1152 || t==1170 {
	    //if t!=1170
	        //view_yview[0]=-8
	    with(objCustomBullet) {
	        if tag=="atk 3 line formation" {
	            if image_blend==scrLiarDanceColorPicker(other.atk2_indicator) {
	                direction=270;
	                speed=14;
					image_xscale+=0.25;
					image_yscale=image_xscale;
	                tag="atk 3 line fall"
	            }
	        }
	        else if tag!="atk 3 line fall" and tag!="atk 3 trail" {
	            image_alpha=0.15
	            killer=false;
	            drop_shadow=false;
	        }
	    }
	    atk2_indicator = (atk2_indicator+1) mod 3
	}
    
	if t>=1114 || t<=1170 {
	    //view_yview[0]=lerp(view_yview[0],0,0.25)
	    with(objCustomBullet) {
	        if tag=="atk 3 line fall" {
	            if t mod 2 == 0 {
	                a=instance_create(x,y,objCustomBullet)
	                a.image_blend=c_black
	                a.image_xscale=image_xscale;
	                a.image_yscale=image_xscale;
	                a.killer=false;
	                a.drop_shadow=false;
	                a.tag="atk 3 trail"
	            }
	        }
	        if tag=="atk 3 trail" {
	            image_xscale-=0.1
	            image_yscale-=0.1
	            if image_xscale<=0
	                instance_destroy()
	        }
	    }
	}
    
	if t>=1170 and t<=1195 {
	    v = EaseInExpo(t-1170,0,350,25)
	    set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
	}
    
	//1135, 1152, 1170
}

if t>=1195 and t<=1210 {
	if t==1195 {
	    //view_angle[0]=random_range(5,25)*choose(-1,1)
	    with(objPlatform) visible=false;
	    instance_destroy(objCustomBullet)
	    with(objPlayer) {
	        x=400; xprevious=400;
	        y=304; yprevious=304;
	    }
	}
	v = EaseOutExpo(t-1195,350,0,15)
	set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
}

if t==1195 || t==1215 {
	repeat(100) {
	    //_x = 400-random(430)*sign(t-1205)*atk3_to_4_side
	    //_y=304+random_range(-208,208)
		
		_x=random(800)
		_y=304-random(208)*sign(t-1205)
		
	    a = instance_create(400,304,objCustomBullet)
	    a.killer=false;
	    a.drop_shadow=false;
	    a.image_xscale=random_range(1,1.75)
	    a.image_yscale=a.image_xscale
	    a.image_alpha=-0.1
	    a.image_angle=random(360)
	    a.tag="atk 3 to 4"
	    a.persist=true
	    a.cx=400
	    a.cy=304
	    a.dir=point_direction(a.cx,a.cy,_x,_y)
	    a.len=point_distance(a.cx,a.cy,_x,_y)
	    a.free_variable[0]=1
	}
}

if t>=1195 and t<=1258 {
	with(objCustomBullet) {
	    if tag=="atk 3 to 4" {
	        x = lerp(x, cx+lengthdir_x(len*free_variable[0],dir), 0.4)
	        y = lerp(y, cy+lengthdir_y(len*free_variable[0],dir), 0.4)
	        if other.t<=1238
	            image_alpha=lerp(image_alpha, 0.15, 0.45)
	    }
	}
	/*
	with(objTransition2TargetStyle3_4) {
	    x = lerp(x, cx+lengthdir_x(len,dir), 0.4)
	    y = lerp(y, cy+lengthdir_y(len,dir), 0.4)
	}
	*/
}

if t==1238 || t==1248 {
	with(objCustomBullet) {
	    if tag=="atk 3 to 4" {
	        free_variable[0]--
	        image_alpha=1
			if other.t==1248 {
		        image_xscale+=random_range(0.1,1.5)
		        image_yscale=image_xscale
			}
	        depth=1000
	        if place_meeting(x,y,objPlayer) and other.t==1238 and y<480
	            scrKillPlayer()
	    }
	}
	if t==1248 {
	    depth=1000
		
		/*
	    instance_create(0, 0, objTransition2Style3_4)
        
	    repeat(35) {
	        a = instance_create(random(800), random(608), objTransition2SurfTargetStyle3_4)
	        a.sprite_index=choose(sprTeto1_2Style3_4, sprTetoPeaceStyle3_4, sprTetoOdoreStyle3_4,sprTeto2_1Style3_4)
	        if a.sprite_index==sprTeto2_1Style3_4 || a.sprite_index==sprTetoPeaceStyle3_4 || a.sprite_index==sprTeto1_2Style3_4 {
	            a.image_xscale=random_range(0.35,0.5)
	        }
	        else {
	            a.image_xscale=random_range(0.5,1)
	        }
	        a.image_yscale=a.image_xscale
	        a.image_angle=random_range(-45,45)
	    }
	    a=instance_create(400,304,objTransition2SurfTargetStyle3_4)
	    a.image_xscale=0.4
	    a.image_yscale=0.4
        
	    repeat(85) {
	        _x = 400-random_range(-350, 350)
	        _y=304+random_range(-208,208)
	        a = instance_create(400,304,objTransition2TargetStyle3_4)
	        a.image_xscale=random_range(2.5,6)
	        a.image_yscale=a.image_xscale
	        a.image_angle=random(360)
	        a.cx=400
	        a.cy=304
	        a.dir=point_direction(a.cx,a.cy,_x,_y)
	        a.len=point_distance(a.cx,a.cy,_x,_y)
	    }
		*/
	}
}
