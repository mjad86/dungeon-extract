event_inherited();
onGround = place_meeting(x, y+1, o_parent_wall);			//verify if player is touching ground	
vSpd += grav;												//Apply gravity force

script_execute(state);										//state machine script execution
	
collision();												//Apply movement