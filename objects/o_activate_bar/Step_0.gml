activationTime = max(0, activationTime - 1);

//set new image index according to time remaining to activat
image_index = floor(1-((activationTime/inst.activateTimer)) * (sprite_get_number(sprite_index)));

if(activationTime <= 0 || !global.activate) {
	//if player no longer is interacting or timer reached zero we destroy instance
	instance_destroy();
}//end if