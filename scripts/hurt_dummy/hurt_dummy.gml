///@desc hurt_dummy()
function hurt_dummy() {
	var _enemy = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;		
	with(_enemy) {
		if(state != dummy_state_reset) {
			hp -= _dmg			//reduce hp by dmg amount
			entity_hit_solid()	//trigger flash
			//hurt or die?
			if(hp <= 0) {
				//enemy is dead
				state = dummy_state_reset;
			}//end if
			else {
				//enemy still alive
				state = dummy_state_idle;				
			}//end else
		}//end if			
	}//end with	
}//end script