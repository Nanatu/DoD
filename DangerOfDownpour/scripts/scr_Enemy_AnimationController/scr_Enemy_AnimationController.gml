/// scr_Enemy_AnimationController()
//	
//	General script for Enemy animations and facing switching
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
			sprite_index = animation_List[|enemyAnimationState.Idle];
		}
		else
		{
			sprite_index = animation_List[|enemyAnimationState.Run];
		}
	
	}
	if (attack)
	{
		sprite_index = animation_List[|enemyAnimationState.Attack];	
	}
	

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);

}