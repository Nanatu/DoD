

if(scr_Enemy_PlayerWithinRange(500)){
	//close enough to attack?
	if(scr_Enemy_PlayerWithinRange(50)){
		//state = enemyStates.attack;
		return;
	}
	hsp = walksp + 2;
	
	//chase to within range
	
	scr_Enemy_CollisionAndMovement();
}
else{
	state = enemyStates.idle;
}