/// scr_Beyonder_SightDraw()
//	
//	Script describing the Beyonder's Sight draw event

{
	
//Draw the eye, draw event needs this as specifiying draw event overrides standard draw
	draw_self();

//Check if target exists and is in range
	if (target != noone && targetInRange == true)
	{
		draw_line_width_color(x, y, target.x, target.y, 3, c_purple, c_purple);
	}

//Used to cancel drawn line
	if (target != noone && targetInRange != true)
	{
		draw_line_width_color(x, y, x, y, 0, c_purple, c_purple);
	}
	
}