if (instance_exists(obj_Player))
{
	if (round(obj_Player.y + (obj_Player.sprite_height/2) > y)) mask_index = -1;
	else mask_index = spr_Platform;
}