//obj_Controller
//ONLY HAVE ON OF THESE

scr_Controller();

paused = false;
screenShot = -1;
pauseCD = 0;

menuX = x;
menuY = y;
buttonHeight = 32;

// Buttons
	button[0] = "Resume";
	button[1] = "Options";
	button[2] = "Return To Main Menu";
buttons = array_length_1d(button);

menuIndex = 0;
lastSelected = 0;
lastSelected = 0;