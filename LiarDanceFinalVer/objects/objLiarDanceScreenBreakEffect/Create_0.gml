srf = noone;

enable_surfacecopy=1
srf2 = noone;

alpha = 1;

x_target = 400;
y_target = 304;

dir_spread = 10;
spd_inc_min = 0.1;
spd_inc_max = 0.2;
rotate_spread_min = -12;
rotate_spread_max = 12;
scale_dec_min = -0.04;
scale_dec_max = -0.1;
dir_spread_min = 0;
dir_spread_max = 50;

x_offset = 0;
y_offset = 0;

t = 0;

move=1;

draw_bg=true

text_alpha=0


//squares_list=ds_list_create()
//squares_list_limit=0

for(i = 0; i < 25; i += 1){
    for(ii = 0; ii < 19; ii += 1){
        xx[i,ii] = 0;
        yy[i,ii] = 0;
        xx_offset[i, ii] = 0;
        yy_offset[i, ii] = 0;
        spd[i,ii] = lerp(5, 10, (point_distance(400,304,i*32,ii*32)/400)) + random(2.5)
        rotate[i,ii] = 0;
        rotate_spr[i,ii] = 0;
        scale_dec[i,ii] = 0;
        scale[i,ii] = 1;
        spd_inc[i,ii] = random_range(spd_inc_min,spd_inc_max)
        dir[i, ii] = point_direction(400,304,32*i,32*ii)+random_range(-12,12);
        blend[i, ii] = c_white;
		//flag[i, ii] = 0;		//0 - draws surface, 1 - draws glitch
		//ds_list_add(squares_list,ii+i*19)
    }
}

//ds_list_shuffle(squares_list)