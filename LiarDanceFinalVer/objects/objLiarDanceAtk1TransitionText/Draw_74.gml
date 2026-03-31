if bg_flag {
	for (i=0; i<16; i++) {
		for (j=0; j<y_pos_limit[i]; j++) {
			draw_sprite_ext(sprLiarDanceAtk6Dance,0,xx[i],132+(118*scl)*j,scl,scl,0,col[i, j],1)	
		}
	}
}

draw_self()