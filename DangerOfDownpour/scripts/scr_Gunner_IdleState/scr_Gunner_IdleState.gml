///scr_Gunner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	hsp = 0;

//Check if target is in range and in sight
	if(scr_Enemy_PlayerWithinRange(500))
	{
		state = enemyStates.chase;
		return;
	}

//Go to wander state
	if(time_in_state = 2*room_speed)
	{
		state = enemyStates.wander;
		time_in_state = 0;
	}

//State Upkeep
	time_in_state++;

//Return verb
	return actionVerb;