if (instance_exists(obj_Player))
{
	if ((round(obj_Player.y + (obj_Player.sprite_height/2 -1) > y))
	|| (obj_Player.key_down && place_meeting(x,y-1,obj_Player))) 
	{
		mask_index = -1;
	}
	else 
	{
		mask_index = spr_Platform;
	}
}