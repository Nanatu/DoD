///scr_Grinner_Wander()

var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;
// should i move
//sprite_index = spr_Enemy_Grinner_Running;
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
		//sprite_index = spr_Enemy_Grinner_Running;
		hsp =  irandom_range(-1,1)*walksp; 
		image_xscale = sign(image_xscale)*(-1);
	//}
	time_in_state = 0;
}
time_in_state++;

return actionVerb;
// can i move


// lets move