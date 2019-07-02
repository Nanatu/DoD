if (vsp < 10)
	{
		vsp = vsp + grv;
	}
	
if hsp != 0
{
	hsp = hsp - (facing*.15);
}

if (hsp <= .5) && (hsp >= -.5)
{
hsp = 0;	
}

//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		
//Get as close to wall as possible horizonatally
		while (!place_meeting(x+sign(hsp),y,obj_Wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	
//Move actual
	x = x + hsp;

//Vertical Collision
	if (place_meeting(x,y+vsp,obj_Wall))
	{
		
//Get as close to wall as possible vertically
		while ((!place_meeting(x,y+sign(vsp),obj_Wall)))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
		//hsp = 0;
	}

//Vertical actual
	y = y + vsp;