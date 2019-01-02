/// scr_Enemy_AnimationController()
//	
//	General script for Enemy animations and facing switching
//
{
	
	//Verbs declaration
	var moveVerb,actionVerb;

///Grab Arguments
	moveVerb = argument0;
	actionVerb = argument1;
	
//Check control state
	if(control == controlState.outAbility)
	{
		
//Standing animation
		if (moveVerb = "Standing")
		{
			image_speed = 1;
			sprite_index = animation_List[|enemyAnimationState.Standing];
		}

//Running animation
		if (moveVerb = "Running")
		{
			image_speed = 1;
			sprite_index = animation_List[|enemyAnimationState.Running];
		}
	}

//Abilities and Flinch
	{
//Ability 1 animation
		if (actionVerb = "Attacking")
		{
			image_speed = 1;
			sprite_index = animation_List[|enemyAnimationState.Attacking];
		}
	
//Ability 4 animation	
		if (actionVerb = "Flinching")
		{
			image_speed = 1;
			sprite_index = animation_List[|enemyAnimationState.Flinching];
		}
	}

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);
	
//Check Control state
	if(control == controlState.inAbility)
	{
		if(image_index > image_number - 1)
		{
			control = controlState.outAbility;
		}
	}

}