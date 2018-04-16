/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_Player)){
	target = instance_nearest(x,y,obj_Player);
}

show_debug_message(state);

switch state{
	case enemyStates.idle:
	scr_Grinner_IdleState();
	break;
	case enemyStates.wander:
	scr_Grinner_WanderState();
	break;
	case enemyStates.chase:
	scr_Grinner_ChaseState();
	break;
	case enemyStates.attack:
	
	break;
}