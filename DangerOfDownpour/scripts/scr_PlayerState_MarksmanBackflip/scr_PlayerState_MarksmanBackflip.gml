/// @function scr_PlayerState_MarksmanBackflip()
//	
/// @description Marksman Backflip ability state
//

{

//Jump Component
	vsp = -jump_power-2;

//Move Component
	hsp = -facing * 12;

	vsp = vsp + grv + 6;
	
	scr_CollisionAndMovement();

//Fire three explosive bullets
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