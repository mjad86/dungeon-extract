activationTime = max(0, activationTime - 1);

//set new image index according to time remaining to activat
image_index = floor(1-((activationTime/inst.activateTimer)) * (sprite_get_number(sprite_index)));

if(!audio_is_playing(sfx_interacting)) {
	//play sfx
	audio_play_sound(sfx_interacting, false, 10);
}//end if

if(activationTime <= 0 || !global.activate) {
	//if player no longer is interacting or timer reached zero we destroy instance
	instance_destroy();
}//end if