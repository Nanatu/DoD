/// scr_GetInputs()
//	
//	General Script for getting player input
//

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