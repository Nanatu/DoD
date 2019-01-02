var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;
hsp = 0;
if(scr_Enemy_PlayerWithinRange(500)){
	state = enemyStates.chase;
	return;
}
if(time_in_state = 2*room_speed){
	hsp = (-1)*sign(image_xscale)*walksp;
	image_xscale = sign(image_xscale) *(-1);
	state = enemyStates.wander;
	time_in_state = 0;
}
moveVerb = scr_Enemy_CollisionAndMovementNEW();
scr_Enemy_AnimationControllerNEW(moveVerb,actionVerb);
time_in_state++;