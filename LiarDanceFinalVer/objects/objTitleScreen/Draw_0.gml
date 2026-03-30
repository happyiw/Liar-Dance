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

if(!surface_exists(surf)){surf=surface_create(800,608)}


if( surface_exists(surf))
{
surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_sprite_ext(sprTitleLogo,0,400+point[5]+5,304+point[6]+5,1,1,point[11],c_black,0.7)
draw_sprite_ext(sprTitleLogo,1,400+point[7]+5,304+point[8]+5,1,1,point[12],c_black,0.7)
draw_sprite_ext(sprTitleLogo,0,400+point[5],304+point[6],1,1,point[11],c_white,1)
draw_sprite_ext(sprTitleLogo,1,400+point[7],304+point[8],1,1,point[12],c_white,1)
surface_reset_target()
}





if(MenuMode)
{
if(point[20]<1){point[20]+=1/80}
point[21]=scrEasing1(point[20],2)*1/5
	point[22]+=1/5
if(point[23]<1){point[23]+=1/300}	
point[24]=scrEasing1(point[23],2)



repeat(5)
{
point[28]+=80
draw_sprite_ext(sprTitleTeto1,point[22]*2/3,800+400-point[24]*500-point[28]+4,360+4,3/7,3/7,0,c_black,0.5)
}
point[28]=0
repeat(5)
{
point[28]+=80
draw_sprite_ext(sprTitleTeto1,point[22]*2/3,800+400-point[24]*500-point[28]  ,360  ,3/7,3/7,0,make_colour_hsv((point[28] mod 255),255,255),1)
}
point[28]=0

draw_sprite_ext(sprTitleTeto1,point[22]*2/3,800-point[24]*500+4,360+4,3/7,3/7,0,c_black,0.5)
draw_sprite_ext(sprTitleTeto1,point[22]*2/3,800-point[24]*500  ,360  ,3/7,3/7,0,c_white,1)

point[26]+=4
repeat(6)
{
draw_sprite_ext(sprTitleTeto2,point[22]*2,1000-((point[26]+point[27]) mod 1200)+4,-120+point[24]*210+4,3/8,-3/8,0,c_black,0.5)
draw_sprite_ext(sprTitleTeto2,point[22]*2,1000-((point[26]+point[27]) mod 1200),-120+point[24]*210,3/8,-3/8,0,c_white,1)
point[27]+=200
}
point[27]=0
	
if(fileSelect=0){Px=60 Py=304}
if(fileSelect=1){Px=60 Py=374}
if(fileSelect=2){Px=60 Py=444}

draw_sprite_ext(sprPlayerIdle,point[22],Px+3,Py+3,2,2,0,c_black,0.5)
draw_sprite_ext(sprPlayerIdle,point[22],Px,Py,2,2,0,c_white,1)

draw_set_font(fSasa3_1)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_text_outline(120,304,string("Load Game"),c_white,c_purple)
draw_text_outline(120,374,string("Start Game"),c_white,c_purple)
draw_text_outline(120,444,string("Option"),c_white,c_purple)
}

draw_surface_ext(surf,point[21]*1000,-point[21]*210,1-point[21],1-point[21],0,c_white,1)

if(DataWarn)
{
draw_set_font(fSasa)
draw_set_colour(c_black)
draw_set_alpha(0.6)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_outline(400,304,string("Delete Data?\n[Z : Back]\n[Shift : Accept]"),c_white,c_black)
}

if(OptionMode)
{
draw_set_colour(c_black)
draw_set_alpha(0.6)
draw_rectangle(0,0,800,608,0)
draw_set_alpha(1)
}







