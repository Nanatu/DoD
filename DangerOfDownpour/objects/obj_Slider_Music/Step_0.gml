/// @description Check for not selected

if mouse_check_button_pressed(mb_left)
{
	var buttonX = x+sprite_width*value;
	var buttonY = y;
	var buttonRadius = sprite_get_width(spr_SliderBar_Button)/2;
	if point_in_circle(mouse_x,mouse_y, buttonX,buttonY,buttonRadius)
	{
		selected = true;	
	}
}


if !mouse_check_button(mb_left)
{
	selected = false;	
}

if selected
{
	value = clamp((mouse_x-x)/sprite_width, 0, maxValue);	
	audio_group_set_gain(audiogroup_Music, value, 0);
}