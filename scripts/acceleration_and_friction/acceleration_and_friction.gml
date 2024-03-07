///@desc acceleration_and_friction(_move, _maxSpd, _tempAccel, _tempFric, _inst)
///@arg _move 1 or 0
///@arg _maxSpd maximun speed
///@arg _tempAccel amount to accelerate by
///@arg	_tempFric amount to de accelerate by
///@arg _inst of moving platform if in contact with one
function acceleration_and_friction() {
	
	var _move = argument0;
	var _maxSpd = argument1;
	var _tempAccel = argument2;
	var _tempFric = argument3;
	var _inst = argument4;
	
	if(_inst != noone) {
		//accelerate using both spds from player and platform if we are moving
		hSpd = approach(hSpd, (_maxSpd*_move)+(_inst.moveSpdMax*_inst.move), _tempAccel);
		momentum = abs(_inst.hSpd);	//setting the momentum
	}//end if
	else {
		if(_move != 0) {
			//accelerate if we are moving
			hSpd = approach(hSpd, (_maxSpd+momentum)*_move, _tempAccel);
		}//end if
		else {
			//apply friction and decelerate
			hSpd = approach(hSpd, 0, _tempFric);
		}//end else
		momentum = max(0, momentum - 0.01);	//reset momentum to 0
	}//end else
}//end script