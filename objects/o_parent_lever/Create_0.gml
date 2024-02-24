///@desc initialize variables
key = generate_unique_key();	//unique key
image_speed = 0;

var _saveData = ds_map_find_value(o_meta.saveData, key);

if(!is_undefined(_saveData) && _saveData == true) {
	//if data exists and its true then lever is used
	image_index = floor(image_number)-1;
	previousState = lever_state_unused;
	state = lever_state_used;
}//end if
else {
	//the lever has not been used yet
	image_index = 0;
	previousState = lever_state_used
	state = lever_state_unused;
}//end else

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);