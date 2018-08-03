/// scr_PlayerState_MechanicRivet()
//	
//	Script describing when the Mechanic character is using the Rivet ability
//

{
	
		vsp = 0;
		hsp = 0;
	rivetTime = max(0, rivetTime-1);
if ((rivetTime mod rivetInterval) == 0)	
{
	hsp = -facing * 5
	with (instance_create_layer(x,y,"Player",obj_Mechanic_Rivet))
	{
	
		image_angle = point_direction(x,y,x+other.facing*40,y);
		speed = 20;
		direction = point_direction(x,y,x+other.facing*40,y);
		image_angle = point_direction(x,y,x+other.facing*40,y);
	}
	
}
if (rivetTime == 0)
{
	rivetCD=20;
	rivetTime=15;
	characterState = mechanicStates.normal	
}	
	scr_CollisionAndMovement();
}