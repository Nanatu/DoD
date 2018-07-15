/// scr_Player_Death()
//	
//	General script describing events for a player characters death
//

{
//Death
	if (hp <= 0)
	{
		instance_destroy();
	}

}