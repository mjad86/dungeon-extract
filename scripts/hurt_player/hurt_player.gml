///@desc hurt_player()
function hurt_player() {
	var _player = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;
	with(_player) {
		if(state != player_state_dead) {
			hp -= _dmg				//reduce hp by dmg amount
			//hurt or die?
			if(hp <= 0) {
				//player is dead
				deadScreen = 60; //5 seconds
				instance_create_layer(camera_get_view_x(global.cam), camera_get_view_y(global.cam), "Misc", o_deadscreen); //create deadscreen
				state = player_state_dead;
			}//end if
			else {
				screen_shake(1, 5);
				//playe still alive
				state = player_state_hurt;
				inmune = INMUNE_FRAMES;
				
				//add knockbacks or other effects here
				
			}//end else
		}//end if			
	}//end with	
	

}//end script