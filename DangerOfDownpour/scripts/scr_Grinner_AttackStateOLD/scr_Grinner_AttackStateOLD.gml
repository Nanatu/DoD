var moveVerb,actionVerb;

/*
//attack
if(time_in_state < .1 * room_speed){
	time_in_state++;
}
else if(time_in_state == .1*room_speed){
	//sprite_index = spr_Enemy_Grinner_Attacking;
	hsp = facing * 19;
	vsp = -5;
	time_in_state++;
	sprite_index = spr_Enemy_Grinner_Attacking;
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

*/
var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;
attack = true;
//time_in_state--;
hsp = facing * (walksp * 2.5);

if (image_index > image_number - 1) {
    attack = false;
	state = enemyStates.chase;
}
else
{
	actionVerb = "Attacking";	
}

	return actionVerb;
/*
if (time_in_state <= 0)
{
	attack = false;
	state = enemyStates.chase;
}
*/