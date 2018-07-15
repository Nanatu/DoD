//Moving camera to player, Lower divison == faster camera
//
{
	
	x += (xTo-x)/15;
	y += (yTo-y)/15;

	if (!instance_exists(obj_Character))
	{
		follow = noone;
	}
	if (instance_exists(obj_Character))
	{
		follow = instance_nearest(x,y,obj_Character);
	}
	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;
	}

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera,vm);

}