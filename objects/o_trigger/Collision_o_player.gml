///@desc trigger controller according to slot
#region//START ROOM
if(room_get_name(room) == "r_start") && (!triggered) {
	switch(behaviour) {
		case TRAPBEHAVIOR.FALLTIMER:
			//timer trap falling
			with(o_parent_trap) {
				if(slot == other.slot) {
					other.triggered = true;		//set activation to true to avoid multi trigger
					activated = true;			//set the trap state as activated so it executes its code
					timer = other.slot0Timer	//60 frames = 1 second
					event_user(0);				//call event to trigger
				}//end if
			}//end with
		break;
		case TRAPBEHAVIOR.FLOORTIMER:
			//timer trap falling
			with(o_parent_trap) {
				if(slot == other.slot) {
					other.triggered = true;		//set activation to true to avoid multi trigger
					activated = true;			//set the trap state as activated so it executes its code
					event_user(1);				//call event to trigger
				}//end if
			}//end with
		break;
	}//end switch
}//end if
#endregion








