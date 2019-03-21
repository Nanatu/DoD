//Death check
	if (hp <= 0)
	{
		scr_Enemy_Death(deathSprite);
		
		if(object_exists(obj_BossWall))
		{
			instance_destroy(obj_BossWall);	
		}
	}