/// scr_Huntress_Load()
//	
//	Script to load in Huntress data
//

huntress_Animation_List = ds_list_create();
ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
ds_list_add(huntress_Animation_List, spr_Player_Huntress_Running);
ds_list_add(huntress_Animation_List, spr_Player_Huntress_Standing);
ds_list_add(huntress_Animation_List, spr_Player_Huntress_Crouching);

animation_List = huntress_Animation_List;
