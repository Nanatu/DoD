/// scr_Gunslinger_Load()
//	
//	Script to have camera follow players location
//
//  Moving camera to player, Lower divison == faster camera
//
{
//	Where the camera wants to move
	x += (xTo-x)/15;
	y += (yTo-y)/15;
	
//	Check if character doesnt exists, stops camera from crashing game
	if (!instance_exists(obj_Character))
	{
		follow = noone;
	}

//	Check if Character exists
	if (instance_exists(obj_Character))
	{
		follow = instance_nearest(x,y,obj_Character);
	}

//	Check if follow target hasnt died, then get amount to move
	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;
	}

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera,vm);

}