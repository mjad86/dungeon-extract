audio_emitter_position(emitter, x, y, 0); //update emitter position
var _targetX, _targetY;

if(delay > 0) {
	//reset delay to 0
	delay = max(0, delay - 1);
}//end if

script_execute(state);

x += hSpd;
y += vSpd;