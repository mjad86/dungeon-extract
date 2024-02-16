///@desc takes screen shot for pause menu

if(global.gamePaused) {
	
	if(!surface_exists(global.pauseSurface)) {
		//if no surface exist we get one
		global.pauseSurface = surface_create(surface_get_width(application_surface),
											 surface_get_height(application_surface));
		surface_set_target(global.pauseSurface);			//set surface
		draw_surface(application_surface, 0, 0);			//set surface coordinates
		draw_surface(application_surface, 0, 0);			//set surface coordinates
		surface_reset_target();								//reset surface
		instance_deactivate_all(true);						//deactivate all instances except this one
		instance_activate_object(input_controller_object);	//avoid input plugin bug
		instance_activate_object(o_controls);				//allow controllers to be used
		instance_activate_object(o_gui);					//allow GUI object to function
}//end if
	
	//apply pause VFX like blurryness or darkness
	set_blur_fx(BLUR.GAUSSIAN);	

}//end if









