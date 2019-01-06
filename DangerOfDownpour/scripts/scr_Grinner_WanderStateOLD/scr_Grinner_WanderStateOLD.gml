///scr_Grinner_Wander()

var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;
//Should I move

if(scr_Enemy_PlayerWithinRange(500)){
	state = enemyStates.chase;
	return;
}

if(time_in_state >= 2* room_speed)
{
	//var roll = random(10);
	//chance to idle 
	//if(roll < 5 || hsp == 0)
	//{
		//state = enemyStates.idle;
		//time_in_state = 0;
		//return;
	//}
	
	//change direction
	//else if(roll >=6){
		
		hsp =  irandom_range(-1,1)*walksp; 
		
	//}
	time_in_state = 0;
}
time_in_state++;

return actionVerb;
// can i move


// lets move