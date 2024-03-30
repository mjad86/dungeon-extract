x = ownerId.x;
y = ownerId.y;
image_xscale = ownerId.image_xscale;

if(ownerId.state !=  skeleton_state_block_idle) {
	instance_destroy();
}//end if