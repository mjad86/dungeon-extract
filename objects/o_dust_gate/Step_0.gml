///@desc particle behaviour
if(delay > 0) {
	delay -= 1;
}//end if
else {
	image_xscale -= random_range(0.001, 0.1);
	image_yscale = image_xscale;
	
	if(addMovement) {
		x += random_range(-0.5, 0.5);
		y += random_range(0.25, 1);
	}//end if
	
	if(image_xscale <= 0) {
		instance_destroy();
	}//end if
}//end else








