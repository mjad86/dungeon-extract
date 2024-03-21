// Feather disable all

/// This script contains mappings from binding labels - a combination of  names, mouse button
/// names, and abstract gamepad names - to more friendly terms that you can show a player. Typically you'd
/// set up this function to return sprites such that you can draw gamepad icons as visual icons.
/// 
/// Default values in this script reflect the particular, and sometimes unexpected, buttons that each gamepad
/// binding maps to on the actual physical hardware. There are a handful of special cases at the top of the
/// script that are used to handle errors or misconfigurations.



//Special case: When a non-binding value is being evaluated
//              This should only happen if Input is given an invalid input argument
input_icon_not_a_binding("Not a binding");

//Special case: When an empty binding is being evaluated
input_icon_empty("Empty");

//Special case: When a touch binding (virtual button) is being evaluated
input_icon_touch("Virtual button");

//Optional remapping for keyboard and mouse
//This is useful for turning s into sprite icons to match other assets, or for returning formatted strings (e.g. for use with Scribble)
//Any  label not in this struct will simply fall through and return the key name
input_icons_keyboard_and_mouse()
//Put extra .add() commands here to add icons to keyboard and mouse
.add("1",         s_pc_1)
.add("2",         s_pc_2)
.add("3",         s_pc_3)
.add("4",         s_pc_4)
.add("5",         s_pc_5)
.add("6",         s_pc_6)
.add("7",         s_pc_7) 
.add("8",         s_pc_8)
.add("9",         s_pc_9)
.add("0",         s_pc_0)
.add("numpad 1",  s_pc_1)
.add("numpad 2",  s_pc_numpad2)
.add("numpad 3",  s_pc_3)
.add("numpad 4",  s_pc_numpad4)
.add("numpad 5",  s_pc_5)
.add("numpad 6",  s_pc_numpad6)
.add("numpad 7",  s_pc_7) 
.add("numpad 8",  s_pc_numpad8)
.add("numpad 9",  s_pc_9)
.add("numpad 0",  s_pc_0)
.add("A",	      s_pc_A)
.add("B",	      s_pc_B)
.add("C",	      s_pc_C)
.add("D",	      s_pc_D)
.add("E",	      s_pc_E)
.add("F",	      s_pc_F)
.add("G",	      s_pc_G)
.add("H",	      s_pc_H)
.add("I",	      s_pc_I)
.add("J",	      s_pc_J)
.add("K",	      s_pc_K)
.add("L",	      s_pc_L)
.add("M",	      s_pc_M)
.add("N",	      s_pc_N)
.add("O",	      s_pc_O)
.add("P",	      s_pc_P)
.add("Q",	      s_pc_Q)
.add("R",	      s_pc_R)
.add("S",	      s_pc_S)
.add("T",	      s_pc_T)
.add("U",	      s_pc_U)
.add("V",	      s_pc_V)
.add("W",	      s_pc_W)
.add("X",	      s_pc_X)
.add("Y",	      s_pc_Y)
.add("Z",	      s_pc_Z)
.add("space",      s_pc_space)
.add("escape",     s_pc_escape)
.add("enter",      s_pc_enter)
.add("tab",        s_pc_tab)
.add("left shift", s_pc_shift)
.add("left ctrl",  s_pc_control)
.add("left alt",   s_pc_alt)
.add("right shift", s_pc_shift)
.add("right ctrl", s_pc_control)
.add("right alt",  s_pc_alt)
.add("arrow up",   s_pc_key_up)
.add("arrow down", s_pc_key_down)
.add("arrow left", s_pc_key_left)
.add("arrow right", s_pc_key_right)
.add("backspace",  s_pc_backspace)
.add(".",  s_pc_dot)
.add(",",  s_pc_coma)


#region GamepadsF

//Xbox One and Series S|X controllers
input_icons_gamepad(INPUT_GAMEPAD_TYPE_XBOX_ONE)
.add("gamepad face south",         s_xbox_a_button)
.add("gamepad face east",          s_xbox_b_button)
.add("gamepad face west",          s_xbox_x_button)
.add("gamepad face north",         s_xbox_y_button)
.add("gamepad shoulder l",         s_xbox_l_button)
.add("gamepad shoulder r",         s_xbox_r_button)
.add("gamepad trigger l",          s_xbox_L_trigger)
.add("gamepad trigger r",          s_xbox_R_trigger)
.add("gamepad select",             s_xbox_select_button)
.add("gamepad start",              s_xbox_start_button)

.add("gamepad dpad left",          s_xbox_dpad_left)
.add("gamepad dpad right",         s_xbox_dpad_right)
.add("gamepad dpad up",            s_xbox_dpad_up)
.add("gamepad dpad down",          s_xbox_dpad_down)

.add("gamepad thumbstick l left",  s_xbox_lstick_left)
.add("gamepad thumbstick l right", s_xbox_lstick_right)
.add("gamepad thumbstick l up",    s_xbox_lstick_up)
.add("gamepad thumbstick l down",  s_xbox_lstick_down)
//.add("gamepad thumbstick l click", s_xbox_leftstick_button)

.add("gamepad thumbstick r left",  s_xbox_rstick_left)
.add("gamepad thumbstick r right", s_xbox_rstick_right)
.add("gamepad thumbstick r up",    s_xbox_rstick_up)
.add("gamepad thumbstick r down",  s_xbox_rstick_down)
//.add("gamepad thumbstick r click", s_xbox_rightstick_button)


//Series S|X only
.add("gamepad misc 1",             "share")

//Elite and third party controllers
.add("gamepad paddle 1",           "P1")
.add("gamepad paddle 2",           "P2")
.add("gamepad paddle 3",           "P3")
.add("gamepad paddle 4",           "P4")

//PlayStation 5
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PS5)
.add("gamepad face south",         s_ps_x_button)
.add("gamepad face east",          s_ps_circle_button)
.add("gamepad face west",          s_ps_square_button)
.add("gamepad face north",         s_ps_triangle_button)
.add("gamepad shoulder l",         s_ps_L1_trigger)
.add("gamepad shoulder r",         s_ps_R1_trigger)
.add("gamepad trigger l",          s_ps_L2_trigger)
.add("gamepad trigger r",          s_ps_R2_trigger)
.add("gamepad select",             s_ps_select_button)
.add("gamepad start",              s_ps_start_button)

.add("gamepad dpad left",          s_ps_dpad_left)
.add("gamepad dpad right",         s_ps_dpad_right)
.add("gamepad dpad up",            s_ps_dpad_up)
.add("gamepad dpad down",          s_ps_dpad_down)

.add("gamepad thumbstick l left",  s_ps_lstick_left)
.add("gamepad thumbstick l right", s_ps_lstick_right)
.add("gamepad thumbstick l up",    s_ps_lstick_up)
.add("gamepad thumbstick l down",  s_ps_lstick_down)
//.add("gamepad thumbstick l click", s_ps_leftstick_button)

.add("gamepad thumbstick r left",  s_ps_rstick_left)
.add("gamepad thumbstick r right", s_ps_rstick_right)
.add("gamepad thumbstick r up",    s_ps_rstick_up)
.add("gamepad thumbstick r down",  s_ps_rstick_down)
//.add("gamepad thumbstick r click", s_ps_rightstick_button)

.add("gamepad touchpad click",     "touchpad click")

//Not available on the PlayStation 5 console itself but available on other platforms
.add("gamepad misc 1",             "mic")

//DualSense Edge
.add("gamepad paddle 1",           "RB")
.add("gamepad paddle 2",           "LB")

//Switch handheld/dual JoyCon/Pro Controller
input_icons_gamepad(INPUT_GAMEPAD_TYPE_SWITCH)
.add("gamepad face south",         "B")
.add("gamepad face east",          "A")
.add("gamepad face west",          "Y")
.add("gamepad face north",         "X")
.add("gamepad shoulder l",         "L")
.add("gamepad shoulder r",         "R")
.add("gamepad trigger l",          "ZL")
.add("gamepad trigger r",          "ZR")
.add("gamepad select",             "minus")
.add("gamepad start",              "plus")
.add("gamepad dpad left",          "dpad left")
.add("gamepad dpad right",         "dpad right")
.add("gamepad dpad up",            "dpad up")
.add("gamepad dpad down",          "dpad down")

.add("gamepad thumbstick l left",  "thumbstick l left")
.add("gamepad thumbstick l right", "thumbstick l right")
.add("gamepad thumbstick l up",    "thumbstick l up")
.add("gamepad thumbstick l down",  "thumbstick l down")
.add("gamepad thumbstick l click", "thumbstick l click")
 
.add("gamepad thumbstick r left",  "thumbstick r left")
.add("gamepad thumbstick r right", "thumbstick r right")
.add("gamepad thumbstick r up",    "thumbstick r up")
.add("gamepad thumbstick r down",  "thumbstick r down")
.add("gamepad thumbstick r click", "thumbstick r click")
  
//Not available on the Switch console itself but available on other platforms
.add("gamepad guide",              "home")
.add("gamepad misc 1",             "capture")

//Left-hand Switch JoyCon
//This setup assums horizontal hold type
input_icons_gamepad(INPUT_GAMEPAD_TYPE_JOYCON_LEFT)
.add("gamepad face south",         "face south")
.add("gamepad face east",          "face east")
.add("gamepad face west",          "face west") 
.add("gamepad face north",         "face north")
.add("gamepad shoulder l",         "SL")
.add("gamepad shoulder r",         "SR")
.add("gamepad start",              "minus")

.add("gamepad thumbstick l left",  "thumbstick left")
.add("gamepad thumbstick l right", "thumbstick right")
.add("gamepad thumbstick l up",    "thumbstick up")
.add("gamepad thumbstick l down",  "thumbstick down")
.add("gamepad thumbstick l click", "thumbstick click")

//Not available on the Switch console itself but available on other platforms
.add("gamepad select",             "capture")

//Right-hand Switch JoyCon
//This setup assums horizontal hold type
input_icons_gamepad(INPUT_GAMEPAD_TYPE_JOYCON_RIGHT)
.add("gamepad face south",         "face south")
.add("gamepad face east",          "face east")
.add("gamepad face west",          "face west") 
.add("gamepad face north",         "face north")
.add("gamepad shoulder l",         "SL")
.add("gamepad shoulder r",         "SR")
.add("gamepad start",              "plus")

.add("gamepad thumbstick l left",  "thumbstick left")
.add("gamepad thumbstick l right", "thumbstick right")
.add("gamepad thumbstick l up",    "thumbstick up")
.add("gamepad thumbstick l down",  "thumbstick down")
.add("gamepad thumbstick l click", "thumbstick click")

//Not available on the Switch console itself but available on other platforms
.add("gamepad select",             "home")

//Xbox 360
input_icons_gamepad(INPUT_GAMEPAD_TYPE_XBOX_360)
.add("gamepad face south",         s_xbox_a_button)
.add("gamepad face east",          s_xbox_b_button)
.add("gamepad face west",          s_xbox_x_button)
.add("gamepad face north",         s_xbox_y_button)
.add("gamepad shoulder l",         s_xbox_l_button)
.add("gamepad shoulder r",         s_xbox_r_button)
.add("gamepad trigger l",          s_xbox_L_trigger)
.add("gamepad trigger r",          s_xbox_R_trigger)
.add("gamepad select",             s_xbox_select_button)
.add("gamepad start",              s_xbox_start_button)

.add("gamepad dpad left",          s_xbox_dpad_left)
.add("gamepad dpad right",         s_xbox_dpad_right)
.add("gamepad dpad up",            s_xbox_dpad_up)
.add("gamepad dpad down",          s_xbox_dpad_down)

.add("gamepad thumbstick l left",  s_xbox_lstick_left)
.add("gamepad thumbstick l right", s_xbox_lstick_right)
.add("gamepad thumbstick l up",    s_xbox_lstick_up)
.add("gamepad thumbstick l down",  s_xbox_lstick_down)
//.add("gamepad thumbstick l click", s_xbox_leftstick_button)

.add("gamepad thumbstick r left",  s_xbox_rstick_left)
.add("gamepad thumbstick r right", s_xbox_rstick_right)
.add("gamepad thumbstick r up",    s_xbox_rstick_up)
.add("gamepad thumbstick r down",  s_xbox_rstick_down)
//.add("gamepad thumbstick r click", s_xbox_rightstick_button)


//PlayStation 4
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PS4)
.add("gamepad face south",         s_ps_x_button)
.add("gamepad face east",          s_ps_circle_button)
.add("gamepad face west",          s_ps_square_button)
.add("gamepad face north",         s_ps_triangle_button)
.add("gamepad shoulder l",         s_ps_L1_trigger)
.add("gamepad shoulder r",         s_ps_R1_trigger)
.add("gamepad trigger l",          s_ps_L2_trigger)
.add("gamepad trigger r",          s_ps_R2_trigger)
.add("gamepad select",             s_ps_select_button)
.add("gamepad start",              s_ps_start_button)

.add("gamepad dpad left",          s_ps_dpad_left)
.add("gamepad dpad right",         s_ps_dpad_right)
.add("gamepad dpad up",            s_ps_dpad_up)
.add("gamepad dpad down",          s_ps_dpad_down)

.add("gamepad thumbstick l left",  s_ps_lstick_left)
.add("gamepad thumbstick l right", s_ps_lstick_right)
.add("gamepad thumbstick l up",    s_ps_lstick_up)
.add("gamepad thumbstick l down",  s_ps_lstick_down)
//.add("gamepad thumbstick l click", s_ps_leftstick_button)

.add("gamepad thumbstick r left",  s_ps_rstick_left)
.add("gamepad thumbstick r right", s_ps_rstick_right)
.add("gamepad thumbstick r up",    s_ps_rstick_up)
.add("gamepad thumbstick r down",  s_ps_rstick_down)
//.add("gamepad thumbstick r click", s_ps_rightstick_button)

.add("gamepad touchpad click", "touchpad click")

//PlayStation 1-3
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PSX)
.add("gamepad face south",         s_ps_x_button)
.add("gamepad face east",          s_ps_circle_button)
.add("gamepad face west",          s_ps_square_button)
.add("gamepad face north",         s_ps_triangle_button)
.add("gamepad shoulder l",         s_ps_L1_trigger)
.add("gamepad shoulder r",         s_ps_R1_trigger)
.add("gamepad trigger l",          s_ps_L2_trigger)
.add("gamepad trigger r",          s_ps_R2_trigger)
.add("gamepad select",             s_ps_select_button)
.add("gamepad start",              s_ps_start_button)

.add("gamepad dpad left",          s_ps_dpad_left)
.add("gamepad dpad right",         s_ps_dpad_right)
.add("gamepad dpad up",            s_ps_dpad_up)
.add("gamepad dpad down",          s_ps_dpad_down)

.add("gamepad thumbstick l left",  s_ps_lstick_left)
.add("gamepad thumbstick l right", s_ps_lstick_right)
.add("gamepad thumbstick l up",    s_ps_lstick_up)
.add("gamepad thumbstick l down",  s_ps_lstick_down)
//.add("gamepad thumbstick l click", s_ps_leftstick_button)

.add("gamepad thumbstick r left",  s_ps_rstick_left)
.add("gamepad thumbstick r right", s_ps_rstick_right)
.add("gamepad thumbstick r up",    s_ps_rstick_up)
.add("gamepad thumbstick r down",  s_ps_rstick_down)
//.add("gamepad thumbstick r click", s_ps_rightstick_button)


//Nintendo Gamecube
input_icons_gamepad(INPUT_GAMEPAD_TYPE_GAMECUBE)
.add("gamepad face south",         "A")
.add("gamepad face east",          "X")
.add("gamepad face west",          "B")
.add("gamepad face north",         "Y")
.add("gamepad shoulder r",         "Z")
.add("gamepad trigger l",          "L")
.add("gamepad trigger r",          "R")
.add("gamepad start",              "start")
.add("gamepad dpad left",          "dpad left")
.add("gamepad dpad right",         "dpad right")
.add("gamepad dpad up",            "dpad up")
.add("gamepad dpad down",          "dpad down")

.add("gamepad thumbstick l left",  "thumbstick l left")
.add("gamepad thumbstick l right", "thumbstick l right")
.add("gamepad thumbstick l up",    "thumbstick l up")
.add("gamepad thumbstick l down",  "thumbstick l down")

.add("gamepad thumbstick r left",  "thumbstick r left")
.add("gamepad thumbstick r right", "thumbstick r right")
.add("gamepad thumbstick r up",    "thumbstick r up")
.add("gamepad thumbstick r down",  "thumbstick r down")

//The following icons are for Switch GameCube controllers and adapters only
.add("gamepad thumbstick l click", "thumbstick l click")
.add("gamepad thumbstick r click", "thumbstick r click")
.add("gamepad guide",              "home")
.add("gamepad misc 1",             "capture")

////A couple additional examples for optional gamepad types (see __input_define_gamepad_types)
//
////Nintendo 64
//input_icons(INPUT_GAMEPAD_TYPE_N64)
//.add("gamepad face south",         "A")
//.add("gamepad face east",          "B")
//.add("gamepad shoulder l",         "L")
//.add("gamepad shoulder r",         "R")
//.add("gamepad trigger l",          "Z")
//.add("gamepad start",              "start")
//.add("gamepad dpad up",            "dpad up")
//.add("gamepad dpad down",          "dpad down")
//.add("gamepad dpad left",          "dpad left")
//.add("gamepad dpad right",         "dpad right")
//.add("gamepad thumbstick l left",  "thumbstick left")
//.add("gamepad thumbstick l right", "thumbstick right")
//.add("gamepad thumbstick l up",    "thumbstick up")
//.add("gamepad thumbstick l down",  "thumbstick down")
//.add("gamepad thumbstick r left",  "C left")
//.add("gamepad thumbstick r right", "C right")
//.add("gamepad thumbstick r up",    "C up")
//.add("gamepad thumbstick r down",  "C down")
//
////Sega Saturn
//input_icons(INPUT_GAMEPAD_TYPE_SATURN)
//.add("gamepad face south", "A")
//.add("gamepad face east",  "B")
//.add("gamepad face west",  "X")
//.add("gamepad face north", "Y")
//.add("gamepad shoulder l", "L")
//.add("gamepad shoulder r", "Z")
//.add("gamepad trigger l",  "R")
//.add("gamepad trigger r",  "C")
//.add("gamepad select",     "mode")
//.add("gamepad start",      "start")
//.add("gamepad dpad up",    "dpad up")
//.add("gamepad dpad down",  "dpad down")
//.add("gamepad dpad left",  "dpad left")
//.add("gamepad dpad right", "dpad right")

#endregion
