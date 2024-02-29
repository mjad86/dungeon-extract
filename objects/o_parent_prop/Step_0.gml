audio_emitter_position(emitter, x, y, 0); //update emitter position

onGround = on_ground();										//verify if player is touching ground	
vSpd += grav;												//Apply gravity force

if(state != prop_state_destroy) {
	jump_through_col(o_oneway_platform);	
}//end if
collision();												//Apply movement

script_execute(state);