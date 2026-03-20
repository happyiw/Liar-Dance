
t=3025      //-1

teto_side=objLiarDanceController.atk6_teto_side

instance_create(0,0,objShadowDrawer)

instance_destroy(objDecoCustomObject)

	a=instance_create_depth(0,0,-100,objDarkness)
	a.image_alpha=0.5
	a.tag="atk 6 starts with immediate flashbang"
	

	global.edgeDeath=true
	
_id = layer_get_id("Background")
bg_id = layer_background_get_id(_id)
layer_background_blend(bg_id,make_colour_rgb(119,75,192))

instance_destroy(objPlayer)
instance_destroy(objBlock)

instance_create_layer(400,304,"Player",objPlayer)

first_indicator=random(360)

color_offset=2*irandom(5)

xx[0]=400
yy[0]=304
circle_radius[0]=340
angle_offset[0]=0
//angle_offset[0]=random(360)
angle_offset_inc[0]=0
circles_amount=6
for (i=1; i<circles_amount; i++) {
	circle_radius[i]=340-40*i
	angle_offset[i]=random(360)
	radius_offset[i]=circle_radius[i-1]-circle_radius[i]
	xx[i]=xx[i-1]+lengthdir_x(radius_offset[i],angle_offset[i])
	yy[i]=yy[i-1]+lengthdir_y(radius_offset[i],angle_offset[i])
	angle_offset_inc[i]=irandom_range(12,18)*choose(-1,1)*lerp(1,1.5,i/circles_amount)
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



text_t=0
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