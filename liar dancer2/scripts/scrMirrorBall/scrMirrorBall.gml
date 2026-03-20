function scrMirrorBall(argument0,argument1,argument2,argument3,argument4,argument5)
{
var xx = cos(degtorad(argument3)) * argument2
var yy = sin(degtorad(argument3)) * argument2
var zz = yy * sin(degtorad(argument4)) * argument5
var yy2 = yy * cos(degtorad(argument4))


x = argument0 + xx
y = argument1 + yy2
z = zz
}