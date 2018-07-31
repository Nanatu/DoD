/// scr_PlayerState_MarksmanBackflip()
//	
//	Script describing the Marksman Backflip ability
//

{
	
	vsp = -jump_power-2;
	
	hsp = -facing * 12;
	
	vsp = vsp + grv + 6;
	
	scr_CollisionAndMovement();
	
	if (backflipTime <= 0)
	{
		
		with (instance_create_layer(x,y,"Player",obj_Marksman_Tracer))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y + 10);
				speed = 30;
				direction = point_direction(x,y,x+other.facing*40,y + 10);
			}
		with (instance_create_layer(x,y,"Player",obj_Marksman_Tracer))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y + 15);
				speed = 30;
				direction = point_direction(x,y,x+other.facing*40,y + 15);
			}
		with (instance_create_layer(x,y,"Player",obj_Marksman_Tracer))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y + 20);
				speed = 30;
				direction = point_direction(x,y,x+other.facing*40,y + 20);
			}
	characterState = marksmanStates.normal;
	backflipTime = 8;
	}
	
	backflipTime--;
	
}