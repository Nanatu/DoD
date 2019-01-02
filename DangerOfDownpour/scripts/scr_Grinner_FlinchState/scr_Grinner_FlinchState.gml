var moveVerb,actionVerb;
actionVerb = noone;
moveVerb = noone;

actionVerb = "Flinching";

state = enemyStates.idle;

moveVerb = scr_Enemy_CollisionAndMovementNEW();
scr_Enemy_AnimationControllerNEW(moveVerb,actionVerb);