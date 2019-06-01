/// @function scr_PlayerState_MechanicRivet()
//	
/// @description Mechanic's Rivet ability state
//

{
	
//Stop movement in State
	vsp = 0;
	hsp = 0;
	
//Timer check
	rivetTime = max(0, rivetTime-1);
	
//Fire at Interval
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
	
//Switch back to normal state
	if (rivetTime == 0)
	{
		rivetCD=20;
		rivetTime=15;
		characterState = mechanicStates.normal	
	}
	
//Run script for physics
	scr_CollisionAndMovement();
}