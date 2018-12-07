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
	crouching = false;
	jumping = false;
	rising = false;
	falling = false;

//Health
	hp = 5;
	
animation_List = ds_list_create()

}