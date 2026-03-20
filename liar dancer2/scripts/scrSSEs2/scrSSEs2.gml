
function scrSSEs2(){
var t,easePt;

t = argument0;
easePt = argument1;

switch(easePt){

case 1:
    if t = 0{
        return 0;    
    }else{
        return power(2, 10 * t - 10);
    }
break;

case 2:
    if t = 1{
        return 1;
    }else{
        return (1 - power(2, -10 * t));
    }
break;

case 3:
    switch(t){
        case 0:
            return 0;
        break;
        
        case 1:
            return 1;
        break;
        
        default:
            if t < 0.5{
                return (power(2, 20 * t - 10) / 2);
            }else{
                return ((2 - power(2, -20 * t + 10)) / 2);
            }
    }

break;

case 4:
    switch(t){
        case 0:
            return 0;
        break;
        
        case 1:
            return 1;
        break;
        
        default:
            if t < 0.5{
                return (((-power(2, -20 * (t + 1 / 2) + 10)) / 2) + 1 / 2);
            }else{
                return ((power(2, 20 * (t - 1 / 2) - 10) / 2) + 1 / 2);
            }
    }
break;   
}
}