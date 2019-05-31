/// scr_Player_General_Init()
//	
//	General script describing the general parameters needed to instantiate a player character
//
{
	
//Move Values
	characterState = 0;
	control = controlState.outAbility;
	hsp = 0;
	vsp = 0;
	grv = 0.6;
	walksp = 4;
	facing = sign(hsp);
	jump_power = 10;
	jumping = false;
	takenDamage = false;
	grounded = true;
	
	key_down = 0;
	
//Health
	hp = 20;
	
//Animation list for all characters
	animation_List = ds_list_create();

}