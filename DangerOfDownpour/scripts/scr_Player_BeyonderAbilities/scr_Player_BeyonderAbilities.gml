/// scr_Player_BeyonderAbilities()
//	
//	Script describing the Beyonder character's abilities
//	Includes upkeep
//TODO: Fissure and Rift

{
	fissureCD = max(0, fissureCD-1);
	if (fissureCD == 0)
	{
		obj_GUIController.abil1CD = false;
	}
	fadeCD = max(0, fadeCD-1);
	if (fadeCD == 0)
	{
		obj_GUIController.abil2CD = false;
	}
	sightCD = max(0, sightCD-1);
	if (sightCD == 0)
	{
		obj_GUIController.abil3CD = false;
	}
	riftCD = max(0, riftCD-1);
	if (riftCD == 0)
	{
		obj_GUIController.abil4CD = false;
	}
	
	
	invisTime = max(0, invisTime-1);
	if(invisTime <= 0)
	{
		image_alpha = 1;
		walksp = 4;
	}
	
	if (key_abilityOne && fissureCD <= 0)
	{
		instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Fissure);
		fissureCD = 30;
		obj_GUIController.abil1CD = true;
	}

	if (key_abilityTwo && fadeCD <= 0)
	{
		image_alpha = .5;
		invisTime = 60;
		walksp = 6;
		fadeCD = 60;
		obj_GUIController.abil2CD = true;
	}

	if (key_abilityThree && sightCD <= 0)
	{
//Far Right Eye
		with(instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Sight))
		{
			follow = other.id;
			x = other.x;
			y = other.y;
			offsetX = 32;
			offsetY = -32;
			timeAlive = 540;
		}
//Middle Right Eye
		with(instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Sight))
		{
			follow = other.id;
			x = other.x;
			y = other.y;
			offsetX = 16;
			offsetY = -40;
			timeAlive = 600;
		}
	
	
//Middle Left Eye
		with(instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Sight))
		{
			follow = other.id;
			x = other.x;
			y = other.y;
			offsetX = -16;
			offsetY = -40;
			timeAlive = 600;
		}
	
//Far Left Eye
		with(instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Sight))
		{
			follow = other.id;
			x = other.x;
			y = other.y;
			offsetX = -32;
			offsetY = -32;
			timeAlive = 540;
		}
	
		sightCD = 1200;
		obj_GUIController.abil3CD = true;
	}

	if (key_abilityFour && riftCD <= 0)
	{
		instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Rift);
		riftCD = 600;
		obj_GUIController.abil4CD = true;
	}

}