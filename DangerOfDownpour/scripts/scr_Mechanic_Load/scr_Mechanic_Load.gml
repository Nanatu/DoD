/// scr_Mechanic_Load()
//	
//	Script to load in Mechanic data
//
{

	mechanic_Animation_List = ds_list_create();
//	Standing
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
//	Running
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Running);
//	Jumping
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Jumping);
//	Crouching
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Crouching);
//	Falling
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Falling);
//	Rising
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Rising);
//	Flinching
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
//	Ability 1-4
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_UsingJets);
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_Standing);
// Crouch Attack
	ds_list_add(mechanic_Animation_List, spr_Player_Mechanic_CrouchShoot);

	animation_List = mechanic_Animation_List;
	
	playerScript = scr_Player_MechanicAbilities;

}