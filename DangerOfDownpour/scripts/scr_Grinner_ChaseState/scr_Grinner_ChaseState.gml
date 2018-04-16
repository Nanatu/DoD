

if(scr_Enemy_PlayerWithinRange(500)){
	//close enough to attack?
	if(scr_Enemy_PlayerWithinRange(180)){
		//state = enemyStates.attack;
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
	scr_Enemy_CollisionAndMovement();
}
else{
	state = enemyStates.idle;
}