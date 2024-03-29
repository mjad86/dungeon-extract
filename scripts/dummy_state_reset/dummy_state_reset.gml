///@desc dummy_state_reset()
function dummy_state_reset() {
	
	hp = maxHp;
	currentHp = hp;
	hurt = false;
	sprite_index = dummyIdle;
	image_index = 0;
	image_speed = 0;
	spr = noone;
	state = dummy_state_idle;

}//end script