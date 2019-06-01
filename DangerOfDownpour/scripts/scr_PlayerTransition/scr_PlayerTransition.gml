/// @function scr_PlayerTransition()
//	
/// @description Spawn in proper character type after using a room transition
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
		
		with (instance_create_layer(x + (offset*global.lastTransitionDirection), y,"Player",characterObj))
			{
			image_xscale = sign(global.lastTransitionDirection);	
			}
			show_debug_message("PLAYER TYPE IS " + characterName);
	}

}