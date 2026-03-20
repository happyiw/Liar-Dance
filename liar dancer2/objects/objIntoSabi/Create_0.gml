if(live_call()) return live_result;

i=0

repeat(100)
{
point[i]=0
scale[i]=0.3+random(0.3)
alpha[i]=0.1+random(1)
angle[i]=random(360)
angle2[i]=-0.2+random(0.4)
i+=1
}