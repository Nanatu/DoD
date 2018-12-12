/// scr_AnimationController()
//	
//	General script for character animations and facing switching
//
{
	
if(control == controlState.inAbility)
{
		if(image_index > image_number - 1)
		{
		control = controlState.outAbility;	
		}
}
	
	
if(control == controlState.outAbility)
{
	if (!place_meeting(x,y+1,obj_Wall))
	{
		//sprite_index = spr_PlayerA;
		//image_speed = 0;
		//if(sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = animation_List[|animationState.Standing];
		}
		else
		{
			sprite_index = animation_List[|animationState.Running];
		}
	
	}
	
	if (jumping)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Jumping];
		
	}
	if (rising)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Rising];
	}
	
	if (falling)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Falling];
	}
	
	if (crouching)
	{
		image_speed = 1;
		sprite_index = 	animation_List[|animationState.Crouching];
	}
}
	
//Abilities
	
	if (key_abilityOne && control == controlState.inAbility)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability1];
	}
	
	if (key_abilityTwo)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability2];
	}
	
	if (key_abilityThree)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability3];
	}
	
	if (key_abilityFour)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability4];
	}

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);

}