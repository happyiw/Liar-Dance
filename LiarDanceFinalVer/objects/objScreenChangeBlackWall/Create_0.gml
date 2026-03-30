i=0
repeat(100)
{
point[i]=0
i+=1
}

if(room=rAvoidance)
{
R1=rAvoidance
R2=rEnd
R3=rTemplate
R4=rTemplate
}

else if(room=rTitle)
{
R1=rTitle
R2=rAvoidancePractice
R3=rEnd
R4=rTemplate
}

else{R1=rTemplate R2=rTemplate R3=rTemplate R4=rTemplate}

depth=-10000