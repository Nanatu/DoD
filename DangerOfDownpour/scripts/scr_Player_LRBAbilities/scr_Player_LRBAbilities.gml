/// @function scr_Player_LRBAbilities()
//	
/// @description LRB's character's abilities
//	Includes upkeep
//

//TODO: define energy and direction of attacks

{
	
//Declare Verb
	var verb;
	
//Initialize to constrain
	verb = noone;

//Ability 1: Flamer
	if (key_abilityOne)
	{
		with instance_create_layer(x+(facing*48),y,"Player",obj_LRB_Firewall)
		{
			image_xscale= other.facing	
		}
	}

//Ability 2: Stomp
	if (key_abilityTwo)
	{
		targets = scr_CollisionLineAll(x, y, x + -facing * 50, y, all, false, true);
		if (targets != noone)
		{	
			size = ds_list_size(targets);
			var i;
			for (i = size-1; i > -1; i--)
			{
				target = targets[|i];
				with(target)
				{
					if (object_is_ancestor(object_index, obj_Enemy))
					{
						show_debug_message("FOUND ONE OR MORE ENEMY!");
						hp = hp - 1;
						instance_create_layer(x,y,"Player",obj_Hit);		
					}
				}
			}
		ds_list_destroy(targets);
		}
	
		targets = scr_CollisionLineAll(x, y, x + facing * 50, y, all, false, true);
		if (targets != noone)
		{	
			size = ds_list_size(targets);
			var i;
			for (i = size-1; i > -1; i--)
			{
				target = targets[|i];
				with(target)
				{
					if (object_is_ancestor(object_index, obj_Enemy))
					{
						show_debug_message("FOUND ONE OR MORE ENEMY!");
						hp = hp - 1;
						instance_create_layer(x,y,"Player",obj_Hit);		
					}
				}
			}
			ds_list_destroy(targets);
		}
	}

//Ability 3: Garbage Collection
	if (key_abilityThree)
	{
		if (energyMax > 0)
		{
			energy--;
		}
		//TODO: Heal Code
	}

//Ability 4: ARC
	if (key_abilityFour)
	{
		energy = 0;
		with instance_create_layer(x+(facing*48),y,"Player",obj_LRB_XOR)
		{
			image_xscale= other.facing	
		}
	}

//Pass back verb
	return verb;
	
}