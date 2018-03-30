
enum marksmanStates
{
	normal,
	backflip
}

//Contains general Move and Health
script_execute(scr_Player_General_Init);

//Initials
fireCD = 50;
ammo = 5;
backflipTime = 8;
