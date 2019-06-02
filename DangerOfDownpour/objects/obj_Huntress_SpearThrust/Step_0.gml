if instance_place(x,y,obj_Enemy)
	{
		with instance_place(x,y,obj_Enemy)
		{
			scr_Enemy_TakeDamage(1,2,60,true);
		}
		instance_destroy();
	}
	
timeToDie--;
if (timeToDie <= 0)
{
instance_destroy();	
}