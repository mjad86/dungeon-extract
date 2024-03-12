///@desc Input control setup
global.controller = input_player_get_gamepad_type();	//get controller device

global.left = input_check("left");					//move left key
global.right = input_check("right");				//move right key
global.menuLeft = input_check_pressed("left");		//move left key in menu
global.menuRight = input_check_pressed("right");	//move right key in menu
global.up = input_check("up");						//up key
global.down = input_check("down");					//crouch key
global.jump = input_check_pressed("jump");			//jump key
global.jumpRelease = input_check_released("jump");	//jump key hold
global.pause = input_check_pressed("pause");		//pause key
global.action = input_check_pressed("action");		//action key
global.activate = input_check("action");			//activate key
global.cancel = input_check_pressed("cancel");		//cancel key
global.attack = input_check_pressed("attack");		//attack key
global.dodge = input_check_pressed("dodge");		//dodge/roll key
global.block = input_check("block");				//block key
global.camLeft = input_check("cam_left");			//move cam left key
global.camRight = input_check("cam_right");			//move cam right key
global.camUp = input_check("cam_up");				//move cam up key
global.camDown = input_check("cam_down");			//move cam down key









