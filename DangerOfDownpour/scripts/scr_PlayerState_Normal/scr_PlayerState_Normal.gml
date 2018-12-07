/// scr_PlayerState_Normal()
//	
//	General script for a player character being in the "Normal" state
//

{
	
scr_GetInputs();

//Calculate Movement
move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
if (hsp != 0) facing = sign(hsp)

scr_CollisionAndMovement();
scr_AnimationController();

}