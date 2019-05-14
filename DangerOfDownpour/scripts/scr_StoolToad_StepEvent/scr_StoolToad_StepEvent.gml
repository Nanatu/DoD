///scr_StoolToad_StepEvent
//
var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;

if(instance_exists(obj_Player)){
	target = instance_nearest(x,y,obj_Player);
}

//show_debug_message(state);


if (takenDamage == true)
	{
		state = enemyStates.flinch;
		image_index = 0;
	}
	
	
attackCD = max(0,attackCD-1);
//attackCD--;
if (hsp != 0) facing = sign(hsp)



//States in scr_Enemy_States
switch state{
	case enemyStates.idle:
	actionVerb = scr_StoolToad_IdleState();
	break;
	case enemyStates.wander:
	actionVerb = scr_StoolToad_WanderState();
	break;
	case enemyStates.chase:
	actionVerb = scr_StoolToad_ChaseState();
	break;
	//case enemyStates.attack:
	//actionVerb = scr_StoolToad_AttackState();
	break;
	case enemyStates.flinch:
	actionVerb = scr_StoolToad_FlinchState();
	break;
}
moveVerb = scr_Enemy_CollisionAndMovement();
scr_Enemy_AnimationController(moveVerb,actionVerb);

