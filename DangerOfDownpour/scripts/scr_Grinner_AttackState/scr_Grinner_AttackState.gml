
//attack
if(time_in_state < .1 * room_speed){
	time_in_state++;
}
else if(time_in_state == .1*room_speed){
	hsp = sign(image_xscale) * 19;
	vsp = -5;
	time_in_state++;
}
else if (time_in_state <= .35*room_speed){
	scr_Enemy_CollisionAndMovement();
	time_in_state++;
}
else{
	//room speed 
	attackCD = 60;
	state = enemyStates.chase;
}
	