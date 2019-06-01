/// @function scr_Gunner_Attackstate()
//
/// @description Gunner enemy attack state.

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	hsp = 0;
	//attack = true;
	if (target != noone && fireCD <= 0)
	{
		if (targetVisible && (point_distance(x,y,target.x,target.y) < 300))
		{
			scr_ShootAtPlayer(target.x,y,x,y,obj_Bullet);
			fireCD = 60;
		}
	}
	else
	{
	state = enemyStates.chase;
	}
//Check if grinner should leave state
	if (image_index > image_number - 1)
	{
		//attack = false;
		state = enemyStates.chase;
	}
	else
	{
		actionVerb = "Attacking";	
	}

//Return verb
	return actionVerb;