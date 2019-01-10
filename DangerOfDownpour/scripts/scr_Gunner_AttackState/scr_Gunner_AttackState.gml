///scr_Gunner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	//attack = true;
	if (target != noone)
	{
		if ((point_distance(x,y,target.x,target.y) < 300) && (fireCD < 1) && targetVisible)
		{
			scr_ShootAtPlayer(target.x,y,x,y,obj_Bullet);
			fireCD = 30;
	
		}
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