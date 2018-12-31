if place_meeting(x,y,obj_Wall)
{
	instance_destroy();	
}

if place_meeting(x,y,obj_Player)
{
	with(obj_Player)
	{
	takenDamage = true;	
	}
	instance_destroy();	
}