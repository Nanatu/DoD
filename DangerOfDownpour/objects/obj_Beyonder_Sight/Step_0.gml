//if (follow != noone)
//{
//x = follow.x + offsetX;
//y = follow.y + offsetY;
//}

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