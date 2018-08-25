/// scr_Marksman_Load()
//	
//	Script to load in Marksman data
//

marksman_Animation_List = ds_list_create();
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Running);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Crouching);

animation_List = marksman_Animation_List;
