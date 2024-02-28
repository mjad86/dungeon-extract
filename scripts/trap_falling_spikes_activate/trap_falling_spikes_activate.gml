///@desc trap_falling_spikes_activate()
function trap_falling_spikes_activate() {
	//Apply gravity force
	vSpd += grav;
	if(onGround) {
		screen_shake(3, 20);
		//add sfx here
		activateSlot = noone;
	}//end if
}//end script