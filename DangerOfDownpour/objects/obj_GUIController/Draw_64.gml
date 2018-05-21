
//draw_sprite(spr_GUI,0,0,0);

draw_sprite(spr_healthBorder,1,display_get_gui_width()/2,display_get_gui_height()-100);

draw_sprite_ext(spr_healthFiller,1,display_get_gui_width()/2,display_get_gui_height()-100,
max(0,playerHealth/playerMaxHealth),1,0,c_white,1);

draw_sprite_ext(spr_testAbil1,1,display_get_gui_width()/2 - 96,display_get_gui_height()-40,
1,1,1,c_white,1);

draw_sprite_ext(spr_testAbil2,1,display_get_gui_width()/2 - 32,display_get_gui_height()-40,
1,1,1,c_white,1);

draw_sprite_ext(spr_testAbil3,1,display_get_gui_width()/2 + 32,display_get_gui_height()-40,
1,1,1,c_white,1);

draw_sprite_ext(spr_testAbil4,1,display_get_gui_width()/2 + 96,display_get_gui_height()-40,
1,1,1,c_white,1);

if (abil1CD)
{
draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 - 96,display_get_gui_height()-40,
1,1,1,c_white,.5);
}
if (abil2CD)
{
draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 - 32,display_get_gui_height()-40,
1,1,1,c_white,.5);
}
if (abil3CD)
{
draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 + 32,display_get_gui_height()-40,
1,1,1,c_white,.5);
}

if (abil4CD)
{
draw_sprite_ext(spr_testCD,1,display_get_gui_width()/2 + 96,display_get_gui_height()-40,
1,1,1,c_white,.5);
}