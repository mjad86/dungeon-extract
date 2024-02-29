///@desc GUI and menu setup
inputBuffer = 0;
inputBufferMax = 10;
inputting = false;
curVal = noone;

//create menu pages
dsMenuMain = create_menu_page(
			 ["Resume", MENU_ELEMENT_TYPE.SCRIPT_RUNNER, resume_game],
			 ["Options", MENU_ELEMENT_TYPE.PAGE_TRANSFER, MENU_PAGE.OPTIONS],
			 ["Quit", MENU_ELEMENT_TYPE.SCRIPT_RUNNER, exit_game]);
							  
dsMenuOptions = create_menu_page(
				["Music", MENU_ELEMENT_TYPE.SLIDER, change_volume, 0.5, [0, 1]],
				["Sfx", MENU_ELEMENT_TYPE.SLIDER, change_volume, 0.5, [0, 1]],
				//["Window Size", MENU_ELEMENT_TYPE.SHIFT, change_window_size, 0, ["320x180", "640x360", "1080x720"]],
				["FullScreen",  MENU_ELEMENT_TYPE.TOGGLE, change_window_mode, 0, [0, 1]],
				["Controls", MENU_ELEMENT_TYPE.PAGE_TRANSFER, MENU_PAGE.CONTROLS],
				["Back",  MENU_ELEMENT_TYPE.PAGE_TRANSFER, MENU_PAGE.MAIN]);
				
dsMenuControls = create_menu_page(
				 ["Left", MENU_ELEMENT_TYPE.INPUT, "left"],
				 ["Right", MENU_ELEMENT_TYPE.INPUT, "right"],
			     ["Jump", MENU_ELEMENT_TYPE.INPUT, "jump"],
			     ["Crouch",  MENU_ELEMENT_TYPE.INPUT, "crouch"],
				 ["Back",  MENU_ELEMENT_TYPE.PAGE_TRANSFER, MENU_PAGE.OPTIONS]);

page = 0;		//flag to jump between menu pages
lastPage = 0;	//flag to track previous menu pages for cancel button
menuPage = [dsMenuMain, dsMenuOptions, dsMenuControls];
var _arrayLen = array_length(menuPage);
for(var _i = 0; _i < _arrayLen; _i++) {
	//crating new variables and setting values
	menuOption[_i] = 0;
}//end for





