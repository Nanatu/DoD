/// scr_GetInputs()
//	
//	General Script for getting player input
//
{
	if(gamepad_is_connected(0))
	{
	
//Gamepad setup
	gamepad_set_axis_deadzone(0, 0.5);
	
//Player Movement Input
	key_left = gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < 0;
	key_right = gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0;
	key_jump = gamepad_button_check(0, gp_face1);
	key_down = gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) < 0;

//Player Ability Input
	key_abilityOne = gamepad_button_check(0, gp_shoulderrb);
	key_abilityTwo = gamepad_button_check(0, gp_shoulderlb);
	key_abilityThree = gamepad_button_check(0, gp_shoulderr);
	key_abilityFour = gamepad_button_check(0, gp_shoulderl); 
	
//Player interact inputs
	key_select = gamepad_button_check(0, gp_face3);
	}
		else
	{
//Player Movement Input
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);
	key_down = keyboard_check(vk_down);

//Player Ability Input
	key_abilityOne = keyboard_check(ord("Q"));
	key_abilityTwo = keyboard_check(ord("W"));
	key_abilityThree = keyboard_check(ord("E"));
	key_abilityFour = keyboard_check(ord("R")); 

	//Player interact inputs
	key_select = keyboard_check(ord("T"));

	}
}