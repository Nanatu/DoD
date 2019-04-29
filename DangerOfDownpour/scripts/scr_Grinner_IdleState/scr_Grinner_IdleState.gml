///scr_Grinner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	hsp = 0;
	
	if (control == controlState.outAbility && random(1) >= .99)
	{
	image_index = 0;
	actionVerb = "Idling";
	control = controlState.inAbility
	}
	
//Check if target is in range and in sight
	if(scr_Enemy_PlayerWithinRange(500))
	{
		control = controlState.outAbility
		state = enemyStates.chase;
		//control = controlState.outAbility
		return actionVerb = noone;
	}

//Go to wander state
	if(time_in_state >= 2*room_speed)
	{
		state = enemyStates.wander;
		time_in_state = 0;
	}

//State Upkeep
	time_in_state++;

//Return verb
	return actionVerb;