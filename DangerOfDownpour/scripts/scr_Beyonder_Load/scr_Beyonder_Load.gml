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
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
//	Flinching
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
//	Ability 1-4
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
	ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);

	animation_List = beyonder_Animation_List;

}
