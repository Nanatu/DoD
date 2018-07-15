//
{
	
//Upkeep
	timer = max(0, timer-1);
	//timer --;

//Check for existing Enemy
	if (!instance_exists(obj_Enemy) && timer <= 0)
	{
		instance_destroy(id);
	}

//Destroy on contact with Enemy
	if place_meeting(x,y,obj_Enemy)
	{
		instance_destroy();	
	}

//Target and chase nearest Enemy
	if(timer <= 0)
	{
		var ex, ey;
		if (instance_exists(obj_Enemy))
		{
			ex = instance_nearest(x, y, obj_Enemy).x;
			ey = instance_nearest(x, y, obj_Enemy).y;
		}
		else
		{
			ex = 0;
			ey = 0;
			direction = point_direction(x, y, x, 0);
			speed = 7;
			image_angle = point_direction(x, y, x, 0);
		}
			if (direction != point_direction(x, y, ex, ey))
			{
				var newDir = point_direction(x, y, ex, ey);
				var diff = angle_difference(direction, newDir);
				direction -= min(6*sign(diff), abs(diff));
				image_angle -= min(6*sign(diff), abs(diff));
			}
			//direction = point_direction(x, y, ex, ey);
			speed = random_range(8, 10);
			//image_angle = point_direction(x, y, ex, ey);
	}

//Move straight up
	if(timer > 17)
	{
		direction = point_direction(x, y, x, 0) + randomDirection;
		speed = random_range(6, 8);
		image_angle = point_direction(x, y, x, 0) + randomDirection;
	}

//Drop a bit
//if(timer > 0 && timer <= 15)
//{
//		direction = point_direction(x, y, x, 0) + random_range(-5, 5);
//		speed = -2;
//		image_angle = point_direction(x, y, x, 0);
//}

}