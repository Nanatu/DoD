/// @function scr_Player_MarksmanAbilities()
//	
/// @description Marksman character's abilities
//	Includes upkeep
//

//TODO: Implement ALL In The Chamber
//		Hold to load in several bullets, basic attack fires all
{
	
//Declare Verb
	var verb;
	
//Initialize to constrain
	verb = noone;
	
	fireCD = max(0, fireCD-1);
	if (fireCD == 0)
	{
		obj_GUIController.abil1CD = false;
	}

	dodgeCD = max(0, dodgeCD-1);
	if (dodgeCD == 0)
	{
		obj_GUIController.abil3CD = false;
	}

//Shoot One
	if (key_abilityOne && fireCD <= 0 && inChamber < 1)
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
				scr_Enemy_TakeDamage(5,2,60,true);
						
			}
		}
	}
		else show_debug_message("NOT FOUND ENEMY!");	
		fireCD = 40;				
	}
	
//Loaded Chamber
if (key_abilityOne && fireCD <= 0 && inChamber > 0)
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

				scr_Enemy_TakeDamage((5*other.inChamber),2,60,true);		
			}
		}
	}
		else show_debug_message("NOT FOUND ENEMY!");	
		fireCD = 40;
		inChamber = 0;
	}

	if (key_abilityTwo) && (fireCD <= 0)
	{
		obj_GUIController.abil2CD = true;
		var targets;
		targets = scr_CollisionCircleList(x,y,300,all,false,true);
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
	fireCD=20;
	
	}
	if (key_abilityThree && dodgeCD <= 0)
	{
		obj_GUIController.abil3CD = true;
		dodgeCD = 60;
		characterState = marksmanStates.backflip;	
	}
//All In The Chamber
	if (key_abilityFour && inChamber < 1)
	{
	control = controlState.inAbility;
	chamberTime++;
	if (chamberTime >= 30)
		{
		preppingToChamber++;
		chamberTime = 0;
		}
	}
	else if (!key_abilityFour && preppingToChamber > 0)
	{
	inChamber = preppingToChamber;
	preppingToChamber = 0;
	chamberTime = 0;
	}
	
//Pass back verb
	return verb;

}