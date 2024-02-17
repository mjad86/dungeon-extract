event_inherited();
onGround = place_meeting(x, y+1, o_parent_wall);			//verify if player is touching ground	
vSpd += grav;												//Apply gravity force

collision();												//Apply movement

script_execute(state);