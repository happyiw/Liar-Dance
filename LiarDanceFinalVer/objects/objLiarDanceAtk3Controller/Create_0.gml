t=1259

player_size=0.8


instance_create_depth(0,0,-100,objLiarDanceAtk3CloudSurface)

a = instance_create_depth(400,950,-100,objLiarDanceAtk3CloudSurfaceTarget);
a.image_alpha=1
a.image_xscale=0.7;
a.image_yscale=0.65
/*
a.image_alpha=0
a.image_xscale=1.15;
a.image_yscale=a.image_xscale
*/
a.scaler=0.05
with(objPlayer) {
	a = instance_create_depth(x,y,depth,objDecoCustomObject)
	/*a.vspeed=vspeed
	a.hspeed=hspeed
	a.gravity=gravity*/
	a.sprite_index=sprite_index
	a.image_xscale=xScale
	a.tag="atk 3 bg player"
	instance_destroy()
}
		
with(objCustomBullet) {
	a = instance_create_depth(x,y,100,objDecoCustomObject)
	a.image_xscale=image_xscale
	a.image_yscale=image_yscale
	a.image_angle=image_angle
	a.image_alpha=1
	a.direction=random(360)
	a.tag="atk 3 bg bullets"
	instance_destroy()
}	



attack_option=choose(0,1,2)
mirror=choose(-1,1)
humaniac_var=choose(0,1)
fail_var=choose(-1,1)
fail_angle=random(360)
black_world_i=choose(-1,1)

switch(attack_option) {
	case 0:
		
		/*OVERTAKE*/
	
		instance_destroy(objBlock)
		
		a=instance_create(320, 448, objBlock)
		a.image_xscale=5
		
		a=instance_create_layer(400, a.y-30, "Player", objPlayer)
		a.image_alpha=0
		
		a.image_xscale=player_size;
		a.image_yscale=a.image_xscale;
		a.jump = 8.5 * global.grav * a.image_xscale;
		a.jump2 = 7 * global.grav * a.image_xscale;
		a.gravity = 0.4 * global.grav * a.image_xscale;
		a.maxHSpeed = 3 * a.image_xscale;
		a.maxVSpeed = 9 * a.image_xscale;
	break;
			
	case 1:
		
		/*HUMAN MANIAC*/
		
		instance_destroy(objBlock)
		
		a=instance_create(400, 304, objBlock)
		a.sprite_index=sprLiarDanceAtk3Phone
		a.image_xscale=0.75;
		a.image_angle=90
		a.image_yscale=a.image_xscale
		//a.visible=true
		
		
		a=instance_create_layer(400, 410, "Player", objPlayer)
		a.image_alpha=0
		
		a.image_xscale=player_size;
		a.image_yscale=a.image_xscale;
		a.jump = 8.5 * global.grav * a.image_xscale;
		a.jump2 = 7 * global.grav * a.image_xscale;
		a.gravity = 0.4 * global.grav * a.image_xscale;
		a.maxHSpeed = 3 * a.image_xscale;
		a.maxVSpeed = 9 * a.image_xscale;
		
	break;
		
		
		
	case 2:
	
		/*Letter to the Black World*/
		
		a = instance_create(400, 96, objLiarDanceAtk3Bullet)
		a.dir=random(360)
		a.dir_inc=2
		a.cx=400
		a.cy=144
		a.tag="atk 3 black world spawner"
		
		rand=random(360)
		for (angle=rand; angle<rand+360; angle+=36) {
			a2=instance_create(400,96, objLiarDanceAtk3Bullet)
			a2.parent_id=a.id
			a2.dir=angle;
			a2.len=100
			a2.dir_inc=3.5
			a2.tag="atk 3 black world circle"
		}
		
		instance_destroy(objBlock)
		
		a=instance_create(0,480,objBlock)
		a.image_xscale=25
		a=instance_create(0,96,objBlock)
		a.image_xscale=25
		
		a=instance_create(800,96,objBlock)
		a.image_yscale=25
		a=instance_create(-32,96,objBlock)
		a.image_yscale=25
		
		a=instance_create_layer(400, 450, "Player", objPlayer)
		
		a.image_xscale=player_size;
		a.image_yscale=a.image_xscale;
		a.jump = 8.5 * global.grav * a.image_xscale;
		a.jump2 = 7 * global.grav * a.image_xscale;
		a.gravity = 0.4 * global.grav * a.image_xscale;
		a.maxHSpeed = 3 * a.image_xscale;
		a.maxVSpeed = 9 * a.image_xscale;
	break;
		
		
	case 3:
		
		/*fail to make an avoidance in 24h*/
		/*It didnt look good, so i scrapped it*/
		
		instance_destroy(objBlock)
		
		a=instance_create(0,480,objBlock)
		a.image_xscale=25
		a=instance_create(0,96,objBlock)
		a.image_xscale=25
		
		a=instance_create(800,96,objBlock)
		a.image_yscale=25
		a=instance_create(-32,96,objBlock)
		a.image_yscale=25
		
		a=instance_create(288, 480-112, objBlock)
		a.image_xscale=7
		
		//168
		//632
		
		a=instance_create(200, 96, objLiarDanceAtk3Bullet)
		a.image_xscale=2
		a.image_yscale=a.image_xscale;
		//a.killer=false;
		//a.image_alpha=0.25
		a.free_variable[0]=-1
		a.free_variable[1]=choose(-1,1)
		a.tag="atk 3 24h spawner"
		a=instance_create(600, 96, objLiarDanceAtk3Bullet)
		a.image_xscale=2
		a.image_yscale=a.image_xscale;
		//a.killer=false;
		//a.image_alpha=0.25
		a.free_variable[0]=1
		a.free_variable[1]=choose(-1,1)
		a.tag="atk 3 24h spawner"
		
		a=instance_create_layer(400, 450, "Player", objPlayer)
		a.image_alpha=0
		
		a.image_xscale=player_size;
		a.image_yscale=a.image_xscale;
		a.jump = 8.5 * global.grav * a.image_xscale;
		a.jump2 = 7 * global.grab * a.image_xscale;
		a.gravity = 0.4 * global.grav * a.image_xscale;
		a.maxHSpeed = 3 * a.image_xscale;
		a.maxVSpeed = 9 * a.image_xscale;
	break;
	
}

//instance_destroy(objCustomBullet)
instance_destroy(objShadowDrawer)