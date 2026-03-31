i=0
repeat(100)
{
point[i]=0
i+=1
}
depth=550
point[1]=random(360)
point[2]=random(360)
point[3]=random(360)
point[4]=random(360)
point[5]=random(360)
point[9]=random(360)
point[10]=random(360)

step=0

ps = part_system_create();
part_system_depth(ps,560);
pt = part_type_create();
part_type_shape(pt, pt_shape_cloud);
part_type_size(pt, 2, 5, 0, 0);
part_type_color1(pt, c_white);
part_type_alpha2(pt, 0.07, 0);
part_type_blend(pt, true);
part_type_life(pt, 150, 250);
part_type_speed(pt, 2, 4, 0, 0);
part_type_direction(pt, 70, 110, 0, 0);
part_type_gravity(pt, 0.02, 270);	

ps2 = part_system_create();
part_system_depth(ps2,560);
pt2 = part_type_create();
part_type_shape(pt2, pt_shape_cloud);
part_type_size(pt2, 2, 5, 0, 0);
part_type_color1(pt2, c_white);
part_type_alpha2(pt2, 0.07, 0);
part_type_blend(pt2, true);
part_type_life(pt2, 150, 250);
part_type_speed(pt2, 2, 4, 0, 0);
part_type_direction(pt2, 70+180, 110+180, 0, 0);
part_type_gravity(pt2, -0.02, 270);	