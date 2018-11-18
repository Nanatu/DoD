/// scr_Mechanic_Load()
//	
//	Script to load in Mechanic data
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

mechanic_Animation_List = ds_list_create();
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Running);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Jumping);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Crouching);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Falling);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_UsingJets);
ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);

animation_List = mechanic_Animation_List;
