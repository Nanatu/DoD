/// @function scr_CollisionAndMovement()
//	
/// @description General script for checking collision and moving player based on inputs
//
{
	var verb = noone;
	
//Check for standing	
	if (grounded)
	{
		verb = "Standing";
	}
	
//Jump
	if (grounded)
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
		part_particles_create(smoke, x, y+sprite_height/2, smoketrail, 3);
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
			if (sign(vsp) == 1)
			{
			part_particles_create(smoke, x, y+sprite_height/2, smoketrail, 3);
			}
		}
		vsp = 0;
		
	}

//Vertical actual
	y = y + vsp;

//Crouching check
	if (key_down && !key_left && !key_right && grounded)
	{
		verb = "Crouching";
	}
	
//Rising check
	if (vsp <= -1 && jumping)
	{
		verb = "Rising";
	}
	
//Falling check
	if (vsp >= 1)
	{
		verb = "Falling";	
	}

//Pass back verb
	return verb;
}