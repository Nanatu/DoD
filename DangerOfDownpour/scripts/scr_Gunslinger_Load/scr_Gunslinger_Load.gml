/// scr_Gunslinger_Load()
//	
//	Script to load in Gunslinger data
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

gunslinger_Animation_List = ds_list_create();
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Running);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Crouching);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);
ds_list_add(gunslinger_Animation_List, spr_Player_Gunslinger_Standing);

animation_List = gunslinger_Animation_List;