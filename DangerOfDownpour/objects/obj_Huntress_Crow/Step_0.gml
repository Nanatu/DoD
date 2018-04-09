timer--;

if (timer <= 3 && timer > 0)
{
	direction = point_direction(x, y, x, y-1);
}

//Home back in to Huntress
if(timer <= 0)
{
returning = true;
var ex, ey;
	if (instance_exists(obj_Player_Huntress))
	{
		ex = instance_nearest(x, y, obj_Player_Huntress).x;
		ey = instance_nearest(x, y, obj_Player_Huntress).y;
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
		speed = 8;
		//image_angle = point_direction(x, y, ex, ey);
		if place_meeting(x,y,obj_Player_Huntress)
		{
		instance_destroy();	
		}
		
}