t+=t_inc

for (i=0; i<16; i++) {
	if t mod y_pos_limit_inc[i] == 0 and bg_flag {
		step=choose(1,2,3)
		while step!=0 {
			y_pos_limit[i]++
			y_pos_limit_inc[i]=irandom_range(1,3)
			col[i, y_pos_limit[i]]=scrLiarDanceColorPicker(choose(0,2))
			
			step--
		}
	}
}