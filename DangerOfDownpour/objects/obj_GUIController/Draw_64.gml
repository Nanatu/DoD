/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_GUI,0,0,0);

draw_sprite(spr_healthBorder,1,display_get_gui_width()/2,display_get_gui_height()-20);

draw_sprite_ext(spr_healthFiller,1,display_get_gui_width()/2,display_get_gui_height()-20,
max(0,playerHealth/playerMaxHealth),1,0,c_white,1);

