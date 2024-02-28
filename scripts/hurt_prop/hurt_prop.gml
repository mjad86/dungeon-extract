///@desc hurt_prop()
function hurt_prop() {
	var _enemy = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;
	with(_enemy) {
		if(state != prop_state_destroy) {
			hp -= _dmg			//reduce hp by dmg amount
			entity_hit_solid()	//trigger flash
			//hurt or die?
			if(hp <= 0) {
				//enemy is dead
				state = prop_state_destroy;
			}//end if
			else {
				//enemy still alive
				state = prop_state_idle;
				
				//add knockbacks or other effects here
				
			}//end else
		}//end if			
	}//end with	
}//end script