
enum marksmanStates
{
	normal,
	backflip
}

//Contains general Move and Health
script_execute(scr_Player_General_Init);
script_execute(scr_Marksman_Load);

//Initials
fireCD = 50;
dodgeCD = 60;
ammo = 5;
backflipTime = 8;
