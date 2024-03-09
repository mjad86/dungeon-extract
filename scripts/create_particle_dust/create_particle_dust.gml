///@desc create_particle_jump_or_fall(_state)
///@arg _state reflects the state to create the particles for, 0 for moving, 1 for jumping/landing
function create_particle_dust(_state) {
	var _xx;
	var _yy;
	var _dust;
	switch(_state) {
		case 0:
			//create 1 particle when moving
			if(move != 0) && (canDust) {
				//create particles of dust
				_xx = x;
				_yy = y;
				canDust = false;	
				alarm_set(0, 15);
				_dust = instance_create_layer(_xx, _yy, "Particles", o_dust);
				_dust.addMovement = true;
				_dust.delay = 2;
			}//end if
		break;
		case 1:
			repeat(5) {
				//create 5 particles of dust for jumping/landing
				_xx = x + random_range(-8, 8);
				_yy = y + random_range(-4, 0);					
				_dust = instance_create_layer(_xx, _yy, "Particles", o_dust);
				_dust.addMovement = true;
				_dust.delay = 0;
			}//end repeat
		break;
		case 2:
			//create particles of dust
			_xx = x;
			_yy = y;	
			_dust = instance_create_layer(_xx, _yy, "Particles", o_dust);
			_dust.addMovement = true;
			_dust.delay = 0;
		break;
		case 3:
			repeat(25) {
				//create 25 particles of dust for heavy landings
				_xx = x + random_range(-15, 15);
				_yy = y + random_range(-8, 0);					
				_dust = instance_create_layer(_xx, _yy, "Particles", o_dust);
				_dust.addMovement = true;
				_dust.delay = 0;
			}//end repeat
		break;
	}//end switch
}//end script