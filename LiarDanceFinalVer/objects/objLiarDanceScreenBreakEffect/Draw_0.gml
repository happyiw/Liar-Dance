
draw_set_colour(c_white);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1); 

if(!surface_exists(srf)) {
    srf = surface_create(room_width,room_height);
	
}

if surface_exists(srf) {
    if enable_surfacecopy {
		if(view_surface_id[0]!=-1){
	        surface_copy(srf,0,0,view_surface_id[0]);  
	    }else{
	        surface_copy(srf,0,0,application_surface);
	    }	
	}
	
	surface_set_target(srf)
		if instance_exists(objPlayer) {
			//draw_ellipse_colour(scrPX()-16,476,scrPX()+12,482,c_black,c_black,false)
			with(objPlayer) {
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,1);
			}
		}
		with(objLiarDanceAtk4Car) {
			draw_self()	
		}
		with(objLiarDanceAtk4BouncyCherries) {
			//draw_ellipse_colour(x-10*image_xscale,476,x+10*image_xscale,482,c_black,c_black,false)
			draw_self()
		}
		with(objDecoCustomObject) {
			if sprite_index==sprLiarDanceAtk4CarWindow
				draw_self()
		}
		draw_set_font(fSasa)
		draw_set_align(0,0)
		
		draw_set_alpha(text_alpha/25)
		draw_text_outline(400,304,"Get ready",scrLiarDanceColorPicker(0),scrLiarDanceColorPicker(0))
		draw_set_alpha(1)
	surface_reset_target()
	
	if draw_bg
		draw_rectangle_colour(-32,-32,832,640,c_black,c_black,c_black,c_black,false)
		
    for(i = 0; i < 25; i ++){
        for(ii = 0; ii < 19; ii ++){
			/*
			flag[i, ii]=0
            if squares_list_limit>1 {
				for (i=0; i<squares_list_limit; i++) {
					_index=ds_list_find_value(squares_list,i)
					if ii+i*19==_index
						flag[i, ii]=1
				}
			}
			
			if flag[i, ii]==0
				draw_surface_general(srf,i * 32,ii * 32,32,32,(i * 32) + xx[i,ii] + xx_offset[i, ii],(ii * 32) + yy[i,ii] + yy_offset[i, ii],scale[i,ii],scale[i,ii],rotate[i,ii],blend[i, ii], blend[i, ii], blend[i, ii], blend[i, ii],alpha);
			else
				draw_sprite_part_ext(sprLiarDanceAtk4WhiteNoiseTexture,0,i * 32,ii * 32,32,32,(i * 32) + xx[i,ii] + xx_offset[i, ii],(ii * 32) + yy[i,ii] + yy_offset[i, ii],scale[i,ii],scale[i,ii],c_white,alpha)
            */
			draw_surface_general(srf,i * 32,ii * 32,32,32,(i * 32) + xx[i,ii] + xx_offset[i, ii],(ii * 32) + yy[i,ii] + yy_offset[i, ii],scale[i,ii],scale[i,ii],rotate[i,ii],blend[i, ii], blend[i, ii], blend[i, ii], blend[i, ii],alpha);
		    xx[i,ii] += lengthdir_x(spd[i,ii]*move,dir[i,ii]);
            yy[i,ii] += lengthdir_y(spd[i,ii]*move,dir[i,ii]);
            rotate[i,ii] += rotate_spr[i,ii];
            spd[i,ii] += spd_inc[i,ii];
            scale[i,ii] = max(scale[i,ii] - scale_dec[i,ii],0);
            
        }
    }
}

