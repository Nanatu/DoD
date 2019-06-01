/// @function scr_Player_GunslingerAbilities()
//	
/// @description Script describing the Gunslinger character's abilities
//	Includes upkeep
//

{
	
//Declare Verb
	var verb;
	
//Initialize to constrain
	verb = noone;

//Ability 1: Bang
	fireCD = max(0, fireCD-1);
	if (fireCD == 0)
	{
		obj_GUIController.abil1CD = false;
	}

//Ability 2: FMJs
	if (fmjAmmo == 0)
	{
	fmjCD = max(0, fmjCD-1);
	}
	if (fmjCD == 0)
	{
		obj_GUIController.abil2CD = false;
	}

//Ability 3: Grit
	dodgeCD = max(0, dodgeCD-1);
	if (dodgeCD == 0)
	{
		obj_GUIController.abil3CD = false;
	}
	dodgeTime = max(0, dodgeTime-1);
	
//Ability 4: Big Iron 
	missileCD = max(0, missileCD-1);
	if (missileCD == 0)
	{
		obj_GUIController.abil4CD = false;
	}

//Ability 1: Bang
	if (key_abilityOne && fireCD <= 0 && (fmjAmmo < 1))
	{
		obj_GUIController.abil1CD = true;
		var tx, wall, target;
		if (facing == sign(1)) { tx = room_width; }
		else             { tx = 0; }
		wall = scr_CollisionLineFirst(x, y, tx, y, obj_Wall, false, true);
		if (wall != noone)
		{
			tx = wall.x - (((wall.sprite_width div 2) + 1) * facing);
		}
		target = scr_CollisionLineFirst(x, y, tx, y, obj_Enemy, false, true);
		if (target != noone)
		{
			with(target)
				{
				if (object_is_ancestor(object_index, obj_Enemy))
					{
						show_debug_message("FOUND ONE ENEMY!");
						scr_Enemy_TakeDamage(1,2,60,true);
					}
				}
		}
		else show_debug_message("NOT FOUND ENEMY!");		

	fireCD = 10;
	}
	
//Ability 2: FMJs
//Load FMJs
	if (key_abilityTwo && (fmjCD <= 0))
	{
		fmjAmmo = 5;
		obj_GUIController.abil2CD = true;
		fmjCD = 120;
	}

//Ability 1: Bang + FMJs
//Run this when FMJs are loaded
	if (key_abilityOne && (fireCD <= 0) && (fmjAmmo > 0))
	{
		fmjAmmo = max(0, fmjAmmo - 1);
		obj_GUIController.abil1CD = true;
		var tx, wall, targets;
		if (facing == sign(1)) { tx = room_width; }
		else             { tx = 0; }
		wall = scr_CollisionLineFirst(x, y, tx, y, obj_Wall, false, true);
		if (wall != noone)
		{
			tx = wall.x - (((wall.sprite_width div 2) + 1) * facing);
		}
		targets = scr_CollisionLineAll(x, y, tx, y, all, false, true);
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
						scr_Enemy_TakeDamage(1,2,60,true);
						
					}
				}
			}
			ds_list_destroy(targets);
			fireCD = 10;
	
		}
		else
		{
			show_debug_message(" NOT FOUND ONE OR MORE ENEMY!");
		}
	}

//Ability 3: Dodge
	if(key_abilityThree && dodgeCD <= 0)
	{
		obj_GUIController.abil3CD = true;
		characterState = gunslingerStates.dodge
		dodgeTime = 15;
		dodgeCD = 60;
	}

//Ability 4: Big Iron
	if (key_abilityFour && missileCD <= 0)
	{
		obj_GUIController.abil4CD = true;
		
		//inst = instance_create_layer(x, y, "Player", obj_Gunslinger_HomingRocket);
		var i
		for (i = 5; i > 0; i--)
		{
			instance_create_layer(x, y, "Player", obj_Gunslinger_HomingRocket);

		}
		missileCD = 50;
	}
	
//Pass back verb
	return verb;	

}