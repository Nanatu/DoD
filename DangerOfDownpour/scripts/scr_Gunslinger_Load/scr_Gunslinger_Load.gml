/// scr_Gunslinger_Load()
//	
//	Script to load in Gunslinger data
//
{

	gunslinger_Animation_List = ds_list_create();
//	Standing
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
//	Running
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Running);
//	Jumping
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
//	Crouching
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Crouching);
//	Falling
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
//	Rising
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
//	Flinching
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
//	Ability1-4
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
	ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
// Crouch Attack

	animation_List = gunslinger_Animation_List;
	
	playerScript = scr_Player_GunslingerAbilities;

}