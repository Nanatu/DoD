//Timer for explosion
timer -= 1;

//Speed to a certain velocity
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}

//Drag in air else on ground
	if ((hsp != 0) && (grounded = false))
	{
		hsp = hsp - (facing*.05);
	}
	else
	{
		hsp = hsp - (facing*.15);
	}

//Clamp speed
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
		grounded = true;
	}

//Vertical actual
	y = y + vsp;
	
	if ((timer <= 0) || 
	(place_meeting(x,y,obj_Mechanic_Fletchette)) ||
	(place_meeting(x,y,obj_Mechanic_Rivet)) ||
	(place_meeting(x,y,obj_Enemy))) 
	{
		//todo: Create different explosion effect 
		instance_create_layer(x,y,"Player",obj_Marksman_BackflipExplosion)			
		instance_destroy();	
	}
	