/*
592 - sprLiarDanceAtk1TransitionText
612-630 - spam
*/


//if instance_exists(objPlayer) {
    t++
//}

if !instance_exists(objPlayer) {
	with(objCustomBullet) {
		persist=false;	
	}
}


if t>=65 and t<=67+150 {
	v=EaseOutCubic(t-67,160,0,150)
	set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
	intro_ratio=EaseOutCubic(t-67,0.2,1,150)
}
if t<85 {
	with(objPlayer)
	    frozen=true
}
if t==85 {
	//show_message(instance_exists(objShadowDrawer))
	with(objPlayer)
	    frozen=false
}

if t>=65 and t<=612 {
	if t<=561 {
	    with(objDarkness) {
	        if tag=="teto intro" {
	            y=lerp(y,400,1/300)
	        }
	    }
var Mstep=0
if(t<345){Mstep=2}
	    for (var i=0; i<4; i++) {
	        if (t==67+intro_step[i]-Mstep || t==84+intro_step[i]-Mstep || t==103+intro_step[i]-Mstep
	            || t==116+intro_step[i]-Mstep || t==129+intro_step[i]-Mstep || t==136+intro_step[i]-Mstep 
	            || t==155+intro_step[i]-Mstep || t==173+intro_step[i]-Mstep || t==185+intro_step[i]-Mstep 
	            || t==200+intro_step[i]-Mstep) and instance_exists(objPlayer)
	        {
	            with(objCustomBullet) {
	                if tag=="atk 1 bursts" || tag=="atk 1 wall"{
	                    distance=8
	                    if tag=="atk 1 bursts"
	                        distance=random_range(8,16)*(1.5+(other.t>=347))
	                    x+=lengthdir_x(distance,direction)
	                    y+=lengthdir_y(distance,direction)
	                }
	            }
                
	            with(objDecoCustomObject) {
	                if tag=="atk 1 bursts"{
	                        distance=random_range(8,16)*(1.5+(other.t>=347))
	                    x+=lengthdir_x(distance,direction)
	                    y+=lengthdir_y(distance,direction)
	                }
	            }
                
                
                
	            var xx=400-random_range(-300,300)*intro_ratio
	            var yy=304-random_range(80,144)*max(intro_ratio+0.25,1)     //random_range(160,224)
                
				i2=0;
	            repeat_amount=7
	            repeat(repeat_amount) {
					
					
	                var a = instance_create_layer(xx,yy,"Foreground_cherries",objCustomBullet);
	                a.direction=random(360);
	                a.speed=random_range(2,10);
	                a.image_xscale=4;
	                a.image_yscale=a.image_xscale;
	                a.free_variable[0]=random_range(0.5,1.15);    //end size
	                a.free_variable[1]=(i2<(repeat_amount/2));      //only half of the objects leave trail
	                a.persist=true;
	                a.tag="atk 1 bursts";
                    
					
	                var a2 = instance_create_layer(xx,yy,"Background_cherries",objDecoCustomObject);
	                a2.direction=random(360);
	                a2.speed=random_range(2,10);
	                a2.image_xscale=4;
	                a2.image_yscale=a2.image_xscale;
	                a2.image_blend=merge_colour(make_color_rgb(119, 75, 172),c_black,0.1);//make_colour_rgb(84,53,122)
	                a2.image_alpha=0.7;
	                a2.free_variable[0]=random_range(1.25,1.715);    //end size
	                a2.free_variable[1]=(i2<(repeat_amount/2));      //only half of the objects leave trail
	                a2.persist=true;
	                a2.killer=false;
	                a2.tag="atk 1 bursts";
	                a2.drop_shadow=false;
	                //a.depth=1000;
					//show_message(a2.depth)
					
					//show_message(a.depth)
	                i2++
	            }
	        }
	    }
        
	    if t==345 {
	        for (var yy=128; yy<=480; yy+=32) {
	            var a=instance_create(-9,yy,objCustomBullet);
	            a.direction=0;
	            a.speed=0.75;
	            a.tag="atk 1 wall";
	            a=instance_create(809,yy,objCustomBullet);
	            a.direction=180;
	            a.speed=0.75;
	            a.tag="atk 1 wall";
	        }
	    }
	}
	with(objDecoCustomObject) {
	    if tag=="atk 1 bursts" {
	        if other.t<561
	            speed=lerp(speed,2,0.05)
            
	        if other.t==561 {
	            direction=random(360)
	            speed=random_range(0.2,0.5)
	            tag="atk 1 end"
	        }
            
	        if t > 4 {
	            image_xscale=lerp(image_xscale,free_variable[0],0.1)
	            image_yscale=image_xscale
	        }
	        if x<0 || x>800 || y < 100 || y > 500
	            persist=false
	    }
	}
	with(objCustomBullet) {
	    if tag=="atk 1 bursts" {
	        if other.t<561
	            speed=lerp(speed,2,0.05)
	        if other.t==561 {
                
	            //direction=random(360)
	            speed=random_range(0.2,0.5)
					gravity_direction=point_direction(x,y,scrPX(),scrPY())
				gravity=0.1-0.2*(y>476)
	            tag="atk 1 end"
                
	            if killer {
	                var a=instance_create_depth(x,y,depth+1,objCustomBullet);
	                a.direction=random(360);
	                a.speed=random_range(0.2,0.5);
	                a.image_xscale=random_range(0.2,image_xscale);
	                a.image_yscale=a.image_xscale;
	                a.image_blend=make_colour_rgb(252,233,80);
	                //a.depth=depth+1;
	                a.drop_shadow=false;
	                a.tag=tag;
                    
	                a=instance_create_depth(x,y,depth+1,objCustomBullet);
	                a.direction=random(360);
	                a.speed=random_range(0.2,0.5);
	                a.image_xscale=random_range(0.2,image_xscale);
	                a.image_yscale=a.image_xscale;
	                a.image_blend=make_colour_rgb(241,73,84);
	                //a.depth=depth+1;
	                a.drop_shadow=false;
	                a.tag=tag;
	            }
	            //friction=speed/34
	        }
	        //if other.t>=561 and t<=595 {
            
	        //}
	        if t > 4 {
	            image_xscale=lerp(image_xscale,free_variable[0],0.1)
	            image_yscale=image_xscale
	        }
	        if x<0 || x>800 || y < 100 || y > 500
	            persist=false
	    }
	    if tag=="atk 1 wall" {
	        if other.t==561 {
                
	            //direction=random(360)
	            speed=random_range(0.2,0.5)
				gravity_direction=point_direction(x,y,scrPX(),scrPY())
				gravity=0.1
	            tag="atk 1 end"
                
	            var a=instance_create_depth(x,y,depth+1,objCustomBullet);
	            a.direction=random(360)
	            a.speed=random_range(0.2,0.5)
	            a.image_xscale=random_range(0.2,image_xscale)
	            a.image_yscale=a.image_xscale;
	            a.image_blend=make_colour_rgb(252,233,80)
	            //a.depth=a.depth+1
	            a.drop_shadow=false;
	            a.tag=tag
                
	            a=instance_create_depth(x,y,depth+1,objCustomBullet);
	            a.direction=random(360)
	            a.speed=random_range(0.2,0.5)
	            a.image_xscale=random_range(0.2,image_xscale)
	            a.image_yscale=a.image_xscale;
	            a.image_blend=make_colour_rgb(241,73,84)
	            //a.depth=a.depth+1
	            a.drop_shadow=false;
	            a.tag=tag
                
	            //friction=speed/34
	        }
	    }
	    if tag=="atk 1 bursts trail" {
	        image_xscale-=0.1;
	        image_yscale=image_xscale;
	        if image_xscale<=0
	            instance_destroy()
	    }
	}
}

if t==592 {
    
	instance_create(0,0,objLiarDanceAtk1SurfaceCopy)
	
	with(objPlatform)
	    visible=false
    
	with(objDecoCustomObject) {
	    if tag=="atk 1 bursts" {
	        speed=0;
	    }
	}
	with(objCustomBullet) {
	    //if tag=="atk 1 end" {
	        speed=0;
	        killer=false;
			gravity=0
	    //}
		
	}
	
	a = instance_create(0,0,objDarkness)
	a.image_blend=c_black;
	a.image_alpha=0.7
	a.tag="atk 1 end"
	a.depth=-700
    
	//instance_create(0,0,objAtk1TransitionStyle3_4)
    
	//instance_create(0,0,objUglyTransitionGUIDrawerStyle3_4)
    /*
	a=instance_create(400,304,objUglyTransition1Style3_4);
	a.image_speed=3/17
	a.tag="atk 1 transition spawner"
	*/
	
	a=instance_create_depth(400,304,-500,objLiarDanceAtk1TransitionText)
}

if t==593 {
	
	with(objPlayer) {
	    frozen=true
		visible=false
	}
	
	with(objShadowDrawer) {
		draw_player=false	
	}
}

if t>=595 and t<=612 {
	
	with(objLiarDanceAtk1TransitionText) {
		
		if (other.t-592) mod 6 == 0 
			image_index++
			
		if other.t==612 {
			bg_flag=1
			t_inc=1
		}
	}
	
	camera_set_view_angle(0,EaseOutExpo(t-595,0,15,17))
	
	v=EaseOutExpo(t-595,0,80,17)
	set_camera(v,v/1.3/1.3,800-v*2,608-v*2/1.3,0)
}

/*
if t>=612 and t<=630 {
	with(objUglyTransition1Style3_4) {
	    if tag=="atk 1 transition spawner" {
	        image_speed=0
	    }
	    else {
	        depth++
	        tag++
	        tag = tag mod 2
	        if tag==1
	            image_blend=make_colour_rgb(252,233,80)
	        else
	            image_blend=make_colour_rgb(241,73,84)
	    }
	}
	scale=0.15
	for (var i = 0; i < (t-612)+1; i++) {
	    for (var j = 0; j < i-1; j++) {
	        var a=instance_create(832-96*clamp(i-1,0,8),128+48*clamp(j,0,7),objUglyTransition1Style3_4);
	        a.image_xscale=scale;
	        a.image_yscale=scale;
	        a.image_speed=0;
	        a.image_index=3;
            
	        if (i+j) mod 2 == 0 {
	            a.image_blend=make_colour_rgb(252,233,80)
	            a.tag=1
	        }
	        else {
	            a.image_blend=make_colour_rgb(241,73,84)
	            a.tag=0
	        }
	        var aa = instance_create(736-96*clamp(j,0,7),128+48*clamp(i-1,0,8),objUglyTransition1Style3_4);
	        aa.image_xscale=scale;
	        aa.image_yscale=scale;
	        aa.image_speed=0;
	        aa.image_index=3;
            
	        if (i+j) mod 2 == 0 {
	            aa.image_blend=make_colour_rgb(252,233,80)
	            aa.tag=1
	        }
	        else {
	            aa.image_blend=make_colour_rgb(241,73,84)
	            aa.tag=0
	        }
	    }
	}
}
*/

