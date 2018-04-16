if(time_in_state = 2*room_speed){
	hsp = (-1)*sign(image_xscale)*2;
	image_xscale = sign(image_xscale) *(-1);
	state = enemyStates.wander;
	time_in_state = 0;
}
time_in_state++;