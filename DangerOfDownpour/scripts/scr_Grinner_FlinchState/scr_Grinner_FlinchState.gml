///scr_Grinner_Idlestate
//

//Verbs for Animation Controlller
	var moveVerb,actionVerb;
	actionVerb = noone;
	moveVerb = noone;
//Setting up flinch and stopping movement
	actionVerb = "Flinching";
	takenDamage = false;	
	control = controlState.inAbility
	hsp = 0;

//Return verb
	return actionVerb;