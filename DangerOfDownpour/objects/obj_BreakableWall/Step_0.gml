if (numOfBreakThroughs <= 0)
	{
		instance_destroy(other);
	}

if place_meeting(x,y-1,obj_Player)
{
	stable = false;
}

if (!stable)
{
timer = max(0, timer-1);
}

if (timer <= 0)
{
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}	
	y = y + vsp;
}

with instance_place(x,y,obj_Wall)
{
		if ((other.breaksWalls == true) && (other.numOfBreakThroughs > 0))
		{
			instance_destroy();
		}
		other.numOfBreakThroughs--;
}