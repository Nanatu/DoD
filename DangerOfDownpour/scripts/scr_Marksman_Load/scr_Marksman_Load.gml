/// scr_Marksman_Load()
//	
//	Script to load in Marksman data
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

marksman_Animation_List = ds_list_create();
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Running);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Crouching);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(huntress_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);

animation_List = marksman_Animation_List;
