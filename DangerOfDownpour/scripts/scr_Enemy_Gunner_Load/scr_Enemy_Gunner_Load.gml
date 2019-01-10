/// scr_Gunner_Load()
//	
//	Script to load in Grinner data
//

//Instantiate list
	gunner_Animation_List = ds_list_create();
	
//Standing
	ds_list_add(gunner_Animation_List, spr_Enemy_Gunner_Standing);

//Running
	ds_list_add(gunner_Animation_List, spr_Enemy_Gunner_Running);

//Attacking
	ds_list_add(gunner_Animation_List, spr_Enemy_Gunner_Attacking);

//Flinching
	ds_list_add(gunner_Animation_List, spr_Enemy_Gunner_Flinching);
	
//Death Sprite
	deathSprite = spr_Enemy_Gunner_Death;

//Set object list to built ds_list
	animation_List = gunner_Animation_List;