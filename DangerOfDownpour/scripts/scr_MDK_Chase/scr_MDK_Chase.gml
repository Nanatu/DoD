if(scr_Player_EnemyWithinRange(180)){
	if(scr_Player_EnemyWithinRange(32) && attackCD <= 0){
		state = MDK_States.attack;
		return;
	}
	
	//chase
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
	state = MDK_States.idle;
}