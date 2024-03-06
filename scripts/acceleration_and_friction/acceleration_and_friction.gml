///@desc acceleration_and_friction(_move, _maxSpd, __tempAccel, _tempFric, _inst)
function acceleration_and_friction() {
	
	var _move = argument0;
	var _maxSpd = argument1;
	var _tempAccel = argument2;
	var _tempFric = argument3;
	var _inst = argument4;
	
	if(_inst != noone) {
		//accelerate using both spds from player and platform if we are moving
		hSpd = approach(hSpd, (_maxSpd*_move)+(_inst.moveSpdMax*_inst.move), _tempAccel);
	}//end if
	else {
		if(_move != 0) {
			//accelerate if we are moving
			hSpd = approach(hSpd, _maxSpd*_move, _tempAccel);
		}//end if
		else {
			//apply friction and decelerate
			hSpd = approach(hSpd, 0, _tempFric);
		}//end else
	}//end else
}//end script