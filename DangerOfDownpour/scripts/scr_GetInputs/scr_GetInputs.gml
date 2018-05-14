/// scr_GetInputs()
//	
//	General Script for getting player input
//

if(gamepad_is_connected(0)){
	//Player Movement Input
	key_left = gamepad_button_check(0, gp_padl);
	key_right = gamepad_button_check(0, gp_padr);
	key_jump = gamepad_button_check(0, gp_padu);
	key_down = gamepad_button_check(0, gp_padd);

	//Player Ability Input
	key_abilityOne = gamepad_button_check(0, gp_face3);
	key_abilityTwo = gamepad_button_check(0, gp_face2);
	key_abilityThree = gamepad_button_check(0, gp_face1);
	key_abilityFour = gamepad_button_check(0, gp_face4); 
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

}