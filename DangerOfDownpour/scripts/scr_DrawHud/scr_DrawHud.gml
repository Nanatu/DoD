/// scr_DrawHud()
//	
//	Script to draw the players HUD
//
{

//Draw the overall GUI sprite
	draw_sprite(spr_GUI,0,0,0);

//Test Health border, area within is health amount
	draw_sprite(spr_healthBorder,1,display_get_gui_width()/2,display_get_gui_height()-100);

//Area inside health bar
	draw_sprite_ext(spr_healthFiller,1,display_get_gui_width()/2,display_get_gui_height()-100,
	max(0,playerHealth/playerMaxHealth),1,0,c_white,1);

//Ability 1 icon
	draw_sprite_ext(spr_testAbil1,1,display_get_gui_width()/2 - 96,display_get_gui_height()-40,
	1,1,1,c_white,1);

//Ability 2 Icon
	draw_sprite_ext(spr_testAbil2,1,display_get_gui_width()/2 - 32,display_get_gui_height()-40,
	1,1,1,c_white,1);
	
//Ability 3 Icon
	draw_sprite_ext(spr_testAbil3,1,display_get_gui_width()/2 + 32,display_get_gui_height()-40,
	1,1,1,c_white,1);
	
//Ability 4 Icon
	draw_sprite_ext(spr_testAbil4,1,display_get_gui_width()/2 + 96,display_get_gui_height()-40,
	1,1,1,c_white,1);

//Check for ability 1 being on CD, grey out if it is
	if (abil1CD)
	{
		draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 - 96,display_get_gui_height()-40,
		1,1,1,c_white,.5);
	}
	
//Check for ability 2 being on CD, grey out if it is
	if (abil2CD)
	{
		draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 - 32,display_get_gui_height()-40,
		1,1,1,c_white,.5);
	}

//Check for ability 3 being on CD, grey out if it is
	if (abil3CD)
	{
		draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 + 32,display_get_gui_height()-40,
		1,1,1,c_white,.5);
	}

//Check for ability 4 being on CD, grey out if it is
	if (abil4CD)
	{
		draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 + 96,display_get_gui_height()-40,
		1,1,1,c_white,.5);
	}
	
//TEMP: Draw shine amount
	draw_text(30,30, "Shine " + string(global.currentShineAmount));
}