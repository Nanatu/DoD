///scr_Grinner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	attack = true;
	hsp = facing * (walksp * 2.5);

//Check if grinner should leave state
	if (image_index > image_number - 1)
	{
		attack = false;
		state = enemyStates.chase;
	}
	else
	{
		actionVerb = "Attacking";	
	}

//Return verb
	return actionVerb;