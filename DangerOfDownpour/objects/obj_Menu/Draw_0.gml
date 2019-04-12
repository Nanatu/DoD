var i = 0;
repeat(buttons)
{
	
	draw_set_color(c_ltgray);
	//draw_set_font()
	if (menuIndex == i)
	{
		draw_set_color(c_red);
	}
	
	draw_text(menuX, menuY + buttonHeight * i  , button[i]);
	i++;
}