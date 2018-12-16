/// scr_PlayerState_Normal()
//	
//	General script for a player character being in the "Normal" state
//

{
	
scr_GetInputs();
var verb1,verb2;


//Calculate Movement
if (control == controlState.outAbility)
{
move = key_right - key_left;
}
else
{
move = 0;
}
hsp = move * walksp;
vsp = vsp + grv;
if (hsp != 0) facing = sign(hsp)


verb1 = scr_CollisionAndMovementNEW();
verb2 = script_execute(playerScript);
	
scr_AnimationControllerNEW(verb1,verb2);

}