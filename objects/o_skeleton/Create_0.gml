// Inherit the parent event
event_inherited();

image_speed = 0;
moveSpd[0] = 0.5;
moveSpd[1] = 1;
timer = 0; //momentary
//sprites
shadow = s_skeleton_shadow;
skeletonIdle = s_skeleton_idle;
skeletonSleep = s_skeleton_sleep;
skeletonDeath = s_skeleton_death;
skeletonMask = s_skeleton_mask;
skeletonMove = s_skeleton_move;
skeletonBlockIdle = s_skeleton_block_idle;
skeletonBlock = s_skeleton_block;
noMask = s_skeleton_mask_sleep;

var _block = instance_create_layer(x, y, "Misc", o_skeleton_block);
with(_block) {
	ownerId = other.id;
}//end with
mask_index = skeletonMask;

state = skeleton_state_block_idle;


