/// scr_Player_General_Init()
//	
//	General script describing the general parameters needed to instantiate a player character
//
{
	
//Move Values
	playerState = 0;
	characterState = 0;
	hsp = 0;
	vsp = 0;
	grv = 0.6;
	walksp = 4;
	facing = sign(hsp);
	jump_power = 10;
	crouched = false;

//Health
	hp = 5;

}