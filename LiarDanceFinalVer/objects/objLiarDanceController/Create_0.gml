scrPlayMusic(musLiarDance,false)
t=global.AvoidanceStartTime		//4154		//3025		//2393		//1825		//1259      //-1

global.noPause = true

border_width=160

atk5_spiral_mirror=choose(-1,1)
atk6_teto_side=choose(-1,1)

blackout=0


switch(t) {
	case -1: 
		instance_create(0,0,objLiarDanceAtk1Controller);
		break;
	case 629:
		instance_create(0,0,objLiarDanceAtk2Controller);
		break;
	case 1259:
		instance_create(0,0,objLiarDanceAtk3Controller);
		break;
	case 1825:
		instance_create(0,0,objLiarDanceAtk4Controller);
		break;
	case 2393:
		a=instance_create(400,304,objLiarDanceAtk5Controller);
		a.spiral_mirror=atk5_spiral_mirror;
		a.teto_side=atk6_teto_side
		break
	case 3025:
		a=instance_create(400,304,objLiarDanceAtk6Controller)
		a.teto_side=atk6_teto_side
		break;
	/*
	case 4154:
		instance_create(0,0,objAvoidance)
		break;
	*/
	case 5306:
		cre(0,304+32*6,objBlock)
		a.visible=1
		a.image_xscale=800
		a.image_yscale=304
		a.sprite_index=sprSSBlack1
		a.image_alpha=1
		a.depth=-100
		cre(0,304-32*6,objBlock)
		a.visible=1
		a.image_xscale=800
		a.image_yscale=-304
		a.sprite_index=sprSSBlack1
		a.image_alpha=1
		a.depth=-100
}

if t>=4154 {
	a=instance_create(0,0,objAvoidance)
	a.step=global.AvoidanceStartTime-44
	
	if t<=7627
		border_width=0
		
	//if t==7627
	//	border_width=128
		
}

if t!=1259 and t!=1825 and t!=2393 and t<4154 {
	instance_create(0,0,objShadowDrawer)	
}

if(t=5302)
{
	with(objPlayer) {des()}
	cre(64,500,objPlayer)
}

muteki=0