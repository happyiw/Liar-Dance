function instance_create(_x,_y,_obj) {
	return instance_create_depth(_x,_y,0,_obj)
}


function modwrap(val, minv, maxv) {

	var f = val - minv;
	var w = maxv-minv;
	return f - floor(f/w) * w + minv;	
}

function draw_text_outline(textX, textY, textStr, textColor, outlineColor) {


	//Draw the text outline
	draw_set_color(outlineColor);
	for (var xx = -1; xx <= 1; xx++)
	{
	    for (var yy = -1; yy <= 1; yy++)
	    {
	        if (xx != 0 && yy != 0)
	        {
	            draw_text(textX + xx, textY + yy, textStr);
	        }
	    }
	}

	//Draw the text itself
	draw_set_color(textColor);
	draw_text(textX, textY, textStr);
}



function scrResetDraw(color) {
	draw_set_alpha(1)
	draw_set_color(color)
}


function scrLiarDanceColorPicker(option) {
	switch(option mod 3) {
	    case 0:
	        return make_colour_rgb(241,73,84)
	    case 1:
	        return c_white;
	    case 2:
	        return make_colour_rgb(252,233,80);
	}
}


function draw_set_align(halign, valign) {
	switch(halign){
	    case -1: 
	        draw_set_halign(fa_left);
	        break;
	    case 1:
	        draw_set_halign(fa_right);
	        break;
	    default:
	        draw_set_halign(fa_center);
	        break;
	}
	
	switch(valign){
	    case -1: 
	        draw_set_valign(fa_top);
	        break;
	    case 1:
	        draw_set_valign(fa_bottom);
	        break;
	    default:
	        draw_set_valign(fa_middle);
	        break;
	}	
}




function set_camera(_x,_y,_w,_h,_id) {
	camera_set_view_pos(view_camera[_id], _x, _y)
	camera_set_view_size(view_camera[_id], _w, _h)
}




function scrPX() {
	if(instance_exists(objPlayer)) return objPlayer.x
	else return 0;
}




function scrPY() {
	if(instance_exists(objPlayer)) return objPlayer.y
	else return 0;
}