///@desc moving platform behavior
audio_emitter_position(emitter, x, y, 0); //update emitter position
var _targetX, _targetY;

if(delay > 0) {
	//reset delay to 0
	delay = max(0, delay - 1);
}//end if

switch(moveType) {
	case MOVE.VERTICAL:
		if(automatic) {
			//move vertically only
			dir += rotSpd;

			//get our taget position
			_targetX = xstart + lengthdir_x(radiusOrDist, dir);
			_targetY = ystart + lengthdir_y(radiusOrDist, dir);
		
			//get speed's
			hSpd = 0;
			vSpd = _targetY - y;
		}//end if
		else {
			hSpd = 0;
			vSpd = 0;
		}//end else
	break;
	case MOVE.HORIZONTAL:
		if(automatic) {
			//move horizontally only
			dir += rotSpd;

			//get our taget position
			_targetX = xstart + lengthdir_x(radiusOrDist, dir);
			_targetY = ystart + lengthdir_y(radiusOrDist, dir);
		
			//get speed's
			hSpd = _targetX - x;
			vSpd = 0;
		break;
		}//end if
		else {
			hSpd = 0;
			vSpd = 0;
		}//end else
	case MOVE.CIRCULAR:
		if(automatic) {
			//move in a circle
			dir += rotSpd;

			//get our taget position
			_targetX = xstart + lengthdir_x(radiusOrDist, dir);
			_targetY = ystart + lengthdir_y(radiusOrDist, dir);
		
			//get speed's
			hSpd = _targetX - x;
			vSpd = _targetY - y;
				}//end if
		else {
			hSpd = 0;
			vSpd = 0;
		}//end else
	break;
	case MOVE.BUMPER_VERTICAL:
		if(automatic) {
			//get speed's
			hSpd = 0;
			vSpd = bumperSpd;
			if(place_meeting(x, y + vSpd, o_parent_wall)) {
				vSpd *= -1;
				bumperSpd *= -1;
			}//end if
				}//end if
		else {
			hSpd = 0;
			vSpd = 0;
		}//end else
	break;
	case MOVE.BUMPER_HORIZONTAL:
		if(automatic) {
			//get speed's
			hSpd = bumperSpd;
			vSpd = 0;
			if(place_meeting(x + hSpd, y, o_parent_wall)) {
				hSpd *= -1;
				bumperSpd *= -1;
			}//end if
		}//end if
		else {
			hSpd = 0;
			vSpd = 0;
		}//end else
	break;
}//end switch

//apply movement
x += hSpd;
y += vSpd;