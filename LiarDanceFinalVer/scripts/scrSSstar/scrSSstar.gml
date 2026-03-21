function scrSSstar(){
var a,i,j,dir,n,v,vv,dd,ee,ff,k;

n = argument2-1

dir=argument4


for(j=1;j<=5;j+=1;){ 
	
v=argument1
dd = cos(degtorad(18))
ee = cos(degtorad(36))
ff = cos(degtorad(54))
k = (1+sqrt(5))*ff*v/(ee+(1+sqrt(5))*ff*dd)
for(i=0;i<=n;i+=1;){
    a=instance_create_depth(x,y,depth-1,argument3)
    a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*dd))
    vv=a.speed
    a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))))
	a.trg=argument5
	a.point[29]=argument6
	a.image_index=argument7
	a.point[1]=1

    b=instance_create_depth(x,y,depth-1,argument3)
    b.speed=a.speed
    b.direction=dir-radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))))
	b.trg=argument5
	b.point[29]=argument6
	b.image_index=argument7
	b.point[1]=2
    if(i==n-1){
        dir += 72
    }


}
if(argument0=1){}
}



}