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



if(MenuMode)
{
if(fileSelect=0){Px=100 Py=304}
if(fileSelect=1){Px=100 Py=374}
if(fileSelect=2){Px=100 Py=444}
draw_sprite_ext(sprPlayerIdle,0,Px,Py,1,1,0,c_white,1)

draw_set_font(fSasa3_1)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_text_outline(400,304,string("Load Game"),c_white,c_black)
draw_text_outline(400,374,string("Start Game"),c_white,c_black)
draw_text_outline(400,444,string("Option"),c_white,c_black)
}

if(DataWarn)
{
draw_set_colour(c_black)
draw_set_alpha(0.6)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_outline(400,304,string("Delete Data?\n[Z : Back] [Shift : Accept]"),c_white,c_black)
}

if(OptionMode)
{
draw_set_colour(c_black)
draw_set_alpha(0.6)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
}





