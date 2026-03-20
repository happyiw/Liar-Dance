if !surface_exists(srf) {
	srf=surface_create(800,608)	
	surface_copy(srf,0,0,application_surface)
	
}

draw_surface(srf,0,0)