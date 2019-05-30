/// scr_Player_MechanicAbilities()
//	
//	Script describing the Mechanic character's abilities
//	Includes upkeep
//
{
	
//Declare Verb
	var verb;
	
//Initialize to constrain
	verb = noone;

	key_abilityOne_Pressed = keyboard_check_pressed(ord("Q"));
	key_abilityOne_Release = keyboard_check_released(ord("Q"));

	fireCD = max(0, fireCD-1);
	if (fireCD == 0)
	{
		obj_GUIController.abil1CD = false;
	}
	rivetCD = max(0,rivetCD-1);
	if (rivetCD == 0)
	{
		obj_GUIController.abil2CD = false;
	}

//Ability 1: Duplex first shot
	if (key_abilityOne_Pressed) && (fireCD <= 0) && !(key_abilityThree) && !key_down
	{
	
		for (i = 10; i > 0; i--)
		{
			with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
				speed = 30 + random_range(-5,5);
				direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
			}
		}
	barrelOne = false;
	}
	
//Ability 1:Duplex first shot w/crouch
	if (key_abilityOne_Pressed) && (fireCD <= 0) && !(key_abilityThree) && key_down
	{
	verb = "CrouchAttack";
	control = controlState.inAbility
		for (i = 10; i > 0; i--)
		{
			with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
				speed = 30 + random_range(-5,5);
				direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
			}
		}
	barrelOne = false;
	}

//Ability 1: Duplex first shot AND Jump Jets
	if (key_abilityOne_Pressed) && (fireCD <= 0) && (key_abilityThree)
	{
	
	for (i = 10; i > 0; i--)
	{
		with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
		{
			image_angle = point_direction(x,y,x+random_range(-5, 3),y+30);
			speed = 30 + random_range(-5,5);
			direction = point_direction(x,y,x+random_range(-5, 3),y+30);

		}
	}
	barrelOne = false;
}


//Ability 1: Duplex second shot
	if (key_abilityOne_Release) && (fireCD <= 0) && (barrelOne == false) && !(key_abilityThree) && !key_down
	{
	obj_GUIController.abil1CD = true;
	for (i = 10; i > 0; i--)
	{
		with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
		{
			image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
			speed = 30 + random_range(-5,5);
			direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
		}
	}
	if (key_down)
			{
			verb = "CrouchAttack";
			}
	fireCD = 20;
	barrelOne = true;
	}
	
//Ability 1: Duplex second shot w/crouch
	if (key_abilityOne_Release) && (fireCD <= 0) && (barrelOne == false) && !(key_abilityThree) && key_down
	{
		
	verb = "CrouchAttack";
	control = controlState.inAbility
	obj_GUIController.abil1CD = true;
	for (i = 10; i > 0; i--)
	{
		with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
		{
			image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
			speed = 30 + random_range(-5,5);
			direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
		}
	}
	if (key_down)
			{
			verb = "CrouchAttack";
			}
	fireCD = 20;
	barrelOne = true;
	}

//Ability 1: Duplex second shot AND Jump jets
	if (key_abilityOne_Release) && (fireCD <= 0) && (barrelOne == false) && (key_abilityThree)
	{
	obj_GUIController.abil1CD = true;
	for (i = 10; i > 0; i--)
	{
		with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
		{
			image_angle = point_direction(x,y,x+random_range(-5, 3),y+30);
			speed = 30 + random_range(-5,5);
			direction = point_direction(x,y,x+random_range(-5, 3),y+30);
		}
	}
	fireCD = 20;
	barrelOne = true;
	}

//Ability 2: Rivets
	if (key_abilityTwo && rivetCD == 0)
	{
		obj_GUIController.abil2CD = true;
		characterState = mechanicStates.rivet;
	}

//Ability 3: Jump Jets
	if (key_abilityThree) && (fuel > 0)
	{
		verb = "Ability3"
		if !(instance_exists(obj_Mechanic_Jumpjets))
		{
			//jumpjets = instance_create_layer(x,y+16,"Player",obj_Mechanic_Jumpjets)
		}
		vsp = -walksp;
		fuel  = fuel - 1;
	}
	else if(place_meeting(x,y+1,obj_Wall))
	{
		fuel = min(50, fuel+1);
	}
	
//Ability 4
	
//Pass back verb
	return verb;
	
}