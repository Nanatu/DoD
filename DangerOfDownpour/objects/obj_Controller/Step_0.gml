if (room != rm_MainMenu) && keyboard_check_released(ord("P"))
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
    instance_deactivate_all(true);
	
//Menu Logic
	menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

select = keyboard_check_pressed(vk_enter);

menuIndex += menuMove;

if (menuIndex < 0) menuIndex = buttons - 1;

if (menuIndex > buttons - 1) menuIndex = 0;

lastSelected = menuIndex;


if (select)
{
	switch (menuIndex)
	{
		case 0:
			paused = false;
			if(sprite_exists(screenShot))
			{
			  sprite_delete(screenShot);
			}
			  instance_activate_all();
			break;
		case 1:
			//Options
			break;
		case 2:
			paused = false;
			room_goto(rm_MainMenu);
			break;	
		
	}
}
}
else
{
	if(sprite_exists(screenShot))
	{
        sprite_delete(screenShot);
    }
    instance_activate_all();
}