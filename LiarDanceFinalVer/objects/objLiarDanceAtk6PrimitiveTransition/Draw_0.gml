if !surface_exists(srf)
	srf=surface_create(800,608)

if !surface_exists(srf2)
	srf2=surface_create(800,608)

t++

draw_set_alpha(1);

surface_set_target(srf)

	
	draw_rectangle_colour(-32,-32,832,640,c_black,c_black,c_black,c_black,false)

	with(objLiarDanceAtk6Teto) {
		draw_sprite_ext(sprLiarDanceAtk6NeonTeto,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,0.5)	
	}
	
	if draw_player {
		with(objPlayer) {
			if sprite_index=sprPlayerFall
				_sprite=sprLiarDanceAtk6PlayerFall
			else
				_sprite=sprLiarDanceAtk6PlayerJump
			
			draw_sprite_ext(_sprite,image_index,x,y,image_xscale*xScale,image_yscale*global.grav,image_angle,c_aqua,image_alpha);
		}
	}
	with(objLiarDanceAtk6FakeGlow)
		draw_self()
	
	with(objLiarDanceAtk6Bullet)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.65)

surface_reset_target()



//draw_clear_alpha(c_black,0)
surface_set_target(srf2)

	draw_clear_alpha(c_white,0)
	draw_set_alpha(1);
	for (_layer=0; _layer<layer_amount; _layer++) {
	    draw_primitive_begin(pr_trianglestrip);
    
		_t=clamp(t,0,time)		//clamp(t-(9-_layer)*2,0,time)
		
	    u=EaseOutSine(_t,0,1.0,time)
	    for (var i = 0; i <= segments; i++) {
	        angle = (t*3 + _layer*55) + max(0,i * (360 / segments)*u); 
        
	        outer_x = center_x + lengthdir_x(outer_radius+_size*_layer, angle);
	        outer_y = center_y + lengthdir_y(outer_radius+_size*_layer, angle);
        
	        inner_x = center_x + lengthdir_x(inner_radius+_size*_layer, angle);
	        inner_y = center_y + lengthdir_y(inner_radius+_size*_layer, angle);
			if outer_radius-inner_radius>1 {
		        draw_vertex(outer_x, outer_y);
		        draw_vertex(inner_x, inner_y);
			}
	    }
	    draw_primitive_end();
	}
	

gpu_set_blendmode_ext(bm_dest_alpha,bm_zero)
draw_surface(srf,0,0)
gpu_set_blendmode(bm_normal)

surface_reset_target()


draw_set_alpha(image_alpha)


if draw_background {
	draw_set_color(c_black)
	for (_layer=0; _layer<layer_amount; _layer++) {
		draw_primitive_begin(pr_trianglestrip);
    
		u=EaseOutSine(clamp(t-(9-_layer)*2,0,time),0,1.0,time)
		for (var i = 0; i <= segments; i++) {
			angle = (t*3 + _layer*55) + max(0,i * (360 / segments)*u); 
        
			outer_x = center_x + lengthdir_x(outer_radius+_size*_layer, angle);
			outer_y = center_y + lengthdir_y(outer_radius+_size*_layer, angle);
        
			inner_x = center_x + lengthdir_x(inner_radius+_size*_layer, angle);
			inner_y = center_y + lengthdir_y(inner_radius+_size*_layer, angle);
        
			if outer_radius-inner_radius>1 {
				draw_vertex(outer_x, outer_y);
				draw_vertex(inner_x, inner_y);
			}
		}
		draw_primitive_end();
	}
}

draw_set_color(c_white)

draw_surface(srf2,0,0)
draw_set_alpha(1)