/// scr_Marksman_Load()
//	
//	Script to load in Marksman data
//
{

	marksman_Animation_List = ds_list_create();
//	Standing
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
//	Running
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Running);
// Jumping
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
//	Crouching
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Crouching);
//	Falling
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
//	Rising
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
//	Flinching
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
//	Ability 1-4
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);
	ds_list_add(marksman_Animation_List, spr_Player_Marksman_Standing);

	animation_List = marksman_Animation_List;

}