key_select = keyboard_check(ord("T"));

if (key_select && selected && !used)
{
	if (prompt != noone)
	{
		instance_destroy(prompt.id);
		prompt = noone;
	}
	activated = true;	
}

if(!hasPlayerOn)
{
//Gravity
	if (vsp < 4)
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

if (activated)
{
	vsp = -3;	
}

if (y == place_meeting(x,y,obj_Platform) || y > place_meeting(x,y,obj_Platform))
	{
		platform = instance_place(x,y,obj_Platform);
		if (platform != noone)
		{
		y = platform.y;
		vsp = 0;
		activated = false;
		}
	}

	
	//Vertical actual
	y = y + vsp;
	
	with instance_place(x,y,obj_Player)
	{
	canJump = true;
	y = other.y-32;
	}