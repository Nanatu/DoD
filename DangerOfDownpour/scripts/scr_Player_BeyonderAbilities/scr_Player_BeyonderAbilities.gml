/// @function scr_Player_BeyonderAbilities()
//	
/// @description Beyonder character's abilities
//	Includes upkeep
//TODO: Fissure and Rift

{
	
//Declare Verb
	var verb;
	
//Initialize to constrain
	verb = noone;
	
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

//Ability 1: Fissure
	if (key_abilityOne && fissureCD <= 0)
	{
		verb = "Ability1";
		control = controlState.inAbility;
		image_index = 0;
		
		with (instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Fissure))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 20;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
		fissureCD = 30;
		obj_GUIController.abil1CD = true;
	}

//Ability 2: Fade
	if (key_abilityTwo && fadeCD <= 0)
	{
		instance_create_layer(x + facing*15,y,"FrontPlayer",obj_Beyonder_Fade);
		ds_list_destroy(damageList);
		damageList = ds_list_create();
		image_alpha = .5;
		invisTime = 60;
		walksp = 6;
		fadeCD = 60;
		obj_GUIController.abil2CD = true;
	}

//Ability 3: Sight
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

//Ability 4: Rift
	if (key_abilityFour && riftCD <= 0)
	{
		
		with (instance_create_layer(x,y,"FrontPlayer", obj_Beyonder_Rift))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 20;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
		riftCD = 600;
		obj_GUIController.abil4CD = true;
	}
	
	if (invisTime >= 1)
	{
		
		collideInst = instance_place(x, y, obj_Enemy);
		{
			if collideInst != noone
			{
				if(ds_list_find_index(damageList, collideInst.id) == -1)
				{
					with collideInst
					 {
						scr_Enemy_TakeDamage(100,2,60,true);		 
					 }
					 ds_list_add(damageList, collideInst.id);
				}
			}
		}
	}

//Pass back verb
	return verb;

}