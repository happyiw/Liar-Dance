if keyboard_check_pressed(vk_up) {
	atk=(atk+1) mod atk_limit
}
if keyboard_check_pressed(vk_down) {
	atk=(atk_limit+atk-1) mod atk_limit	
}


switch(atk) {
	case 0:
		global.AvoidanceStartTime=-1; break;
		
	case 1:
		global.AvoidanceStartTime=629; break;
		
	case 2:
		global.AvoidanceStartTime=1259; break;
		
	case 3:
		global.AvoidanceStartTime=1825; break;
		
	case 4:
		global.AvoidanceStartTime=2393; break;
		
	case 5:
		global.AvoidanceStartTime=3025; break;
		
	case 6:
		global.AvoidanceStartTime=4154; break;
		
	case 7: 
		global.AvoidanceStartTime=5302; break;
		
	case 8:
		global.AvoidanceStartTime=5888; break;
		
	case 9:
		global.AvoidanceStartTime=6506; break;
	
	/*
	case 10:
		global.AvoidanceStartTime=7650; break;
	
	It would be funny if we give no outro practice for players, wouldnt it?
	*/
}


global.AvoidancePracticeSegment=atk