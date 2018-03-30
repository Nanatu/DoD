//Destroy against Wall
if place_meeting(x,y,obj_Wall)
{
	
	instance_create_layer(x,y,"Player",obj_Marksman_BackflipExplosion)
							
	instance_destroy();	
}

//Destroy against Enemy
if place_meeting(x,y,obj_Enemy)
{
	instance_create_layer(x,y,"Player",obj_Marksman_BackflipExplosion)
						
	instance_destroy();	
}