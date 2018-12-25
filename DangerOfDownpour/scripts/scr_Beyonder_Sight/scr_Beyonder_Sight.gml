/// scr_Beyonder_Sight()
//	
//	Script describing the Beyonder's Sight ability
//	Includes upkeep

{
	
//Check if Beryonder Exists
	if (!instance_exists(obj_Player_Beyonder))
	{
		instance_destroy();	
	}
	else
	{
		
//Reduce time for Eye to remain
		timeAlive --;
		
//Get next position
		xTo = follow.x + offsetX;
		yTo = follow.y + offsetY;
		
//Move to new position
		x += (xTo-x)/5;
		y += (yTo-y)/5;

//Check for enemies and set nearest as target
		if (instance_exists(obj_Enemy))
		{
			target = instance_nearest(x,y, obj_Enemy);
		}
		else
		{
			target = noone;	
		}

//Check if target is in range
		if (distance_to_object(target) <= 100)
		{
			targetInRange = true;
		}
		else
		{
			targetInRange = false;
		}
	
//If target is in range, deal damage
		if (targetInRange && target!= noone && damageTick <= 0)
		{
			with(target)
			{
				hp = hp - 10;	
			}
		}

//Timing of each damage timeframe
		if (targetInRange)
		{
			damageTick --;	
		}

//Reset damage timer
		if (damageTick <= -1)
		{
			damageTick = 10;	
		}

//Destroy eye
		if timeAlive <= 0
		{
			instance_destroy();	
		}
		
//Randomize blink animation
		if (random(1) >= .99)
			{
			if (!(image_index > image_number - 1))
				{
					image_speed = 1;
				}
			}
		else if(image_index > image_number - 1)
			{
				image_index = 0;
				image_speed = 0;
			}
	}	
}