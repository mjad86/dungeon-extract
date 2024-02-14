///@desc acceleration_and_friction(_speed, _accel, _fric)
///@arg _move is to determine if player is pressing anny keys aka moving
///@arg _speed being the regular movement speed of the player
///@arg _accel being the acceleration amount to witch the player will reach maximum speed
///@arg _fric being the friction that will decelerate the player when not moving
function acceleration_and_friction(_move, _speed, _accel, _fric) {

	if(_move != 0) {
		//accelerate if we are moving
		hSpd = lerp(hSpd, _speed*_move, _accel);
	}//end if
	else {
		//apply friction and decelerate
		hSpd = lerp(hSpd, 0, _fric);
	}//end else

}//end script