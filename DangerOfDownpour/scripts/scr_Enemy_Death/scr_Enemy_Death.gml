/// scr_Enemy_Death()
//	
//	General script describing events for a player characters death
//
var deathSprite = argument0;
{
	
	with instance_create_layer(x,y,"Enemy",obj_Enemy_Death)
	{
		image_xscale = other.image_xscale;
		sprite_index = deathSprite;
	}
	instance_destroy();

}