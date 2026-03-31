
scl=1/8
t=0
t_inc=0
bg_flag=0

for (i=0; i<16; i++) {
	xx[i]=25+50*i	
	y_pos_limit[i]=1
	y_pos_limit_inc[i]=irandom_range(1,3)
	col[i, 0]=scrLiarDanceColorPicker(choose(0,2))
	
}