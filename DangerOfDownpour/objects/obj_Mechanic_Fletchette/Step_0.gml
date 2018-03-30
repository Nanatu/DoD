//Destroy against Wall
if place_meeting(x,y,obj_Wall)
{
	instance_destroy();	
}

//Destroy against Enemy
if place_meeting(x,y,obj_Enemy)
{
	instance_destroy();	
}