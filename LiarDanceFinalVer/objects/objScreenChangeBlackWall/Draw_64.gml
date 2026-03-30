if(room!=R1 and room!=R2 and room!=R3 and room!=R4){des()}

if(point[4]>=1)
{
	des()
}


point[1]+=1

if(point[1]<50)
{
if(point[2]<1){point[2]+=1/22}
point[3]=scrEasing1(point[2],2)
}
if(point[1]>=50)
{
if(R1=rTitle and room=rAvoidancePractice){if(point[4]<1){point[4]+=1/150} point[6]=-100 point[7]=0.6}
else{if(point[4]<1){point[4]+=1/22} point[7]=1}
point[3]=1-(scrEasing1(point[4],2)*point[7])
}


draw_set_colour(c_black)
draw_rectangle(0,0,800,304*point[3],0)
draw_rectangle(0,608-304*point[3],800,608,0)