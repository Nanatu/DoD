///scr_EnemyState_Wander()

// should i move
if(time_in_state >= 3* room_speed)
{
	//chance to idle 
	if(random(10) >= 4 && hsp == 0)
	{
		state = enemyStates.idle;
		return;
	}
	
	//change direction
}
// can i move


// lets move