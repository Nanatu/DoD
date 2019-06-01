/// @function scr_Grinner_StepEvent()
//
/// @description Grinner enemy step event
var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;

if(instance_exists(obj_Player)){
	target = instance_nearest(x,y,obj_Player);
}

//show_debug_message(state);


if (flinchTrigger == true)
	{
		state = enemyStates.flinch;
		image_index = 0;
	}

aggressionTimer = max(0, aggressionTimer-1);
	
attackCD = max(0,attackCD-1);
//attackCD--;
if (hsp != 0) facing = sign(hsp)



//States in scr_Enemy_States
switch state{
	case enemyStates.idle:
	actionVerb = scr_Grinner_IdleState();
	break;
	case enemyStates.wander:
	actionVerb = scr_Grinner_WanderState();
	break;
	case enemyStates.chase:
	actionVerb = scr_Grinner_ChaseState();
	break;
	case enemyStates.attack:
	actionVerb = scr_Grinner_AttackState();
	break;
	case enemyStates.flinch:
	actionVerb = scr_Grinner_FlinchState();
	break;
}
moveVerb = scr_Enemy_CollisionAndMovement();
scr_Enemy_AnimationController(moveVerb,actionVerb);

