/// scr_CollisionAndMovement()
//	
//	General script for checking collision and moving player based on inputs
//
{
	
//Jump
	if (place_meeting(x,y+1,obj_Wall)) && (key_jump)
	{
		vsp = -jump_power;
	}

//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		while (!place_meeting(x+sign(hsp),y,obj_Wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
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

//Crouched
if (key_down && !key_left && !key_right)
{
	crouch = true;
}
else
{
	crouch = false;
}

if (vsp >= 1)
{
	falling = true;	
}
else
{
	falling = false;	
}

}