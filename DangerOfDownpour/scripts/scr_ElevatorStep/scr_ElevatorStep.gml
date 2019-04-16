/// scr_ElevatorStep()
//	
//	Script for the Elevator step event
//
{
//	Select key check
	key_select = keyboard_check(ord("T"));
//	Check if Player has stepped off
	if(!hasPlayerOn)
	{
//		Gravity with constraint
		if (vsp < 4)
		{
			vsp = vsp + grv;
		}
//		Collision for Elevator in vertical
		if (place_meeting(x,y+vsp,obj_Wall))
		{
//			Get as close to wall as possible vertically
			while (!place_meeting(x,y+sign(vsp),obj_Wall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}
	}
//	Check one pixel above Elevator for Player
	if place_meeting(x,y-1, obj_Player)
	{
		if (prompt == noone && activated == false)
			{
				prompt = instance_create_layer(x+32,y-64,"GUI", obj_interactPrompt);
			}	
		hasPlayerOn = true;
		selected = true;
	}
	else
	{
		if (prompt != noone)
		{
			instance_destroy(prompt.id);
			prompt = noone;
		}
		hasPlayerOn = false;
		selected = false;
	}
//	Destroy prompt when not needed
	if (key_select && selected && !used)
	{
		if (prompt != noone)
		{
			instance_destroy(prompt.id);
			prompt = noone;
		}
		activated = true;	
	}
//	Lift if activated
	if (activated)
	{
		vsp = -3;	
	}
//	Stop when touching a one way Platform
	if (y == place_meeting(x,y,obj_Platform) || y > place_meeting(x,y,obj_Platform))
	{
		platform = instance_place(x,y,obj_Platform);
		if (platform != noone)
		{
			y = platform.y;
			vsp = 0;
			activated = false;
			if (prompt != noone)
			{
				instance_destroy(prompt.id);
				prompt = noone;
			}
		}
	}
//	Check if player is below elevator and stop upward momentum.
	if (obj_Player.y > y)
	{
		activated = false;
		if (vsp < 0)
		{
			vsp = 0;	
		}
	}
	
//	Vertical actual
	y = y + vsp;
//	Keep player above Elevator
	with instance_place(x,y,obj_Player)
	{
		y = other.y-32;
	}
}