///scr_Gunner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;

	if(scr_Enemy_PlayerWithinRange(400))
	{
		
//Check if close enough to attack
		if(fireCD <= 0 && scr_Enemy_PlayerWithinRange(random_range(140,200)))
		{
			state = enemyStates.attack;
			return;
		}
		//chase to within range
		if (x < (target.x - 32) || x > (target.x + 32))
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