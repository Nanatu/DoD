///scr_MDK_Attack
//

{
	
	if(scr_Player_EnemyWithinRange(180))
	{
		if(scr_Player_EnemyWithinRange(32) && attackCD <= 0)
		{
			state = MDK_States.attack;
			return;
		}
	
//Chase
	if(target.x < x)
		{
			image_xscale = -1;
		}
		else
		{
			image_xscale = 1;
		}
		hsp = sign(image_xscale) * (walksp + 1);
	
	}
	else
	{
		state = MDK_States.idle;
	}
	scr_Enemy_CollisionAndMovement();

}