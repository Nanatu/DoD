if instance_place(x,y,obj_Enemy)
	{
		with instance_place(x,y,obj_Enemy)
		{
			scr_Enemy_TakeDamage(5,2,60,true);
		}
		instance_destroy();
	}

//Destroy against Wall
if place_meeting(x,y,obj_Wall)
{
	instance_destroy();	
}
