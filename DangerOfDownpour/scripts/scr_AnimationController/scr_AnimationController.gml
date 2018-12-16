/// scr_AnimationController()
//	
//	General script for character animations and facing switching
//
{


var verb1,verb2;

verb1 = argument0;
verb2 = argument1;
	
	
	
if(control == controlState.outAbility)
{
	
		if (verb1 = "Standing")
		{
				image_speed = 1;
			sprite_index = animation_List[|animationState.Standing];
		}
		if (verb1 = "Running")
		{
				image_speed = 1;
			sprite_index = animation_List[|animationState.Running];
		}
	
	
	
	if (verb1 == "Jumping")
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Jumping];
		
	}
	if (verb1 == "Rising")
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Rising];
	}
	
	if (verb1 == "Falling")
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Falling];
	}
	
	if (verb1 == "Crouching")
	{
		image_speed = 1;
		sprite_index = 	animation_List[|animationState.Crouching];
	}
}
	

//Abilities
{
	if (verb2 = "Ability1")
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability1];
	}
	
	if (key_abilityTwo)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability2];
	}
	
	if (verb2 = "Ability3")
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability3];
	}
	
	if (key_abilityFour)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability4];
	}
}

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);

	
if(control == controlState.inAbility)
{
		if(image_index > image_number - 1)
		{
		control = controlState.outAbility;
		}
}

}