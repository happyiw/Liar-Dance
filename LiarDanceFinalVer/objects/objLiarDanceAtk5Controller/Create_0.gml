
t=2393      //-1
muteki=0

spiral_mirror=choose(-1,1)
teto_side=1
/*
if !instance_exists(objLiarDanceScreenBreakEffect) {
	a=instance_create_depth(0,0,-400,objLiarDanceScreenBreakEffect)
	a.spd_inc_min=0;
	a.spd_inc_max=0;
	a.alpha=1;
	a.enable_alphablend=false
	a.enable_surfacecopy=0;
	a.move=0;
}*/


instance_destroy(objPlayer)

instance_create_layer(400,460,"Player",objPlayer)
x=400
y=460

//global.edgeDeath=false
