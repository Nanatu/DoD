if place_meeting(x,y,obj_Player)
	{
		global.currentShineAmount++;
		instance_destroy();	
	}
	
	var ex, ey;
		if (instance_exists(obj_Player))
		{
			ex = instance_nearest(x, y, obj_Player).x;
			ey = instance_nearest(x, y, obj_Player).y;
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
			speed = random_range(4, 6);
			//image_angle = point_direction(x, y, ex, ey);