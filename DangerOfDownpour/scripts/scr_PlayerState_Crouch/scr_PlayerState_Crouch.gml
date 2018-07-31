/// scr_PlayerState_Crouch()
//	
//	General script for a player character being in the "Normal" state
//

{
	
scr_GetInputs();

//Calculate Movement
move = key_right - key_left;
if (move == 1) facing = 1
if (move == -1) = -1

scr_CollisionAndMovement();
scr_AnimationController();

}