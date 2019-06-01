/// @function scr_Grinner_Chasestate()
//
/// @description Grinner Enemy chase state

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = "Running";
//Damage list upkeep
	ds_list_destroy(damageList);
	damageList = ds_list_create();
	
	if(scr_Enemy_PlayerWithinRange(500) || (aggressionTimer > 0))
	{
		
//Check if close enough to attack
		if(attackCD <= 0 && scr_Enemy_PlayerWithinRange(random_range(140,200)))
		{
			state = enemyStates.attack;
			return;
		}
		//chase to within range
		if (x < (target.x - 16) || x > (target.x + 16))
		{
		if(target.x < x)
		{
			facing = -1;
		}
		else
		{
			facing = 1;
		}
		}
		hsp = facing * (walksp + 1);
	}
	else
	{
		state = enemyStates.idle;
	
	}

//Return verb
	return actionVerb;