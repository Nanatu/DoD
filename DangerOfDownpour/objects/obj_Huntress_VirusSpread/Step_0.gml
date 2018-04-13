timeToDie--;

if (timeToDie <= 0)
{
	instance_destroy();
}
var ex, ey;
if (target != noone)
{
		ex = target.x;
		ey = target.y;
}
	else
	{
		ex = 0;
		ey = 0;
		direction = point_direction(x, y, x, 0);
		speed = 6;
		image_angle = point_direction(x, y, x, 0);
	}
		if (direction != point_direction(x, y, ex, ey))
		{
			
			direction = point_direction(x,y,ex,ey);
			//var newDir = point_direction(x, y, ex, ey);
			//var diff = angle_difference(direction, newDir);
			//direction -= min(6*sign(diff), abs(diff));
			//image_angle -= min(6*sign(diff), abs(diff));
		}
		//direction = point_direction(x, y, ex, ey);
		speed = 9;
		//image_angle = point_direction(x, y, ex, ey);