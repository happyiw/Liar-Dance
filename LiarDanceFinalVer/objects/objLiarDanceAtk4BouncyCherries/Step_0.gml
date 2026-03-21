
image_angle+=free_variable[0]
if x<-32
	instance_destroy()
inst_place=instance_place(x,y,objBlock)
if inst_place!=noone {
	if inst_place.y>y
		vspeed=-abs(vspeed)
}