/// scr_Huntress_Load()
//	
//	Script to load in Huntress data
//
{

	huntress_Animation_List = ds_list_create();
//	Standing
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
//	Running
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Running);
//	Jumping
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
//	Crouching
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Crouching);
//	Falling
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
//	Rising
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
//	Flinching
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
//	Ability 1-4
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
	ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
// Crouch Attack

	animation_List = huntress_Animation_List;
	
	playerScript = scr_Player_HuntressAbilties;

}