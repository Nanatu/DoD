/// scr_Beyonder_Load()
//	
//	Script to load in Beyonder data
//
//	Standing,
//	Running,
//	Jumping,
//	Crouching,
//	Falling,
//	Rising,
//	Ability1,
//	Ability2,
//	Ability3,
//	Ability4

beyonder_Animation_List = ds_list_create();
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Running);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Jumping);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Crouching);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Falling);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);

animation_List = beyonder_Animation_List;
