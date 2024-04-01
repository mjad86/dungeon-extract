// Inherit the parent event
event_inherited();

image_speed = 0;
moveSpd[0] = 0.5;
moveSpd[1] = 1;
timer = 0; //momentary
attackRangeX = 48;
attackRangeY = 32;

//sprites
shadow = s_skeleton_shadow;
skeletonIdle = s_skeleton_idle;
skeletonSleep = s_skeleton_sleep;
skeletonDeath = s_skeleton_death;
skeletonMove = s_skeleton_move;
skeletonBlockIdle = s_skeleton_block_idle;
skeletonBlock = s_skeleton_block;
skeletonAttack1 = s_skeleton_attack_01;
skeletonAttack2 = s_skeleton_attack_02;
skeletonHurt = s_skeleton_hurt;
skeletonAttack1Mask = s_skeleton_attack_01_mask;
skeletonAttack2Mask = s_skeleton_attack_02_mask;
skeletonMask = s_skeleton_mask;
noMask = s_skeleton_mask_sleep;
previousMask = skeletonMask;

//var _block = instance_create_layer(bbox_right, bbox_top, "Misc", o_skeleton_block);
//with(_block) {
//	ownerId = other.id;
//}//end with
mask_index = noMask;

state = skeleton_state_sleep;
stateAttack = skeleton_state_attack_01;				//state of dynamic attacks


