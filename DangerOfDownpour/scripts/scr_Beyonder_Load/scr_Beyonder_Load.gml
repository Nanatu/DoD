/// scr_Beyonder_Load()
//	
//	Script to load in Beyonder data
//
{

	beyonder_Animation_List = ds_list_create();
//	Standing
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
//	Running
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Running);
//	Jumping
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Jumping);
//	Crouching
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Crouching);
//	Falling
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Falling);
//	Rising
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Rising);
//	Flinching
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Flinching);
//	Ability 1-4
//	Fissure
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Fissure);
//	Fade
	//Effect called on ability use
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
//	Sight
	//Effect called on ability use
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
//	Rift
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);

	animation_List = beyonder_Animation_List;
	
	playerScript = scr_Player_BeyonderAbilities;

}
