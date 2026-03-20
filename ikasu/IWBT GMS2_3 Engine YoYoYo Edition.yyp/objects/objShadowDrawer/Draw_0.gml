with(objCustomBullet) {
	if drop_shadow
	    draw_sprite_ext(sprite_index,image_index,x+8,y+8,image_xscale,image_yscale,image_angle,c_black,image_alpha-0.7)
	if !draw
		draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	
}

with(objPlayer) {
	if other.draw_player {
	    drawX = x;
	    drawY = y;
	    draw_sprite_ext(sprite_index, image_index, drawX+3, drawY+3, image_xscale * xScale, image_yscale * global.grav, image_angle, c_black, image_alpha-0.7);
	    draw_sprite_ext(sprite_index, image_index, drawX, drawY, image_xscale * xScale, image_yscale * global.grav, image_angle, image_blend, image_alpha)
	}
}