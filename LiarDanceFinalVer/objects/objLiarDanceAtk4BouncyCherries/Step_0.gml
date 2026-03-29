
image_angle+=free_variable[0]
if x<-32
	instance_destroy()
inst_place=instance_place(x,y,objBlock)
if inst_place!=noone {
	if inst_place.y>y {
		vspeed=-abs(vspeed)
		gravity=free_variable[2]/2
		if flag==1 {
			repeat(4) {
				a=instance_create_depth(x,y,depth,objCustomBullet)
				a.sprite_index=sprite_index;
				a.image_xscale=random_range(0.7,0.85);
				a.image_yscale=a.image_xscale;
				a.image_index=image_index;
				a.direction=90+random_range(-15, 15)
				a.speed=random_range(4,10)
				a.gravity=0.15;
				a.tag="atk 4 little explosions"
				a.draw=true
			}
			repeat(15) {
				a=instance_create_depth(x,y,depth+1,objCustomBullet)
				a.sprite_index=sprWBCherry;
				a.image_blend=make_colour_hsv((image_index*21) mod 255,255,255)
				a.image_xscale=random_range(0.4,0.6);
				a.image_yscale=a.image_xscale;
				a.image_index=image_index;
				a.direction=90+random_range(-15, 15)
				a.speed=random_range(4,10)
				a.gravity=0.15;
				a.tag="atk 4 little explosions deco"
				a.draw=true
				a.image_alpha=0.2
				a.killer=false;
			}
			flag=0
			alarm[0]=4
		}
		/*
		for (angle=0; angle<360; angle+=30) {
			a=instance_create_depth(x,y,depth,objCustomBullet)
			a.sprite_index=sprite_index;
			a.image_xscale=0.2
			a.image_yscale=a.image_xscale;
			a.image_index=image_index;
			a.b_trig=true;
			a.cx=x;
			a.cy=y;
			a.dir=angle;
			a.len_inc=4
			a.deg_y=-5
			a.alarm[1]=irandom_range(10,20)
			a.tag=""
			a.killer=false;	
			a.draw=true
		}
		*/
	}
}