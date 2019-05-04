/// scr_CollisionAndMovement()
//	
//	General script for checking collision and moving player based on inputs
//
{
	var verb;
	verb = "Standing";
	
//Jump
	if(place_meeting(x,y+1,obj_Wall))
	{
		canJump = true;	
	}
	else
	{
		canJump = false
	}

	if ((canJump) && (key_jump))
	{
		jumping = true;
		verb = "Jumping";
		vsp = -jump_power;
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
	
//Check if moving horizontally, running	
	if (hsp != 0)
	{
	verb = "Running";	
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
	}

//Vertical actual
	y = y + vsp;

//Crouching check
	if (key_down && !key_left && !key_right)
	{
		verb = "Crouching";
	}
	
//Rising check
	if (vsp <= -1.5 && jumping)
	{
		verb = "Rising";
	}
	
//Falling check
	if (vsp >= 1.5)
	{
		verb = "Falling";	
	}

//Pass back verb
	return verb;
}