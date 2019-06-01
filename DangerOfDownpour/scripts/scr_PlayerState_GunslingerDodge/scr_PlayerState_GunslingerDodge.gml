/// @function scr_PlayerState_GunslingerDodge()
//	
/// @description Dodge state of the Gunslinger character
//

{
	
	dodgeTime = max(0, dodgeTime-1);
//Modify speed
	hsp = facing * (walksp * 3);
	//commented out == rocket boots, commented in == dodge roll

//Gravity
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}
	
//Check dodgeTime and exit State
	if (dodgeTime <= 0)
	{
		characterState = gunslingerStates.normal;
		walksp = 4;
	}
	
//Run script to maintain physics
	scr_CollisionAndMovement();

}