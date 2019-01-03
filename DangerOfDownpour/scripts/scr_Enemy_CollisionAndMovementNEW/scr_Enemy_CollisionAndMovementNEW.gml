/// scr_Enemy_CollisionAndMovement
//
{
	
	var verb;
	verb = "Standing";	
 
//Gravity
	vsp = vsp + grv;

//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		while (!place_meeting(x+sign(hsp),y,obj_Wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	
//Check if moving horizontally, Running	
	if (hsp != 0)
	{
	verb = "Running";	
	}
	
	x = x + hsp;

//Vertical Collision
	if (place_meeting(x,y+vsp,obj_Wall))
	{
		while (!place_meeting(x,y+sign(vsp),obj_Wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;

return verb;
}