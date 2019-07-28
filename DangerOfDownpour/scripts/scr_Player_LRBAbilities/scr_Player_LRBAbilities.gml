/// @function scr_Player_LRBAbilities()
//	
/// @description LRB's character's abilities
//	Includes upkeep
//

//TODO: define energy and direction of attacks

{
	
if (hsp != 0)
{
	energyTimer++;
	if ((energyTimer >= 60) && (energy < energyMax))
	{	
		energy++;
		energyTimer = 0;
	}
}
	
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
						scr_Enemy_TakeDamage(5,2,60,true);			
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
						scr_Enemy_TakeDamage(5,2,60,true);	
					}
				}
			}
			ds_list_destroy(targets);
		}
	}

//Ability 3: Garbage Collection
	if (key_abilityThree)
	{
		
		if ((hp < maxHP) && (energy > 0))
		{
			hp++;
			energy--;
		}
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