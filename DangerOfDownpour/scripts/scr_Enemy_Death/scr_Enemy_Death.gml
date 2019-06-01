/// @function scr_Enemy_Death()
//	
/// @description Events for an enemy death
//
var deathSprite = argument0;
{
	
	with instance_create_layer(x,y,"Enemy",obj_Enemy_Death)
	{
		image_xscale = other.image_xscale;
		sprite_index = deathSprite;
		instance_create_layer(x,y,"Player",obj_ShinePickup)
	}
	instance_destroy();

}