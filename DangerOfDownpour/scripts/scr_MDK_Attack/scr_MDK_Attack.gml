///scr_MDK_Attack
//
{
	
	if(attackTimer == 0)
	{
		attackTimer++;
		hit = instance_create_layer(x + 24, y, layerName, obj_MDK_hit);
	}
	if(attackTimer <= .1*room_speed)
	{
		attackTimer++;
	}
	else
	{
		instance_destroy(hit);
		state = MDK_States.chase;
		attackTimer = 0;
		attackCD = 60;
	}
	
	scr_Enemy_CollisionAndMovement();
	
}