/// scr_LRB_Load()
//	
//	Script to load in LRB data
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

lrb_Animation_List = ds_list_create();
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Running);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Crouching);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);

animation_List = lrb_Animation_List;
