///scr_StoolToad_Load()
//	
//	Script to load in StoolToad data
//
// TODO: Animations for StoolToad
//Instantiate list
	stoolToad_Animation_List = ds_list_create();
//Standing
	ds_list_add(stoolToad_Animation_List, spr_Enemy_Grinner_Standing);
	
//Idling
	ds_list_add(stoolToad_Animation_List, spr_Enemy_Grinner_idling);
	
//Running
	ds_list_add(stoolToad_Animation_List, spr_Enemy_Grinner_Running);

//Attacking
	ds_list_add(stoolToad_Animation_List, spr_Enemy_Grinner_Attacking);

//Flinching
	ds_list_add(gstoolToad_Animation_List, spr_Enemy_Grinner_Flinching);
	
//Death Spriter
	deathSprite = spr_Enemy_Grinner_Death;
//Set object list to built ds_list
	animation_List = stoolToad_Animation_List;
//Damage list for one time damage
	//damageList = ds_list_create();