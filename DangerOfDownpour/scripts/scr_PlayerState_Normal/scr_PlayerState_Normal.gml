/// scr_PlayerState_Normal()
//	
//	General script for a player character being in the "Normal" state
//

{

//Grab controller input
	scr_GetInputs();
//Verbs for animator and player movement
	var moveVerb, abilityVerb, move;


//Calculate Movement
	if (control == controlState.outAbility || vsp != 0)
	{
		move = key_right - key_left;
	}
	else
	{
		move = 0;
	}
	
//Calculate horizontal movement
	hsp = move * walksp
	
//Gravity
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}
	
//Change facing
	if (hsp != 0)
	{
		facing = sign(hsp)
	}

//Get movement Verb
	moveVerb = scr_CollisionAndMovement();
	
//Get Ability Verb, should override moveVerb
	abilityVerb = script_execute(playerScript);
	
//Run animator with verbs
	scr_AnimationController(moveVerb,abilityVerb);

}