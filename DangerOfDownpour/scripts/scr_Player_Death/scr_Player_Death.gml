/// @function scr_Player_Death()
//	
/// @description Events for a player characters death
//

{
//Death
	if (hp <= 0)
	{
		instance_destroy();
	}

}