///@desc hurt_player()
function hurt_player() {
	var _player = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;
	with(_player) {
		if(state != prop_state_destroy) {
			hp -= _dmg				//reduce hp by dmg amount
			//hurt or die?
			if(hp <= 0) {
				//player is dead
				state = player_state_dead;
			}//end if
			else {
				//playe still alive
				state = player_state_hurt;
				inmune = INMUNE_FRAMES;
				
				//add knockbacks or other effects here
				
			}//end else
		}//end if			
	}//end with	
	

}//end script