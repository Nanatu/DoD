/// @function scr_CameraSetup()
//	
/// @description Set up the camera frame.
//
{
	
	camera = camera_create();

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	var pm = matrix_build_projection_ortho(1280,760,1,100000);

	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);

	view_camera[0] = camera;

	follow = noone;
	xTo = x;
	yTo = y;

}