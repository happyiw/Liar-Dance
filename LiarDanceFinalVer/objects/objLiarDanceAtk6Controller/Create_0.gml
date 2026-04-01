
muteki=0

t=3025      //-1

teto_side=objLiarDanceController.atk6_teto_side

instance_destroy(objDarkness)


instance_create(0,0,objShadowDrawer)

instance_destroy(objDecoCustomObject)

	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 6 starts with immediate flashbang"
	

//global.edgeDeath=true

/*
_id = layer_get_id("Background")
bg_id = layer_background_get_id(_id)
layer_background_blend(bg_id,make_colour_rgb(119,75,192))
*/
instance_destroy(objPlayer)
instance_destroy(objBlock)

instance_create_layer(400,304,"Player",objPlayer)

first_indicator=random(360)

color_offset=2*irandom(5)

xx[0]=400
yy[0]=304
circle_radius[0]=340
angle_offset[0]=random(360)
//angle_offset[0]=random(360)
angle_offset_inc[0]=0
circles_amount=8
for (i=1; i<circles_amount; i++) {
	circle_radius[i]=340-35.5*i
	/*
	if i!=(circles_amount-1)
		angle_offset[i]=random(360)
	else
	*/
		angle_offset[i]=angle_offset[0]+90*i
	radius_offset[i]=circle_radius[i-1]-circle_radius[i]
	xx[i]=xx[i-1]+lengthdir_x(radius_offset[i],angle_offset[i])
	yy[i]=yy[i-1]+lengthdir_y(radius_offset[i],angle_offset[i])
	angle_offset_inc[i]=irandom_range(15,18)*choose(-1,1)*lerp(1,1.5,i/circles_amount)
}

spiral_angle=random(360)

transition_circle_radius=random_range(16,48)

//six_spawners_list=ds_list_create()

accelerating_bs_mirror=1//choose(0,1)

expanding_circles_offset=random(360)
wiggly_pies_mirror=1//choose(-1,1)
expanding_circles_speed=14		//irandom_range(12,15)
expanding_circles_distance=999

flower_angle=random(360)

second_part_side=1//choose(-1,1)
second_part_line_stand_out=choose(0,1)
second_part_line_angle=random(360)

liar_wall_x=random_range(-25,25)
liar_wall_y=random_range(-25,25)

liar_grid_angle=random(360)
liar_grid_x=400+random_range(-48,48)
liar_grid_y=304+random_range(-48,48)

liar_circle_radius=500
liar_circle_finradius=liar_circle_radius

shake=0

text_t=0


a=instance_create_depth(400,304,200,objLiarDanceAtk6Teto)
a.image_alpha=0.25
a.image_xscale=teto_side
a.t=random(360)
	
a=instance_create_depth(400,304,230,objBGCirclesEffect)
a.intensity=0.3
a.black_merge=0.04;
	
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
		a.t=-1
	}
}
	
for (i=0; i<2; i++) {
		
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
		a.t=-1
	}
}

























/*
a=instance_create(400,304+96,objBlock)
a.visible=true;
a.sprite_index=sprBlockMaskCentered
a.image_xscale=8
a.image_blend=c_black;
a.image_alpha=0.8;

/*
a.y=304+96
a.image_xscale=2
a.image_yscale=a.image_xscale;