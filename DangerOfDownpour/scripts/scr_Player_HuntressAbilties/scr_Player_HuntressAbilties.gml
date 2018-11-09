/// scr_Player_HuntressAbilities()
//	
//	Script describing the Huntress character's abilities
//	Includes upkeep
//
{
	
	crowCD = max(0, crowCD - 1);
	if (crowCD == 0)
	{
		obj_GUIController.abil2CD = false;
	}
	virusCD = max(0, virusCD - 1);
	if (virusCD == 0)
	{
		obj_GUIController.abil3CD = false;
	}
	mdkCD = max(0, mdkCD - 1);
	if (mdkCD == 0)
	{
		obj_GUIController.abil4CD = false;
	}


	key_abilityOne_Release = keyboard_check_released(ord("Q"));
	key_abilityOne_Pressed = keyboard_check_pressed(ord("Q"));

//Spear thrust
	if (key_abilityOne_Pressed)
	{
		with (instance_create_layer(x+(facing*32),y,"Player",obj_Huntress_SpearThrust))
		{
			image_angle = point_direction(x,y,x+other.facing*40,y);
			speed = 0;
			direction = point_direction(x,y,x+other.facing*40,y);
		}
	}

//Spear throw charge check
	if (key_abilityOne)
	{
	spearCharge++;	
	}

//Spear throw charge throw
	if (key_abilityOne_Release && (spearCharge > chargeMax))
	{
		with (instance_create_layer(x,y,"Player",obj_Huntress_SpearThrow))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 20;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
		spearCharge = 0;
	}

//Reduce spear charge on release
	if (key_abilityOne_Release)
	{
	spearCharge = 0;	
	}

//Crow Throw
	if (key_abilityTwo && (crowCD == 0))
	{
		obj_GUIController.abil2CD = true;
		with (instance_create_layer(x,y-5,"Player",obj_Huntress_Crow))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 10;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
		crowCD = 60;
	}

//Dragon virus
	if (key_abilityThree && (virusCD == 0))
	{
		obj_GUIController.abil3CD = true;
		with (instance_create_layer(x,y-5,"Player",obj_Huntress_Virus))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 10;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
		virusCD = 60;
	}

//MDK
	if (key_abilityFour && (mdkCD == 0))
	{
		obj_GUIController.abil4CD = true;
		with(instance_create_layer(x + 32,y,"FrontPlayer",obj_Murder))
		{	
			
		}
		with(instance_create_layer(x -16,y,"BehindPlayer",obj_Death))
		{
			
		}
		with(instance_create_layer(x,y,"BehindPlayer",obj_Kill))
		{
		
		}
		mdkCD = 60* room_speed;
	}

}