///scr_Grinner_Load()
//	
//	Script to load in Grinner data
//

//Instantiate list
	grinner_Animation_List = ds_list_create();
//Standing
	ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Standing);

//Running
	ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Running);

//Attacking
	ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Attacking);

//Flinching
	ds_list_add(grinner_Animation_List, spr_Enemy_Grinner_Flinching);
	
//Death Spriter
	deathSprite = spr_Enemy_Grinner_Death;
//Set object list to built ds_list
	animation_List = grinner_Animation_List;