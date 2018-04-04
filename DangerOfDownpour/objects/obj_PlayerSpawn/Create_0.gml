if (!instance_exists(obj_Player))
{
	if (global.characterType == currentCharacter.Player)
	{
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y,"Player",obj_Player)
		show_debug_message("PLAYER TYPE IS DEFAULT");
		//instance_deactivate_object(obj_PlayerSpawn);
	}
	
	if (global.characterType == currentCharacter.Gunslinger)
	{
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y,"Player",obj_Player_Gunslinger)
		show_debug_message("PLAYER TYPE IS GUNSLINGER");
		//instance_deactivate_object(obj_PlayerSpawn);
	}
	
	if (global.characterType == currentCharacter.Marksman)
	{
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y,"Player",obj_Player_Marksman)
		show_debug_message("PLAYER TYPE IS MARKSMAN");
		//instance_deactivate_object(obj_PlayerSpawn);
	}
	
	if (global.characterType == currentCharacter.Mechanic)
	{
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y,"Player",obj_Player_Mechanic)
		show_debug_message("PLAYER TYPE IS MECHANIC");
		//instance_deactivate_object(obj_PlayerSpawn);
	}
	if (global.characterType == currentCharacter.Huntress)
	{
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y,"Player",obj_Player_Huntress)
		show_debug_message("PLAYER TYPE IS HUNTRESS");
		//instance_deactivate_object(obj_PlayerSpawn);
	}
}
