scrPlayMusic(musLiarDance,false)
t=4154		//3025		//2393		//1825		//1259      //-1

//4158 start point for the 2nd half
//its a bit broken (blocks get misplaced?), havent found out why yet
//but other than that avoidance should work fine


atk5_spiral_mirror=choose(-1,1)
atk6_teto_side=choose(-1,1)

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
	case 4154:
		instance_create(0,0,objAvoidance)
		break;
}
if t!=1259 and t!=1825 and t!=2393 and t!=4154 {
	instance_create(0,0,objShadowDrawer)	
}

border_width=160