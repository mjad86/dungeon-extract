///@desc check_for_oneway(_x, _y)
function check_for_oneway(_x, _y) {
	
	//return variable
	var _rtrn = noone;
	
	//not moving upwards, and check for normal collision
	if(vSpd >= 0 && place_meeting(_x, _y, o_oneway_platform)) {
		var _list = ds_list_create();					 //create a list to store id of platforms
		var _platforms = instance_place_list(_x, _y, o_oneway_platform, _list, false);		//add objects to list
		
		for(var _i = 0; _i < _platforms; _i++) {
			var _listInst = _list[| _i];
			if( _listInst != forgetSemiSolid && floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.vSpd)) {
				_rtrn = _listInst; //id assinged
				//exit the loop early
				_i = _platforms;
			}//end if
		}//end for
		ds_list_destroy(_list);	//avoid memory leak
	}//end if
	
	return _rtrn;	//return the id
	
}//end script