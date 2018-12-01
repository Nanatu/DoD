//if (follow != noone)
//{
//x = follow.x + offsetX;
//y = follow.y + offsetY;
//}

timeAlive --;

xTo = follow.x + offsetX;
yTo = follow.y + offsetY;
	
x += (xTo-x)/5;
y += (yTo-y)/5;

if (instance_exists(obj_Enemy))
{
	target = instance_nearest(x,y, obj_Enemy);
}
else
{
target = noone;	
}

if (distance_to_object(target) <= 100)
{
	targetInRange = true;
}
else
{
	targetInRange = false;
}

if (targetInRange && target!= noone && damageTick <= 0)
{
with(target)
{
hp = hp - 10;	
}
}

if (targetInRange)
{
damageTick --;	
}

if (damageTick <= -1)
{
damageTick = 10;	
}

if timeAlive <= 0
{
	instance_destroy();	
}

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