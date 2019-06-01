/// @function scr_StoolToad_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = "Running";
//Damage list upkeep
	ds_list_destroy(damageList);
	damageList = ds_list_create();
	
	if(scr_Enemy_PlayerWithinRange(400))
	{
		
//Check if close enough to attack
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