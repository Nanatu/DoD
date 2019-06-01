/// @function scr_Mechanic_Create
//
/// @description Mechanic character create event

enum mechanicStates
{
	normal,
	rivet
	
}

//Contains general Move and Health
script_execute(scr_Player_General_Init);
script_execute(scr_Mechanic_Load);

//Attack
fireCD = 50;
key_down = 0;
rivetCD =20;
rivetInterval=5;
rivetTime=15;

barrelOne = false;

fuel = 50;

jumpjets = noone;