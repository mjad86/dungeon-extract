event_inherited();

vSpd += grav;												//Apply gravity force
var _los = line_of_sight();									//line of sight
script_execute(state);										//state machine script execution
	
collision();												//Apply movement