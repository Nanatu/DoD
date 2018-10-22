/// scr_Grinner_Load()
//	
//	Script to load in Grinner data
//

grinner_Animation_List = ds_list_create();
ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Idle);
ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Running);
ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Attacking);

animation_List = grinner_Animation_List;