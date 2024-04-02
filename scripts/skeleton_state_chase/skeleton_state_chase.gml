///@desc skeleton_state_chase()
function skeleton_state_chase() {
	
	if(sprite_index != skeletonMove) {
		sprite_index = skeletonMove;
		image_index = 0;
		image_speed = 1;		
	}//end if
	
	if(x == xTo) {
		//reached target, change state
		state = skeleton_state_idle;
	}//end if
	
	timer++
	var _act = 600;	//10 seconds or 600 frames
	
	if(timer > _act) {
		//if 10 seconds have passed and we havent reached our target we return to idle state
		state = skeleton_state_idle;
		timer = 0;
	}//end if
	
	var _inAttackDist = point_distance(x, y, o_player.x, o_player.y);
	var _attackRange = 48;
	
	if(_inAttackDist <= _attackRange) {
		timer = 0;
		move = 0;
		state = enemy_state_attack;			//set player state to attack
		stateAttack = skeleton_state_attack_01;			//set the attack to be done
	}//end if
}//end script