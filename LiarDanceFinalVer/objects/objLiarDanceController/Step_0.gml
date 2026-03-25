if instance_exists(objPlayer) {
    t++
    if t>0 {
        if !(audio_is_playing(musLiarDance)) {
            scrPlayMusic(musLiarDance,false)
        }
        var music_t=audio_sound_get_track_position(global.currentMusic)*50;
        if abs(t-music_t)>2 {
            audio_sound_set_track_position(global.currentMusic,t/50)
        }
    }
}
if !instance_exists(objPlayer) {
    scrStopMusic()
}

if t==629 {
	instance_destroy(objLiarDanceAtk1Controller)
	if !instance_exists(objLiarDanceAtk2Controller)
		instance_create(0,0,objLiarDanceAtk2Controller)
}

if t==1260 {
	instance_destroy(objLiarDanceAtk2Controller)
	if !instance_exists(objLiarDanceAtk3Controller)
		instance_create(0,0,objLiarDanceAtk3Controller)
}


if t==1826 {
	instance_destroy(objLiarDanceAtk3Controller)	
	if !instance_exists(objLiarDanceAtk4Controller)
		instance_create(0,0,objLiarDanceAtk4Controller)
		
	border_width=160-32
}

if t==2394 {
	instance_destroy(objLiarDanceAtk4Controller)	
	if !instance_exists(objLiarDanceAtk5Controller) {
		a=instance_create(scrPX(),scrPY(),objLiarDanceAtk5Controller)
		a.spiral_mirror=atk5_spiral_mirror;
		a.teto_side=atk6_teto_side	
	}
	border_width=0
	
}

if t==3026 {
	
	instance_destroy(objLiarDanceAtk5Controller)	
	if !instance_exists(objLiarDanceAtk6Controller) {
		a=instance_create(400,304,objLiarDanceAtk6Controller)
		a.teto_side=atk6_teto_side
	}
	border_width=80
}

if t==4155 {
	instance_destroy(objLiarDanceAtk6Controller)
	instance_destroy(objCustomBullet)
	instance_destroy(objShadowDrawer)
	
	if !instance_exists(objAvoidance)
		instance_create(0,0,objAvoidance)
	instance_create(0,0,objLiarDanceLittleTransition)
	
	with(objPlayer) {
		frozen=false;
		image_alpha=1;
		visible=true
	}
	
	set_camera(0,0,800,608,0)
	border_width=0
	//instance_destroy()
}


if t==7627 {
	border_width=128
	
}