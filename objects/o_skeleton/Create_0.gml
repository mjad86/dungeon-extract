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
noMask = s_skeleton_mask_sleep;

mask_index = noMask;

state = skeleton_state_sleep;


