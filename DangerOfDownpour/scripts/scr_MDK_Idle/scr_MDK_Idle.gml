/// @function scr_MDK_Idle
//
/// @description Huntress dog general idle state

{
// stays idle till enemy is seen within range
	if(scr_MDK_WithinRangeOfPlayer() && scr_Player_EnemyWithinRange(180))
	{
		show_debug_message("found enemy");
		state = MDK_States.chase;
	}
	else
	{
		
//If no enemy or out of range, walk to huntress
		if(instance_exists(obj_Player_Huntress))
		{
			huntress = instance_nearest(x,y,obj_Player_Huntress);
		}
		else
		{
			huntress = noone;
		}
	
		if(huntress != noone && 
		(x < (huntress.x + off_from_player - 16) || x > (huntress.x +off_from_player + 16)))
		{
		
//Walk to huntress
			hsp = sign(huntress.x - x) * walksp;
			image_xscale = sign(huntress.x - x);
		}
	}

	scr_Enemy_CollisionAndMovement();
}