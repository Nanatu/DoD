/// scr_AnimationController()
//	
//	General script for character animations and facing switching
//
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
		//sprite_index = spr_Player;
	}
	else
	{
		//sprite_index = spr_PlayerR;
	}
	
}

//Sprite Facing
if (hsp != 0) image_xscale = sign(hsp);