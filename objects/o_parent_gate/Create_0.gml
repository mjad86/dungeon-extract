///@desc initialize variables
key = generate_unique_key();	//unique key
flash = 0;
vSpd = 0;
hSpd = 0;
uFlash = shader_get_uniform(sh_white_flash, "flash");
if(sprite_height > 32) {
	openDist = sprite_get_height(sprite_index);
}//end if
else {
	openDist = sprite_get_width(sprite_index);
}//end else
timer = 0;
timerCount = 0;
var _saveData = ds_map_find_value(o_meta.saveData, key);

if(sprite_height > 32) {
	//its a vertical gate, based on a 32*64 desing
	if(!is_undefined(_saveData) && _saveData == true) {
		//if data exists and its true then door is opened
		y = ystart - sprite_get_height(sprite_index);
		previousState = gate_state_closed;
		state = gate_state_open;
	}//end if
	else {
		//the door has not been opened yet
		mask_index = s_gate_vertical;
		previousState = gate_state_open;
		state = gate_state_closed;
	}//end else
}//end if
else {
	//its a horizontal gate, based on a 64*32 desing
		if(!is_undefined(_saveData) && _saveData == true) {
		//if data exists and its true then door is opened
		x = xstart - sprite_get_width(sprite_index);
		previousState = gate_state_closed;
		state = gate_state_open;
	}//end if
	else {
		//the door has not been opened yet
		mask_index = s_secret_floor_01;
		previousState = gate_state_open;
		state = gate_state_closed;
	}//end else
}//end else

//create audio emiter
emitter = audio_emitter_create();
audioMaxDistance = 1000;	//max distance to hear the emiter
audioDropsAt = 100;			//distance that starts to drop off

//set the model to falloff based on the distrance from the listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, audioDropsAt, audioMaxDistance, 1);









