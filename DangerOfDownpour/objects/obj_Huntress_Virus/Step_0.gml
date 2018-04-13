timeToDie--;

if (timeToDie <= 0)
{
	instance_destroy();
}

if (target != noone)
{
	x=target.x;
	y=target.y;
}