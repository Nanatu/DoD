/// scr_AnimationController()
//	
//	General script for character animations and facing switching
//
{
	
	if (!place_meeting(x,y+1,obj_Wall))
	{
		//sprite_index = spr_PlayerA;
		image_speed = 0;
		//if(sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = animation_List[|animationState.Idle];
		}
		else
		{
			sprite_index = animation_List[|animationState.Running];
		}
	
	}
	
	if (rising)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Jumping];
	}
	
	if (falling)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Falling];
	}
	
	if (crouch)
	{
		image_speed = 1;
		sprite_index = 	animation_List[|animationState.Crouching];
	}
	
	if (key_abilityOne)
	{
	}
	
	if (key_abilityTwo)
	{
	}
	
	if (key_abilityThree)
	{
		image_speed = 1;
		sprite_index = animation_List[|animationState.Ability3];
	}
	
	if (key_abilityFour)
	{
	}

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);

}