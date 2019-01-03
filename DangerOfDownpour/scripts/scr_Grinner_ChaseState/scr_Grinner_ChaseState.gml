var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;

if(scr_Enemy_PlayerWithinRange(400)){
	//close enough to attack?
	if(attackCD <= 0 && scr_Enemy_PlayerWithinRange(random_range(140,200))){
		//time_in_state = 5;
		state = enemyStates.attack;
		return;
	}
	//chase to within range
	if(target.x < x){
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
	hsp = sign(image_xscale) * (walksp +1);
	
}
else{
	state = enemyStates.idle;
}

return actionVerb;