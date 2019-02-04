///scr_Grinner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
	//attack = true;
	hsp = facing * (walksp * 2.5);
	attackCD = 60;

		
		collideInst = instance_place(x, y, obj_Player);
		{
			if collideInst != noone
			{
		if(ds_list_find_index(damageList, collideInst.id) == -1)
		{
		 collideInst.hp = collideInst.hp - 1;
		 collideInst.takenDamage = true;
		 ds_list_add(damageList, collideInst.id);
		}
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