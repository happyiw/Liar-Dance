with(objDarkness) {
	if tag=="transition flash" {
		image_alpha-=0.02
		if image_alpha<=0
			instance_destroy()
	}
}

if !instance_exists(objDarkness)
	instance_destroy()