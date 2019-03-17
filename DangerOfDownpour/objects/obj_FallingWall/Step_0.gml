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

//Vertical actual
	y = y + vsp;