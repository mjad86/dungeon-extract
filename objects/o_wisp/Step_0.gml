// Inherit the parent event
event_inherited();

audio_emitter_position(emitter, x, y, 0); //update emitter position

if(place_meeting(x, y, o_player)) {
	taken = true;
	audio_play_sound_on(emitter, sfx_pickup_faemiliar, false, 10);
}//end if

if(!blink) {
	timer++;
}//end if

if(timer > timerMax) {
	//switch to blick sprite
	blink = true
	timer = 0;
}//end if

if(blink && animation_end()) {
	//set blink sprite
	if(sprite_index != wispBlink) {
		sprite_index = wispBlink;
		image_index = 0;
		image_speed = 1;
	}//end if
}//end if

if(sprite_index == wispBlink && animation_end()) {
	//after blink we return to normall and start over
	if(sprite_index != wispIdle) {
		sprite_index = wispIdle;
		image_index = 0;
		image_speed = 1;
	}//end if
	blink = false;
}//end if

image_xscale = taken ? o_player.image_xscale : image_xscale; // facing
x = taken ? o_player.x - (16 * image_xscale) : xstart; //xposition
var _y = taken ? o_player.y - 40 : ystart;	
y = sine_wave(current_time / 3000, 1, 5, _y); //y position
