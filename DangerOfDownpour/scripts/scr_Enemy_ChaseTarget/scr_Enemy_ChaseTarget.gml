//
{
	
	if instance_exists(obj_Player)
	{
		target = instance_nearest(x,y,obj_Player);
	}
		else
	{
		target = noone;	
	}

	targetVisible = scr_LineOfSight(target);

	if (targetVisible && (target.x > x) && (point_distance(x,y,target.x,target.y)) < 500)
	{
		var move = 1;
	}
		else if ((targetVisible && (target.x < x)) && (point_distance(x,y,target.x,target.y)) < 500)
	{
		var move = -1;
	}
		else
	{
		move = 0;	
	}
	hsp = move * walksp;

}