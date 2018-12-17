if characterState == marksmanStates.normal
{
scr_PlayerState_Normal();
}
else if characterState == marksmanStates.backflip
{
scr_PlayerState_MarksmanBackflip();
}


//Tracer shot
/*
if (key_tracerShot) && (fireCD <= 0)
{
	var targets;
	targets = scr_CollisionCircleList(x,y,400,all,false,true);
	size = ds_list_size(targets);
		var i;
		for (i = size-1; i > -1; i--)
		{
		target = targets[|i];
		with(target)
			{

			if (object_is_ancestor(object_index, obj_Enemy))
				{
						show_debug_message("FOUND ONE OR MORE ENEMY!");
						hp = hp - 1;
						instance_create_layer(x,y,"Player",obj_Hit);		
				}
		}
		}
		fireCD=20;
	
}

