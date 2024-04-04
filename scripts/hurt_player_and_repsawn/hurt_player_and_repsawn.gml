///@desc hurt_player_and_respawn()
function hurt_player_and_respawn() {
	var _player = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;
	with(_player) {
		if(state != player_state_dead) {
			hp -= _dmg				//reduce hp by dmg amount
			//hurt or die?
			if(hp <= 0) {
				//player is dead
				deadScreen = 60; //1 second
				instance_create_layer(camera_get_view_x(global.cam), camera_get_view_y(global.cam), "Misc", o_deadscreen); //create deadscreen
				state = player_state_dead;
				audio_play_sound(sfx_death_hit, 10, false);
			}//end if
			else {
				screen_shake(1, 5);
				//playe still alive
				state = player_state_dead_respawn;
				audio_play_sound(sfx_death_hit, 10, false);
				grav = 0;
				inmune = INMUNE_FRAMES;				
			}//end else
		}//end if			
	}//end with	
	

}//end script