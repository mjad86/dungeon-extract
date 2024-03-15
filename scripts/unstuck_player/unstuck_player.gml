///@desc unstuck_player()
function unstuck_player() {
	#region//get out of moving solid platforms that we overlap
		var _rightWall = noone;
		var _leftWall = noone;
		var _topWall = noone;
		var _bottomWall = noone;
		var _list = ds_list_create();
		var _walls = instance_place_list(x, y, o_parent_wall, _list, false);
		//loop through all colliding walls
		for(var _i = 0; _i < _walls; _i++) {
			var _listInst = _list[| _i];
	
			//find closest walls in each direction
			//right walls
			if(_listInst.bbox_left - _listInst.hSpd >= bbox_right-1) {
				if(!instance_exists(_rightWall) || _listInst.bbox_left < _rightWall.bbox_left) {
					_rightWall = _listInst;
				}//end if
			}//end if
			//left walls
			if(_listInst.bbox_right - _listInst.hSpd <= bbox_left+1) {
				if(!instance_exists(_leftWall) || _listInst.bbox_right > _leftWall.bbox_right) {
					_leftWall = _listInst;
				}//end if
			}//end if
			//bottom walls
			if(_listInst.bbox_top - _listInst.vSpd >= bbox_bottom-1) {
				if(!instance_exists(_bottomWall) || _listInst.bbox_top < _bottomWall.bbox_top) {
					_bottomWall = _listInst;
				}//end if
			}//end if
			//top walls
			if(_listInst.bbox_bottom - _listInst.vSpd <= bbox_top+1) {
				if(!instance_exists(_topWall) || _listInst.bbox_bottom > _topWall.bbox_bottom) {
					_topWall = _listInst;
				}//end if
			}//end if
		}//end for

		ds_list_destroy(_list) //avoid memory leak

		//get out of the wall
		if(instance_exists(_rightWall)) {
			//right wall
			var _rightDist = bbox_right - x;
			x = _rightWall.bbox_left - _rightDist;
		}//end if


		if(instance_exists(_leftWall)) {
			//leftt wall
			var _leftDist = x - bbox_left;
			x = _leftWall.bbox_right + _leftDist;
		}//end if

		if(instance_exists(_bottomWall)) {
			//bottom wall
			var _bottomDist = bbox_bottom - y;
			y = _bottomWall.bbox_top + _bottomDist;
		}//end if

		if(instance_exists(_topWall)) {
			//top wall - includes collision for polish and crouching features
			var _topDist = y - bbox_top;
			var _targetY = _topWall.bbox_bottom + _topDist;
			//check if there isnt a collision on the way
			if(!place_meeting(x, _targetY, o_parent_wall)) {
				y = _targetY;
			}//end if
		}//end if
	#endregion
	
	/*
	if(place_meeting(x, y, o_parent_gate)) {	
		for(var _i = 0; _i < 1000; _i++) {
			//right
			if(!place_meeting(x + _i, y, o_parent_gate)) {
				x += _i;
				break;
			}//end if
				//left
			if(!place_meeting(x - _i, y, o_parent_gate)) {
				x -= _i;
				break;
			}//end if
			//up
			if(!place_meeting(x, y - _i, o_parent_gate)) {
				y -= _i;
				break;
				}//end if
			//down
			if(!place_meeting(x, y + _i, o_parent_gate)) {
				y += _i;
				break;
			}//end if
			//top right
			if(!place_meeting(x + _i, y - _i, o_parent_gate)) {
				x += _i;
				y -= _i;
				break;
			}//end if
			//top left
			if(!place_meeting(x - _i, y - _i, o_parent_gate)) {
				x -= _i;
				y -= _i;
				break;
			}//end if
			//bottom right
			if(!place_meeting(x + _i, y + _i, o_parent_gate)) {
				x += _i;
				y += _i;
				break;
			}//end if
			//bottom left
			if(!place_meeting(x - _i, y + _i, o_parent_gate)) {
				x -= _i;
				y += _i;
				break;
			}//end if
		}//end for
	}//end if
	*/
}//end script