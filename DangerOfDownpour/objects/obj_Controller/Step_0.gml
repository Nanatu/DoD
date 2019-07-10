if keyboard_check_released(ord("P"))
{
    paused = !paused;
	if(!sprite_exists(screenShot))
	{
        screenShot = sprite_create_from_surface(application_surface,
		0,0,display_get_gui_width(),
		display_get_gui_height(),0,0,0,0);    
    }

}

if(paused)
{
    instance_deactivate_all(1);
}
else
{
	if(sprite_exists(screenShot))
	{
        sprite_delete(screenShot);
    }
    instance_activate_all();
}