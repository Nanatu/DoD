/// @function scr_Gunner_Flinchstate()
//
/// @description Gunner enemy flinch state

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
//Setting up flinch and stopping movement
	actionVerb = "Flinching";
	flinchTrigger = false;	
	control = controlState.inAbility
	hsp = 0;

//Return verb
	return actionVerb;