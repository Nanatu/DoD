/// @function scr_StoolToad_Wander()
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;

	
//Check if target is in range and in sight
	if(scr_Enemy_PlayerWithinRange(500))
	{
		state = enemyStates.chase;
		return;
	}

//Randomize walking
	if(time_in_state >= 2* room_speed)
	{
	
		hsp =  irandom_range(-1,1)*walksp; 
		time_in_state = 0;
	}

//State upkeep
	time_in_state++;

//Return verb
	return actionVerb;
