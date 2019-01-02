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
	var roll = random(10);
	//chance to idle 
	if(roll < 5 || hsp == 0)
	{
		state = enemyStates.idle;
		time_in_state = 0;
		return;
	}
	
	//change direction
	else if(roll >=6){
		//sprite_index = spr_Enemy_Grinner_Running;
		hsp = (-1)*hsp;
		image_xscale = sign(image_xscale)*(-1);
	}
	time_in_state = 0;
}
time_in_state++;
moveVerb = scr_Enemy_CollisionAndMovementNEW();
scr_Enemy_AnimationControllerNEW(moveVerb,actionVerb);


// can i move


// lets move