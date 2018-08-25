/// scr_Beyonder_Load()
//	
//	Script to load in Beyonder data
//

beyonder_Animation_List = ds_list_create();
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Running);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Standing);
ds_list_add(beyonder_Animation_List, spr_Player_Beyonder_Crouching);

animation_List = beyonder_Animation_List;
