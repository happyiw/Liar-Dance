direction += curving;
speed += accel;
if (bounce == true) {
    move_bounce_solid(false);
}

t+=t_inc;




dir+=dir_inc;
len+=len_inc;

if (b_trig) {
    
    x=cx+len*cos(degtorad(dir))/deg_x;
    y=cy+len*sin(degtorad(dir))/deg_y;
}


if tag=="tetoris" {
    if y>608
        instance_destroy()
}