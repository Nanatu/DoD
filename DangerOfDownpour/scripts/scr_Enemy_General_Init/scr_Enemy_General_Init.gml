/// @function scr_Enemy_General_Init
/// @description General enemy initialization 
//
{
	
//Init move and gravity
	hsp = 0;
	vsp = 0;
	grv = 0.4;
	walksp = 2;
	facing = sign(hsp);
	attack = false;
	control = false;
	flinchTrigger = false;
	deathSprite = noone;
	flash = 0;
	
}