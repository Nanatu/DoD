/// scr_LRB_Load()
//	
//	Script to load in LRB data
//
{

	lrb_Animation_List = ds_list_create();
//	Standing
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
//	Running
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Running);
//	Jumping
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
//	Crouching
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Crouching);
//	Falling
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
//	Rising
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
//	Flinching
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
//	Ability 1-4
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
	ds_list_add(lrb_Animation_List, spr_Player_LRB_Standing);
// Crouch Attack

	animation_List = lrb_Animation_List;
	
	playerScript = scr_Player_LRBAbilities;

}