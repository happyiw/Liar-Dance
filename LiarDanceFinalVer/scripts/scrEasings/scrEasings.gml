
function EaseLinear(time,start,_end,duration) {
	return (_end-start) * time / duration + start;
}

function EaseInQuad(time,start,_end,duration) {
	time /= duration;
	return (_end-start) * time * time + start;
}

function EaseOutQuad(time,start,_end,duration) {
	time /= duration;
	return -(_end-start) * time * (time - 2) + start;
}

function EaseInOutQuad(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1)
	{
	    return (_end-start) * 0.5 * time * time + start;
	}

	return (_end-start) * -0.5 * (--time * (time - 2) - 1) + start;
}

function EaseInCubic(time,start,_end,duration) {
	return (_end-start) * power(time/duration, 3) + start;
}

function EaseOutCubic(time,start,_end,duration) {
	return (_end-start) * (power(time/duration - 1, 3) + 1) + start;
}

function EaseInOutCubic(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1)
	{
	   return (_end-start) * 0.5 * power(time, 3) + start;
	}

	return (_end-start) * 0.5 * (power(time - 2, 3) + 2) + start;
}

function EaseInQuart(time,start,_end,duration) {
	return (_end-start) * power(time / duration, 4) + start;
}

function EaseOutQuart(time,start,_end,duration) {
	return -(_end-start) * (power(time / duration - 1, 4) - 1) + start;
}

function EaseInOutQuart(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1) 
	{
	    return _end * 0.5 * power(time, 4) + start;
	}

	return (_end-start) * -0.5 * (power(time - 2, 4) - 2) + start;
}

function EaseInQuint(time,start,_end,duration) {
	return (_end-start) * power(time / duration, 5) + start;
}

function EaseOutQuint(time,start,_end,duration) {
	return (_end-start) * (power(time / duration - 1, 5) + 1) + start;
}

function EaseInOutQuint(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1)
	{
	    return (_end-start) * 0.5 * power(time, 5) + start;
	}

	return (_end-start) * 0.5 * (power(time - 2, 5) + 2) + start;
}

function EaseInSine(time,start,_end,duration) {
	return (_end-start) * (1 - cos(time / duration * (pi / 2))) + start;
}

function EaseOutSine(time,start,_end,duration) {
	return (_end-start) * sin(time / duration * (pi / 2)) + start;
}

function EaseInOutSine(time,start,_end,duration) {
	return (_end-start) * 0.5 * (1 - cos(pi * time / duration)) + start;
}

function EaseInCirc(time,start,_end,duration) {
	time /= duration;
	return (_end-start) * (1 - sqrt(1 - time * time)) + start;	
}

function EaseOutCirc(time,start,_end,duration) {
	time = time / duration - 1;
	return (_end-start) * sqrt(1 - time * time) + start;
}

function EaseInOutCirc(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1)
	{
	    return (_end-start) * 0.5 * (1 - sqrt(1 - time * time)) + start;
	}

	time -= 2;
	return (_end-start) * 0.5 * (sqrt(1 - time * time) + 1) + start;
}

function EaseInExpo(time,start,_end,duration) {
	return (_end-start) * power(2, 10 * (time / duration - 1)) + start;
}

function EaseOutExpo(time,start,_end,duration) {
	return (_end-start) * (-power(2, -10 * time / duration) + 1) + start;
}

function EaseInOutExpo(time,start,_end,duration) {
	time /= duration * 0.5;

	if (time < 1) 
	{
	    return (_end-start) * 0.5 * power(2, 10 * --time) + start;
	}

	return (_end-start) * 0.5 * (-power(2, -10 * --time) + 2) + start;
}

function EaseInBack(time,start,_end,duration) {
	var _s = 1.70158;

	time /= duration;
	return (_end-start) * time * time * ((_s + 1) * time - _s) + start;
}

function EaseOutBack(time,start,_end,duration) {
	var _s = 1.70158;

	time = time/duration - 1;
	return (_end-start) * (time * time * ((_s + 1) * time + _s) + 1) + start;
}

function EaseInOutBack(time,start,_end,duration) {
	var _s = 1.70158;

	time = time/duration*2

	if (time < 1)
	{
	    _s *= 1.525;
	    return (_end-start) * 0.5 * (time * time * ((_s + 1) * time - _s)) + start;
	}

	time -= 2;
	_s *= 1.525

	return (_end-start) * 0.5 * (time * time * ((_s + 1) * time + _s) + 2) + start;
}

function EaseInBounce(time,start,_end,duration) {
	return (_end-start) - EaseOutBounce(duration - time, 0, (_end-start), duration) + start
}

function EaseOutBounce(time,start,_end,duration) {
	time /= duration;

	if (time < 1/2.75)
	{
	    return (_end-start) * 7.5625 * time * time + start;
	}
	else
	if (time < 2/2.75)
	{
	    time -= 1.5/2.75;
	    return (_end-start) * (7.5625 * time * time + 0.75) + start;
	}
	else
	if (time < 2.5/2.75)
	{
	    time -= 2.25/2.75;
	    return (_end-start) * (7.5625 * time * time + 0.9375) + start;
	}
	else
	{
	    time -= 2.625/2.75;
	    return (_end-start) * (7.5625 * time * time + 0.984375) + start;
	}
}

function EaseInOutBounce(time,start,_end,duration) {
	if (time < duration*0.5) 
	{
	    return (EaseInBounce(time*2, 0, (_end-start), duration)*0.5 + start);
	}

	return (EaseOutBounce(time*2 - duration, 0, (_end-start), duration)*0.5 + (_end-start)*0.5 + start);
}


function EaseInElastic(time,start,_end,duration) {
	var _s = 1.70158;
	var _p = 0;
	var _a = (_end-start);

	if (time == 0 || _a == 0) 
	{
	    return start; 
	}

	time /= duration;

	if (time == 1) 
	{
	    return start+(_end-start); 
	}

	if (_p == 0) 
	{
	    _p = duration*0.3;
	}

	if (_a < abs((_end-start))) 
	{ 
	    _a = (_end-start); 
	    _s = _p*0.25; 
	}
	else
	{
	    _s = _p / (2 * pi) * arcsin ((_end-start) / _a);
	}

	return -(_a * power(2,10 * (--time)) * sin((time * duration - _s) * (2 * pi) / _p)) + start;

}


function EaseOutElastic(time,start,_end,duration) {
	var _s = 1.70158;
	var _p = 0;
	var _a = (_end-start);

	if (time == 0 || _a == 0)
	{
	    return start;
	}

	time /= duration;

	if (time == 1)
	{
	    return start + (_end-start);
	}

	if (_p == 0)
	{
	    _p = duration * 0.3;
	}

	if (_a < abs((_end-start))) 
	{ 
	    _a = (_end-start);
	    _s = _p * 0.25; 
	}
	else 
	{
	    _s = _p / (2 * pi) * arcsin ((_end-start) / _a);
	}

	return _a * power(2, -10 * time) * sin((time * duration - _s) * (2 * pi) / _p ) + (_end-start) + start;

}


function EaseInOutElastic(time,start,_end,duration) {
	var _s = 1.70158;
	var _p = 0;
	var _a = (_end-start);

	if (time == 0 || _a == 0)
	{
	    return start;
	}

	time /= duration*0.5;

	if (time == 2)
	{
	    return start+(_end-start); 
	}

	if (_p == 0)
	{
	    _p = duration * (0.3 * 1.5);
	}

	if (_a < abs((_end-start))) 
	{ 
	    _a = (_end-start); 
	    _s = _p * 0.25; 
	}
else
{
    _s = _p / (2 * pi) * arcsin ((_end-start) / _a);
}

if (time < 1)
{
    return -0.5 * (_a * power(2, 10 * (--time)) * sin((time * duration - _s) * (2 * pi) / _p)) + start;
}

return _a * power(2, -10 * (--time)) * sin((time * duration - _s) * (2 * pi) / _p) * 0.5 + (_end-start) + start;

}