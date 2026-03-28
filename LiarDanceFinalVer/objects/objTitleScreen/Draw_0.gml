

point[1]+=1+random(1)
point[2]+=1+random(1)
point[3]+=1+random(1)
point[4]+=1+random(1)
point[9]+=1+random(1)
point[10]+=1+random(1)

point[5]=5*dcos(point[1])
point[6]=5*dcos(point[2])
point[7]=5*dcos(point[3])
point[8]=5*dcos(point[4])
point[11]=2*dcos(point[9])
point[12]=2*dcos(point[10])

draw_sprite_ext(sprTitleLogo,0,400+point[5]+5,304+point[6]+5,1,1,point[11],c_black,0.5)
draw_sprite_ext(sprTitleLogo,1,400+point[7]+5,304+point[8]+5,1,1,point[12],c_black,0.5)
draw_sprite_ext(sprTitleLogo,0,400+point[5],304+point[6],1,1,point[11],c_white,1)
draw_sprite_ext(sprTitleLogo,1,400+point[7],304+point[8],1,1,point[12],c_white,1)

draw_set_colour(c_black)
draw_rectangle(0,0,800,100,0)
draw_rectangle(0,508,800,608,0)