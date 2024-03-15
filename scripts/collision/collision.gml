///@desc collision()
function collision() {
	var _col = false
	
	//dont get left behind by the moving platforms
	earlyMovePlathSpd = false;
	if(instance_exists(myMovingPlat)) && (myMovingPlat.hSpd != 0 && !place_meeting(x, y + gravMax + 1, myMovingPlat)) {
		//move ourself's into that block is there is no other wall in the way
		var _hCheck = myMovingPlat.hSpd;
		if(!place_meeting(x + _hCheck, y, o_parent_wall)) {
			x += _hCheck;
			earlyMovePlathSpd = true;
		}//end if
	}//end if
	
	//Horizontal collision
	var _subPixel = 0.5;
	if(place_meeting( x + hSpd, y, o_parent_wall)) {
		//slope check first
		if(!place_meeting(x + hSpd, y - abs(hSpd) - 1, o_parent_wall)) {
			while(place_meeting(x + hSpd, y, o_parent_wall)) {
				y -= _subPixel;
			}//end while
		}//end if
		else {
			//check for ceiling slope
			if(!place_meeting(x + hSpd, y + abs(hSpd) + 1, o_parent_wall)) {
				while(place_meeting(x + hSpd, y, o_parent_wall)) {
					y += _subPixel;
				}//end while
			}//end if
			else {
				//pixel perfect collision
				var _pixelCheck = _subPixel * sign(hSpd);
				while(!place_meeting(x + _pixelCheck, y, o_parent_wall)) {
					x += _pixelCheck;
				}//end while
				//set hSpd to 0 when collide
				hSpd = 0;
				_col = true;
			}//end else
		}//end else
	}//end if
	
	//go down slopes
	downSlopeSemiSolid = noone
	if(vSpd >= 0 && !place_meeting(x + hSpd, y + 1, o_parent_wall) && place_meeting(x + hSpd, y + abs(hSpd) + 1, o_parent_wall)) {
		//check for a semi solid in the way
		downSlopeSemiSolid = check_for_oneway(x + hSpd, y + abs(hSpd) + 1);
		//precisely mode down slope if there ins't a semisolid in the way
		if(!instance_exists(downSlopeSemiSolid)) {
			while(!place_meeting(x + hSpd, y + _subPixel, o_parent_wall)) {
					y += _subPixel;
			}//end while
		}//end if
	}//end if
	
	//apply movement
	x += hSpd;

	//Vertical collision
	_subPixel = 0.5;
	if(vSpd < 0 && place_meeting(x, y + vSpd, o_parent_wall)) {
		//jump into slope ceilings
		var _slopeSlide = false;
		//slide up slope left
		/*UNCOMENT IF YOU WANT THE PLAYER TO SLIDE ON ROOF SLOPES
		if(move == 0 && !place_meeting(x - abs(vSpd) - 1, y + vSpd, o_parent_wall)) {
			while(place_meeting(x, y + vSpd, o_parent_wall)) {
				x -= 1;
				_slopeSlide = true;
			}//end while
		}//end if
		//slide up slope right
		if(move == 0 && !place_meeting(x + abs(vSpd) + 1, y + vSpd, o_parent_wall)) {
			while(place_meeting(x, y + vSpd, o_parent_wall)) {
				x += 1;
				_slopeSlide = true;
			}//end while
		}//end if
		*/
		//normal collision
		if(!_slopeSlide) {
			//precise collision
			var _pixelCheck = _subPixel * sign(vSpd);
			while(!place_meeting(x, y + _pixelCheck, o_parent_wall)) {
				y += _pixelCheck;
			}//end while
		
			//bonk
			if(vSpd < 0) {
				jumpHoldTimer = 0;
			}//end if
		
			vSpd = 0;	
			_col = true;
		}//end if
	}//end if

	//Floor y collision
	//check for solid and semisolid under the player
	var _clampySpd = max(0, vSpd);
	var _list = ds_list_create();					//create a list to store id of platforms
	var _array = array_create(0);					//create and empty array of 0
	array_push(_array, o_parent_wall, o_oneway_platform);	//store the objects to check in the array
	var _platforms = instance_place_list(x, y + 1 + _clampySpd + gravMax, _array, _list, false);		//add objects to list

	//fix for high rez/high speed projects - check for semisolid object below
	var _vCheck = y + 1 + _clampySpd;
	if(instance_exists(myMovingPlat)) {
		_vCheck += max(0, myMovingPlat.vSpd);
	}//end if
	var _semiSolid = check_for_oneway(x, _vCheck);

	//loop throught the instances and return the one that its top bbox is bellow the players bottom bbox
	for(var _i = 0; _i < _platforms; _i++) {
		var _listInst = _list[| _i];	//accesing the specific platform
		//avoid magnetism
		if(_listInst != forgetSemiSolid) && (_listInst.vSpd <= vSpd || instance_exists(myMovingPlat)) && (_listInst.vSpd > 0 || place_meeting(x, y + 1 + _clampySpd, _listInst)) || (_listInst == _semiSolid) {
			//return a solid wall or any oneway platform that are bellow the player
			if(_listInst.object_index == o_parent_wall || object_is_ancestor(_listInst.object_index, o_parent_wall) || floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.vSpd)) {
				//return the "highest" platform
				if(!instance_exists(myMovingPlat) || _listInst.bbox_top + _listInst.vSpd <= myMovingPlat.bbox_top + myMovingPlat.vSpd || _listInst.bbox_top + _listInst.vSpd <= bbox_bottom) {
					myMovingPlat = _listInst;
				}//end if
			}//end if
		}//end if
	}//end for

	//destroy the list and avoid memory leak
	ds_list_destroy(_list);

	//downslope semisolid for making sure we dont miss semisolid's while going down slopes
	if(instance_exists(downSlopeSemiSolid)) {
		myMovingPlat = downSlopeSemiSolid;
	}//end if

	//one last check to make sure that the platform is bellow us
	if(instance_exists(myMovingPlat) && !place_meeting(x, y + gravMax, myMovingPlat)) {
		myMovingPlat = noone;
	}//end if

	//land on the ground platform if there is one
	if(instance_exists(myMovingPlat)) {
		//scoop up to our platform precisely
		_subPixel = 0.5;
		while(!place_meeting(x, y + _subPixel, myMovingPlat) && !place_meeting(x, y, o_parent_wall)) {
			y += _subPixel;
		}//end while
	
		//make sure we dont end bellow the top of a oneway
		if(myMovingPlat.object_index == o_oneway_platform || object_is_ancestor(myMovingPlat.object_index, o_oneway_platform)) {
			while(place_meeting(x, y, myMovingPlat)) {
				y -= _subPixel;
			}//end while
		}//end if
	
		y = floor(y); //floor the y variable
	
		//collide with the ground
		vSpd = 0;
		_col = true;
		set_on_ground(true);
	}//end if

	//manually fall through a oneway platform
	if(global.down && global.jump) {
		//make sure we have a platform to go down through first
		if(instance_exists(myMovingPlat)) && (myMovingPlat.object_index == o_oneway_platform || object_is_ancestor(myMovingPlat.object_index, o_oneway_platform)) {
			//check if we can go semi solid
			_vCheck = max(1, myMovingPlat.vSpd + 1);
			if(!place_meeting(x, y + _vCheck, o_parent_wall)) {
				//move below the platform
				y += 1;
			
				//inherit any downward speed from my floor platform so it doesnt catch the player
				vSpd = _vCheck-1;
			
				//forget this platform for a brief period so we dont get caught
				forgetSemiSolid = myMovingPlat;
			
				//no more floor platform
				set_on_ground(false);
			
			}//end if
		}//end if
	}//end if

	//apply y movement
	y += vSpd

	//reset forget oneway variable
	if(instance_exists(forgetSemiSolid) && !place_meeting(x, y, forgetSemiSolid)) {
		forgetSemiSolid = noone;
	}//end if

	//final moving platform collision and movement
	//movePlathSpd and collision there on the x axis
	movePlathSpd = 0
	if(instance_exists(myMovingPlat)) {
		//get hSpd from the platform
		movePlathSpd = myMovingPlat.hSpd;
	}//end if

	//move with moveplathSpd
	if(!earlyMovePlathSpd) {
		//move with movePlathSpd
		if(place_meeting(x + movePlathSpd, y, o_parent_wall)) {
			_subPixel = 0.5;
			var _pixelCheck = _subPixel * sign(movePlathSpd);
			while(!place_meeting(x + _pixelCheck, y, o_parent_wall)) {
				x += _pixelCheck
			}//end while
			//set movePlathSpd to 0 to finish collision
			movePlathSpd = 0;
		}//end if
		//apply movement
		x += movePlathSpd;
	}//end if

	//check to snap player to moving platform on the y axis
	if(instance_exists(myMovingPlat)) && (myMovingPlat.vSpd != 0 || myMovingPlat.object_index == o_wall_move || object_is_ancestor(myMovingPlat.object_index, o_wall_move) || myMovingPlat.object_index == o_oneway_move || object_is_ancestor(myMovingPlat.object_index, o_oneway_move)) {
		//snap to the top of the platform
		if(!place_meeting(x, myMovingPlat.bbox_top, o_parent_wall) && myMovingPlat.bbox_top >= bbox_bottom - gravMax) {
			//unfloor the y and snap
			y = myMovingPlat.bbox_top;
		}//end if
	
		/*MADE REDUNDANT BY BLOCK BELOW
		//for when going into a solid wall when in a moving platform
		if(myMovingPlat.vSpd < 0 && place_meeting(x, y + myMovingPlat.vSpd, o_parent_wall)) {
			//push the player down through the oneway platform
			if(myMovingPlat.object_index == o_oneway_platform || object_is_ancestor(myMovingPlat.object_index, o_oneway_platform)) {
				//if we get pushed upwards agaisnt a solid, we get pushed down
				_subPixel = 0.25;
				while place_meeting(x, y + myMovingPlat.vSpd, o_parent_wall) {
					y += _subPixel;
				}//end while
				//if we get pushed downwards agaisnt a solid, we get pushed up
				while place_meeting(x, y, o_parent_wall) {
					y -= _subPixel;
				}//end while
				y = round(y);
			}//end if
			//cancel the myMovingPlat variable
			set_on_ground(false);
		}//end if
		*/
	}//end if

	//get pushed down through a semi solid by a solid colliding moving platform
	if(instance_exists(myMovingPlat)) && (myMovingPlat.object_index == o_oneway_platform || object_is_ancestor(myMovingPlat.object_index, o_oneway_platform)) && (place_meeting(x, y, o_parent_wall)) {
		//if im already stuck at a wall at this point try to move me down to get below o_oneway
		//if im still stuck afterwards, then the player was crushed
	
		//also dont check too far, we dont want to warp below walls
		var _maxPushDist = 10;
		var _pushedDist = 0;
		var _startY = y;
	
		while(place_meeting(x, y, o_parent_wall) && _pushedDist <= _maxPushDist) {
			y++;
			_pushedDist++;
		}//end while
	
		//forget myMovingPlat
		set_on_ground(false);
	
		//if im still in a wall at this point, ive been crushed regardless, return me to my start to avoid jankyness
		if(_pushedDist > _maxPushDist) {
			y = _startY;
		}//end if
	}//end if 
	
	return _col;
	
}//end script