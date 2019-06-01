/// @function  scr_Gunslinger_Create
//

/// @description Gunslinger characters create event

enum gunslingerStates
{
	normal,
	dodge
	
}
//Contains general Move and Health
script_execute(scr_Player_General_Init);
script_execute(scr_Gunslinger_Load);
//Dodge
dodgeCD = 30;
dodgeTime = 0;

//Attack
missileCD = 50;
fireCD = 50;
fmjCD = 50;
fmjAmmo = 0;
missileCount = 5;