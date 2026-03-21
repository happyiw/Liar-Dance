
cam = view_camera[0];
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var vw = round(camera_get_view_width(cam));
var vh = round(camera_get_view_height(cam));

hw = vw * 0.5;
hh = vh * 0.5;

if (!surface_exists(srf)) {
    srf = surface_create(vw, vh);
}
else if (surface_get_width(srf) != vw || surface_get_height(srf) != vh) {
    surface_resize(srf, vw, vh);
}


if (!surface_exists(srf2)) {
    srf2 = surface_create(vw, vh);
}
else if (surface_get_width(srf2) != vw || surface_get_height(srf2) != vh) {
    surface_resize(srf2, vw, vh);
}


draw_set_alpha(1);
surface_set_target(srf);
draw_clear_alpha(c_white, 0);

with (objDecoCustomObject) {
    draw_sprite_ext(sprite_index,image_index,x - cx,y - cy,image_xscale,image_yscale,image_angle,c_black,image_alpha
    );
}

with (objCustomBullet) {
    draw_sprite_ext(sprite_index,image_index,x - cx,y - cy,image_xscale,image_yscale,image_angle,c_black,image_alpha
    );
}

with (objPlayer) {
    draw_sprite_ext(
        sprite_index,image_index, x - cx,y - cy,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,1
		);
}

surface_reset_target();


surface_set_target(srf2);

draw_clear_alpha(c_white, 0);


draw_circle_colour(hw, hh, surf_r, c_white, c_white, false);

gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
draw_surface(srf, 0, 0);
gpu_set_blendmode(bm_normal);

surface_reset_target();

for (var i = 0; i < 4; i++) {
    if (r[i] > 2) {
        draw_circle_colour(
            cx + hw,	// + lengthdir_x(50 * i, i * 50),
            cy + hh,	// + lengthdir_y(50 * i, i * 50),
            clamp(r[i], 0, surf_r),
            col[i],
            col[i],
            false
        );
    }
}


draw_surface(srf2, cx, cy);
