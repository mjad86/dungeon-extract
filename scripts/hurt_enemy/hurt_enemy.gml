///@desc hurt_enemy()
function hurt_enemy() {
	var _enemy = argument0;
	var _dmg = argument1;
	var _dmgDealer = argument2;	
	with(_enemy) {
		//if(state != dummy_state_reset) {
			entity_hit_solid()	//trigger flash
			hp -= _dmg			//reduce hp by dmg amount
			//hurt or die?
			if(!hurt) {
				//create healthbar
				healthBar = instance_create_layer(x, y, "Misc", o_enemy_healthbar); //create health bar
				hurt = true;
			}//end if
			with(healthBar) {
				maxHp = other.maxHp;
				hp = other.hp;
				ownerId = other.id;
				healthBarHeight = other.healthBarHeight;
				healthBarXPos = other.healthBarXPos;
			}//end with
			if(hp <= 0) {
				//enemy is dead
				state = skeleton_state_dead;
			}//end if
			else {
				//enemy still alive
				if(_dmgDealer.staggerEnemy) {
					state = skeleton_state_hurt;	
					_dmgDealer.staggerEnemy = false;
				}//end if
			}//end else
		//}//end if			
	}//end with	
}//end script