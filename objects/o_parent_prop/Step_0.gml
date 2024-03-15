audio_emitter_position(emitter, x, y, 0); //update emitter position

if(!onGround) {
	vSpd += grav;												//Apply gravity force
}//end if
else {
	vSpd = 0;
}//end else

collision();												//Apply movement

script_execute(state);