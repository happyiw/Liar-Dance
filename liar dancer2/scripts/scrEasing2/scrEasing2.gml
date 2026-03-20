function scrEasing2(){
//Amplification required
//script_name(t, easePt);

var p1,t,easePt;
p1 = (2 * pi) / 3;
p2 = (2 * pi) / 4.5;
t = argument0;
easePt = argument1;


switch(easePt){
case 1:
    return -power(2, 10 * t - 10) * sin((t * 10 - 10.75) * p1);
break;

case 2:
    return (power(2, -10 * t) * sin((t * 10 - 0.75) * p1) + 1);
break;

case 3:
    if t < 0.5{
        return -(power(2, 20 * t - 10) * sin((20 * t - 11.125) * p2)) / 2;
    }else{
        return ((power(2, -20 * t + 10) * sin((20 * t - 11.125) * p2)) / 2 + 1);
    }
break;

case 4:
    if t < 0.5{
        return ((power(2, -20 * (t + 0.5) + 10) * sin((20 * (t + 0.5) - 11.125) * p2)) / 2 + 1 - 1 / 2);
    }else{
        return (-(power(2, 20 * (t - 0.5) - 10) * sin((20 * (t - 0.5) - 11.125) * p2)) / 2 + 1 / 2);
    }
}
}