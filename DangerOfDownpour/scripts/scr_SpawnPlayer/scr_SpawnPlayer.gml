/// @function scr_SpawnPlayer()
//	
/// @description Spawn in proper character type
//
{
	var characterObj;
	var characterName;
	
	if (!instance_exists(obj_Player))
	{
		
		switch(global.characterType)
		{
			case currentCharacter.Player:
				characterObj = obj_Player;
				characterName = "PLAYER";
				break;
			case currentCharacter.Gunslinger:
				characterObj = obj_Player_Gunslinger;
				characterName = "GUNSLINGER";
				break;
			case currentCharacter.Marksman:
				characterObj = obj_Player_Marksman;
				characterName = "MARKSMAN";
				break;
			case currentCharacter.Mechanic:
				characterObj = obj_Player_Mechanic;
				characterName = "MECHANIC";
				break;
			case currentCharacter.Huntress:
				characterObj = obj_Player_Huntress;
				characterName = "HUNTRESS";
				break;
			case currentCharacter.LRB:
				characterObj = obj_Player_LRB;
				characterName = "LRB";
				break; 
			case currentCharacter.Beyonder:
				characterObj = obj_Player_Beyonder;
				characterName = "BEYONDER";
				break;
		}
		
		instance_create_layer(obj_PlayerSpawn.x, obj_PlayerSpawn.y-5,"Player",characterObj)
		show_debug_message("PLAYER TYPE IS " + characterName);
	}

}