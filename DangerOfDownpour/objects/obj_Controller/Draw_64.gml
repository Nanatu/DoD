draw_set_halign(fa_center);

if(paused)
{
	draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_text(display_get_gui_width() * 0.5,display_get_gui_height() * 0.25, "Paused");
	
	var i = 0;
	
repeat(buttons)
{
	
	draw_set_color(c_ltgray);
	//draw_set_font()
	if (menuIndex == i)
	{
		draw_set_color(c_red);
	}
	
	draw_text(display_get_gui_width() * 0.5, display_get_gui_height() * 0.5 + buttonHeight * i  , button[i]);
	i++;
}
}