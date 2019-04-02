if(!hasPlayerOn)
{
//Gravity
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}

if (place_meeting(x,y+vsp,obj_Wall))
	{
//Get as close to wall as possible vertically
		while (!place_meeting(x,y+sign(vsp),obj_Wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	
}

if place_meeting(x,y-1, obj_Player)
{
	hasPlayerOn = true;
}
else
{
	hasPlayerOn = false;	
}

if (hasPlayerOn)
{
	vsp = -3;
}

with instance_place(x,y,obj_Player)
{
	canJump = true;
	y = other.y-32;
}

//Vertical actual
	y = y + vsp;