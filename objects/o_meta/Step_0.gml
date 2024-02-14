if(layer_exists(layer_get_id("Secrets"))) && (instance_exists(o_player)) {
	//maintainces depth above the player	
	layer_depth("Secrets", o_player.depth-1);
}//end if